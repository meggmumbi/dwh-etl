
BEGIN
			
			 DECLARE @MaxRegistrationDate_Hist			DATETIME,
					 @RegistrationDate					DATETIME
				
			SELECT @MaxRegistrationDate_Hist	= MAX(MaxRegistrationDate) FROM [ODS].[dbo].[CT_Patient_Log]  (NoLock)
			SELECT @RegistrationDate			= MAX(RegistrationDate) FROM [DWAPICentral].[dbo].[PatientExtract] (NoLock)
									
			INSERT INTO  [ODS].[dbo].[CT_Patient_Log](MaxRegistrationDate,LoadStartDateTime)
			VALUES(@RegistrationDate,GETDATE())
			--truncate table [ODS].[dbo].[CT_Patient] 
			MERGE [ODS].[dbo].[CT_Patient] AS a
				USING(SELECT  DISTINCT P.[PatientCccNumber] as PatientID,P.[PatientPID] as PatientPK,F.Code as SiteCode,F.[Name] as FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,P.Emr,P.Project,PKV,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI
						,LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV,
						convert(nvarchar(64), hashbytes('SHA2_256', cast(P.[PatientPID]  as nvarchar(36))), 2) PatientPKHash,   
						convert(nvarchar(64), hashbytes('SHA2_256', cast(P.[PatientCccNumber]  as nvarchar(36))), 2) PatientIDHash,
						convert(nvarchar(64), hashbytes('SHA2_256', cast(LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID])))  as nvarchar(36))), 2) CKVHash
						FROM [DWAPICentral].[dbo].[PatientExtract]  P  with (NoLock)
						INNER JOIN [DWAPICentral].[dbo].[Facility] F with (NoLock)  
						ON P.[FacilityId]  = F.Id  AND F.Voided=0 	
						INNER JOIN (SELECT P.PatientPID,F.code,Max(P.created)MaxCreated FROM [DWAPICentral].[dbo].[PatientExtract]  P  with (NoLock)
									INNER JOIN [DWAPICentral].[dbo].[Facility] F with (NoLock)  
									ON P.[FacilityId]  = F.Id  AND F.Voided=0 
									GROUP BY  P.PatientPID,F.code)tn
							on P.PatientPID = tn.PatientPID and F.code = tn.code and P.Created = tn.MaxCreated
						WHERE P.Voided=0 and P.[Gender] is NOT NULL and p.gender!='Unknown'/* and P.Processed =1*/ ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						--and a.RegistrationDate =b.RegistrationDate
						--and a.id = b.id
						)

						WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI,CKV,PatientPKHash,PatientIDHash,CKVHash) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI,CKV,PatientPKHash,PatientIDHash,CKVHash)
				
						WHEN MATCHED THEN
							UPDATE SET 				
							a.RegistrationAtCCC			=b.RegistrationAtCCC,
							a.RegistrationAtPMTCT		=b.RegistrationAtPMTCT,
							a.RegistrationAtTBClinic	=b.RegistrationAtTBClinic,
							a.PatientSource				=b.PatientSource,
							a.Region					=b.Region,
							a.District					=b.District,
							a.Village					=b.Village,
							a.ContactRelation			=b.ContactRelation,
							a.LastVisit					=b.LastVisit,
							a.MaritalStatus				=b.MaritalStatus,
							a.DateConfirmedHIVPositive	=b.DateConfirmedHIVPositive	,
							a.PreviousARTExposure		=b.PreviousARTExposure,
							a.PreviousARTStartDate		=b.PreviousARTStartDate,
							a.Orphan					=b.Orphan,
							a.Inschool					=b.Inschool	,
							a.PatientType				=b.PatientType,
							a.PopulationType			=b.PopulationType,
							a.KeyPopulationType			=b.KeyPopulationType,
							a.PatientResidentCounty		=b.PatientResidentCounty,
							a.PatientResidentSubCounty	=b.PatientResidentSubCounty,
							a.PatientResidentLocation	=b.PatientResidentLocation,
							a.PatientResidentSubLocation=b.PatientResidentSubLocation,
							a.PatientResidentWard		=b.PatientResidentWard	,
							a.PatientResidentVillage	=b.PatientResidentVillage,
							a.TransferInDate			=b.TransferInDate,
							a.Occupation				=b.Occupation;
							
						--WHEN NOT MATCHED BY SOURCE 
						--THEN
						--/* The Record is in the target table but doen't exit on the source table*/
						--	Delete;
				--WITH CTE AS   
				--	(  
				--		SELECT [PatientPK],[SiteCode],RegistrationDate,ROW_NUMBER() 
				--		OVER (PARTITION BY [PatientPK],[SiteCode],RegistrationDate
				--		ORDER BY [PatientPK],[SiteCode],RegistrationDate) AS dump_ 
				--		FROM [ODS].[dbo].[CT_Patient] 
				--		)  
			
				--DELETE FROM CTE WHERE dump_ >1;
							

					UPDATE [ODS].[dbo].[CT_Patient_Log]
						SET LoadEndDateTime = GETDATE()
					WHERE MaxRegistrationDate = @RegistrationDate;

					INSERT INTO [ODS].[dbo].[CT_PatientCount_Log]([SiteCode],[CreatedDate],[PatientCount])
					SELECT SiteCode,GETDATE(),COUNT(CKV) AS PatientCount 
					FROM [ODS].[dbo].[CT_Patient] 
					--WHERE @MaxCreatedDate  > @MaxCreatedDate
					GROUP BY SiteCode;

				--DROP INDEX CT_Patient ON [ODS].[dbo].[CT_Patient];
				---Remove any duplicate from [ODS].[dbo].[CT_Patient]


	END
