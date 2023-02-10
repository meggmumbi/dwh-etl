BEGIN
	 
	 DECLARE	@MaxVisitDate_Hist		DATETIME,
				@VisitDate				DATETIME,
				@MaxCreatedDate			DATETIME
				
		SELECT @MaxVisitDate_Hist	= MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_Visit_Log]  (NoLock);
		SELECT @VisitDate			= MAX(VisitDate)	FROM [DWAPICentral].[dbo].[PatientVisitExtract] WITH (NOLOCK) ;
		SELECT @MaxCreatedDate		= MAX(CreatedDate)	FROM [ODS].[dbo].[CT_VisitCount_Log] WITH (NOLOCK) ;
				
		--insert into  [ODS].[dbo].[CT_VisitCount_Log](CreatedDate)
		--values(dateadd(year,-1,getdate()))

		
				
		INSERT INTO  [ODS].[dbo].[CT_Visit_Log](MaxVisitDate,LoadStartDateTime)
		VALUES(@VisitDate,GETDATE());

	       ---- Refresh [ODS].[dbo].[CT_PatientVisits]
		   --truncate table [ODS].[dbo].[CT_PatientVisits]
			MERGE [ODS].[dbo].[CT_PatientVisits] AS a
				USING(SELECT distinct  P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK,F.[Name] AS FacilityName, F.Code AS SiteCode,PV.[VisitId] VisitID,PV.[VisitDate] VisitDate
						  ,PV.[Service] [SERVICE],PV.[VisitType] VisitType,PV.[WHOStage] WHOStage,PV.[WABStage] WABStage,PV.[Pregnant] Pregnant,PV.[LMP] LMP,PV.[EDD] EDD,PV.[Height] [Height],PV.[Weight] [Weight],PV.[BP] [BP],PV.[OI] [OI],PV.[OIDate] [OIDate]
						  ,PV.[SubstitutionFirstlineRegimenDate] SubstitutionFirstlineRegimenDate,PV.[SubstitutionFirstlineRegimenReason] SubstitutionFirstlineRegimenReason,PV.[SubstitutionSecondlineRegimenDate] SubstitutionSecondlineRegimenDate,PV.[SubstitutionSecondlineRegimenReason] SubstitutionSecondlineRegimenReason
						  ,PV.[SecondlineRegimenChangeDate] SecondlineRegimenChangeDate,PV.[SecondlineRegimenChangeReason] SecondlineRegimenChangeReason,PV.[Adherence] Adherence,PV.[AdherenceCategory] AdherenceCategory,PV.[FamilyPlanningMethod] FamilyPlanningMethod
						  ,PV.[PwP] PwP,PV.[GestationAge] GestationAge,PV.[NextAppointmentDate] NextAppointmentDate,P.[Emr] Emr
						  ,CASE P.[Project]
									WHEN 'I-TECH' THEN 'Kenya HMIS II' 
									WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project] 
							END AS [Project] 
						  ,PV.[Voided] Voided,pv.[StabilityAssessment] StabilityAssessment,pv.[DifferentiatedCare] DifferentiatedCare,pv.[PopulationType] PopulationType,pv.[KeyPopulationType] KeyPopulationType,PV.[Processed] Processed
						  ,PV.[Created] Created
						  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV, 
						  0 AS knockout,[GeneralExamination],[SystemExamination],[Skin],[Eyes],[ENT],[Chest],[CVS],[Abdomen],[CNS],[Genitourinary]
							-----Missing columns Added later by Dennis
						  ,PV.VisitBy VisitBy,PV.Temp Temp,PV.PulseRate PulseRate,PV.RespiratoryRate RespiratoryRate,PV.OxygenSaturation OxygenSaturation,PV.Muac Muac,PV.NutritionalStatus NutritionalStatus,PV.EverHadMenses EverHadMenses,PV.Menopausal Menopausal
						  ,PV.Breastfeeding Breastfeeding,PV.NoFPReason NoFPReason,PV.ProphylaxisUsed ProphylaxisUsed,PV.CTXAdherence CTXAdherence,PV.CurrentRegimen CurrentRegimen,PV.HCWConcern HCWConcern,PV.TCAReason TCAReason,PV.ClinicalNotes ClinicalNotes
						  ,P.ID as PatientUnique_ID
						  ,PV.PatientId as UniquePatientVisitId
						  ,PV.ID as PatientVisitUnique_ID,
						  convert(nvarchar(64), hashbytes('SHA2_256', cast(P.[PatientPID]  as nvarchar(36))), 2) PatientPKHash,   
							convert(nvarchar(64), hashbytes('SHA2_256', cast(P.[PatientCccNumber]  as nvarchar(36))), 2) PatientIDHash,
							convert(nvarchar(64), hashbytes('SHA2_256', cast(LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID])))  as nvarchar(36))), 2) CKVHash

						FROM [DWAPICentral].[dbo].[PatientExtract] P WITH (NoLock)  
						LEFT JOIN [DWAPICentral].[dbo].[PatientArtExtract] PA WITH(NoLock)  ON PA.[PatientId]= P.ID
						INNER JOIN [DWAPICentral].[dbo].[PatientVisitExtract] PV WITH(NoLock)  ON PV.[PatientId]= P.ID AND PV.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility] F WITH(NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0
						---INNER JOIN [DWAPICentral].[dbo].[FacilityManifest_MaxDateRecieved](NoLock) a ON F.Code = a.SiteCode
						----LEFT JOIN All_Staging_2016_2.dbo.stg_Patients TPat ON TPat.PKV=LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID])))
						--ORDER BY F.Id, PV.[PatientId],PV.[VisitDate],PV.[VisitId]
						WHERE p.gender!='Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS AND
							 a.PatientPK  = b.PatientPK 
							AND a.SiteCode = b.SiteCode
							AND a.visitID = b.[VisitId]
							and a.visitDate = b.visitDate
							and a.PatientUnique_ID = b.UniquePatientVisitId						
							--and a.PatientVisitUnique_ID = b.PatientVisitUnique_ID
							)
					WHEN NOT MATCHED THEN 
							INSERT(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,CKV,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes,PatientUnique_ID,PatientVisitUnique_ID,PatientPKHash,PatientIDHash,CKVHash) 
							VALUES(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,PKV,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes,PatientUnique_ID,PatientVisitUnique_ID,PatientPKHash,PatientIDHash,CKVHash)
			
					WHEN MATCHED THEN
						UPDATE SET 
						a.FacilityName				= B.FacilityName,
						a.[SERVICE]					= b.[SERVICE],
						a.VisitType					= b.VisitType,
						a.WHOStage					= b.WHOStage,
						a.WABStage					= b.WABStage,
						a.Pregnant					= b.Pregnant,
						a.LMP						=b.LMP,
						a.EDD						=b.EDD,
						a.Height					=b.Height,
						a.[Weight]					=b.[Weight],
						a.BP						=b.BP,
						a.OI						=b.OI,
						a.OIDate					=b.OIDate,
						a.Adherence					=b.Adherence,
						a.AdherenceCategory			=b.AdherenceCategory,
						a.FamilyPlanningMethod		=b.FamilyPlanningMethod,
						a.PwP						=b.PwP,
						a.GestationAge				=b.GestationAge,
						a.DifferentiatedCare		=b.DifferentiatedCare,
						a.StabilityAssessment		=b.StabilityAssessment,
						a.KeyPopulationType			=b.KeyPopulationType,
						a.PopulationType			=b.PopulationType	,
						a.VisitBy					=b.VisitBy			,
						a.Temp						=b.Temp				,
						a.PulseRate					=b.PulseRate		,
						a.RespiratoryRate			=b.RespiratoryRate	,
						a.OxygenSaturation			=b.OxygenSaturation	,
						a.Muac						=b.Muac				,
						a.NutritionalStatus			=b.NutritionalStatus	,
						a.EverHadMenses				=b.EverHadMenses		,
						a.Breastfeeding				=b.Breastfeeding		,
						a.Menopausal				=b.Menopausal		,
						a.NoFPReason				=b.NoFPReason		,
						a.ProphylaxisUsed			=b.ProphylaxisUsed	,
						a.CTXAdherence				=b.CTXAdherence		,
						a.CurrentRegimen			=b.CurrentRegimen	,
						a.HCWConcern				=b.HCWConcern		,
						a.TCAReason					=b.TCAReason,
						a.ClinicalNotes				=b.ClinicalNotes,
						a.GeneralExamination		=b.GeneralExamination,
						a.SystemExamination			=b.SystemExamination,
						a.Skin						=b.Skin	,
						a.Eyes						=b.Eyes	,
						a.ENT						=b.ENT	,
						a.Chest						=b.Chest,
						a.CVS						=b.CVS,
						a.Abdomen					=b.Abdomen,
						a.CNS						=b.CNS,
						a.Genitourinary				=b.Genitourinary;

					--WHEN NOT MATCHED BY SOURCE 
					--	THEN
					--	/* The Record is in the target table but doen't exit on the source table*/
					--		Delete;

			--				WITH CTE AS   
			--	(  
			--		SELECT [PatientPK],[SiteCode],VisitID,visitDate,ROW_NUMBER() 
			--		OVER (PARTITION BY [PatientPK],[SiteCode],VisitID,visitDate
			--		ORDER BY [PatientPK],[SiteCode],VisitID,visitDate) AS dump_ 
			--		FROM [ODS].[dbo].[CT_PatientVisits] 
			--		)  
			
			--DELETE FROM CTE WHERE dump_ >1;


			--DROP INDEX CT_PatientVisits ON [ODS].[dbo].[CT_PatientVisits];
			---Remove any duplicate from [ODS].[dbo].[CT_PatientVisits] 
			UPDATE [ODS].[dbo].[CT_Visit_Log]
				  SET LoadEndDateTime = GETDATE()
				  WHERE MaxVisitDate = @VisitDate;

				  --truncate table [CT_VisitCount_Log]
			INSERT INTO [ODS].[dbo].[CT_VisitCount_Log]([SiteCode],[CreatedDate],[VisitCount])
			SELECT SiteCode,GETDATE(),COUNT(CKV) AS VisitCount 
			FROM [ODS].[dbo].[CT_PatientVisits] 
			---WHERE @MaxCreatedDate  > @MaxCreatedDate
			GROUP BY SiteCode;


			--DROP INDEX CT_PatientVisits ON [ODS].[dbo].[CT_PatientVisits];
			---Remove any duplicate from [ODS].[dbo].[CT_PatientVisits] 
			
	END
