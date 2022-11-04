BEGIN
			--CREATE INDEX CT_EnhancedAdherenceCounselling ON [ODS].[dbo].[CT_EnhancedAdherenceCounselling] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_EnhancedAdherenceCounselling]
			MERGE [ODS].[dbo].[CT_EnhancedAdherenceCounselling] AS a
				USING(SELECT
							P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
							EAC.[VisitId] AS VisitID,EAC.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
							CASE
								P.[Project]
								WHEN 'I-TECH' THEN 'Kenya HMIS II'
								WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project]
							END AS Project,
							EAC.[SessionNumber],EAC.[DateOfFirstSession],EAC.[PillCountAdherence],EAC.[MMAS4_1],
							EAC.[MMAS4_2],EAC.[MMAS4_3],EAC.[MMAS4_4],EAC.[MMSA8_1],EAC.[MMSA8_2],EAC.[MMSA8_3],EAC.[MMSA8_4],
							EAC.[MMSAScore],EAC.[EACRecievedVL],EAC.[EACVL],EAC.[EACVLConcerns],EAC.[EACVLThoughts],EAC.[EACWayForward],
							EAC.[EACCognitiveBarrier],EAC.[EACBehaviouralBarrier_1],EAC.[EACBehaviouralBarrier_2],EAC.[EACBehaviouralBarrier_3],
							EAC.[EACBehaviouralBarrier_4],EAC.[EACBehaviouralBarrier_5],EAC.[EACEmotionalBarriers_1],EAC.[EACEmotionalBarriers_2],
							EAC.[EACEconBarrier_1],EAC.[EACEconBarrier_2],EAC.[EACEconBarrier_3],EAC.[EACEconBarrier_4],EAC.[EACEconBarrier_5],
							EAC.[EACEconBarrier_6],EAC.[EACEconBarrier_7],EAC.[EACEconBarrier_8],EAC.[EACReviewImprovement],EAC.[EACReviewMissedDoses],
							EAC.[EACReviewStrategy],EAC.[EACReferral],EAC.[EACReferralApp],EAC.[EACReferralExperience],EAC.[EACHomevisit],
							EAC.[EACAdherencePlan],EAC.[EACFollowupDate],GETDATE() AS DateImported,   
							LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
							,P.ID as PatientUnique_ID
							,EAC.ID as EnhancedAdherenceCounsellingUnique_ID
						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
						INNER JOIN [DWAPICentral].[dbo].[EnhancedAdherenceCounsellingExtract](NoLock) EAC ON EAC.[PatientId] = P.ID AND EAC.Voided = 0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
						WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						and a.VisitID	=b.VisitID
						and a.VisitDate	=b.VisitDate
						and a.PatientUnique_ID =b.EnhancedAdherenceCounsellingUnique_ID)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID					=b.PatientID,						
						a.FacilityName				=b.FacilityName,					
						a.Emr						=b.Emr,
						a.Project					=b.Project,
						a.SessionNumber				=b.SessionNumber,
						a.DateOfFirstSession		=b.DateOfFirstSession,
						a.PillCountAdherence		=b.PillCountAdherence,
						a.MMAS4_1					=b.MMAS4_1,
						a.MMAS4_2					=b.MMAS4_2,
						a.MMAS4_3					=b.MMAS4_3,
						a.MMAS4_4					=b.MMAS4_4,
						a.MMSA8_1					=b.MMSA8_1,
						a.MMSA8_2					=b.MMSA8_2,
						a.MMSA8_3					=b.MMSA8_3,
						a.MMSA8_4					=b.MMSA8_4,
						a.MMSAScore					=b.MMSAScore	,
						a.EACRecievedVL				=b.EACRecievedVL,
						a.EACVL						=b.EACVL,
						a.EACVLConcerns				=b.EACVLConcerns,
						a.EACVLThoughts				=b.EACVLThoughts,
						a.EACWayForward				=b.EACWayForward,
						a.EACCognitiveBarrier		=b.EACCognitiveBarrier,
						a.EACBehaviouralBarrier_1	=b.EACBehaviouralBarrier_1,
						a.EACBehaviouralBarrier_2	=b.EACBehaviouralBarrier_2,
						a.EACBehaviouralBarrier_3	=b.EACBehaviouralBarrier_3,
						a.EACBehaviouralBarrier_4	=b.EACBehaviouralBarrier_4,
						a.EACBehaviouralBarrier_5	=b.EACBehaviouralBarrier_5,
						a.EACEmotionalBarriers_1	=b.EACEmotionalBarriers_1,
						a.EACEmotionalBarriers_2	=b.EACEmotionalBarriers_2,
						a.EACEconBarrier_1			=b.EACEconBarrier_1,
						a.EACEconBarrier_2			=b.EACEconBarrier_2,
						a.EACEconBarrier_3			=b.EACEconBarrier_3,
						a.EACEconBarrier_4			=b.EACEconBarrier_4,
						a.EACEconBarrier_5			=b.EACEconBarrier_5,
						a.EACEconBarrier_6			=b.EACEconBarrier_6,
						a.EACEconBarrier_7			=b.EACEconBarrier_7,
						a.EACEconBarrier_8			=b.EACEconBarrier_8,
						a.EACReviewImprovement		=b.EACReviewImprovement,
						a.EACReviewMissedDoses		=b.EACReviewMissedDoses,
						a.EACReviewStrategy			=b.EACReviewStrategy,
						a.EACReferral				=b.EACReferral,
						a.EACReferralApp			=b.EACReferralApp,
						a.EACReferralExperience		=b.EACReferralExperience,
						a.EACHomevisit				=b.EACHomevisit	,
						a.EACAdherencePlan			=b.EACAdherencePlan,
						a.EACFollowupDate			=b.EACFollowupDate,
						a.DateImported				=b.DateImported	,
						a.CKV						=b.CKV

					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,SessionNumber,DateOfFirstSession,PillCountAdherence,MMAS4_1,MMAS4_2,MMAS4_3,MMAS4_4,MMSA8_1,MMSA8_2,MMSA8_3,MMSA8_4,MMSAScore,EACRecievedVL,EACVL,EACVLConcerns,EACVLThoughts,EACWayForward,EACCognitiveBarrier,EACBehaviouralBarrier_1,EACBehaviouralBarrier_2,EACBehaviouralBarrier_3,EACBehaviouralBarrier_4,EACBehaviouralBarrier_5,EACEmotionalBarriers_1,EACEmotionalBarriers_2,EACEconBarrier_1,EACEconBarrier_2,EACEconBarrier_3,EACEconBarrier_4,EACEconBarrier_5,EACEconBarrier_6,EACEconBarrier_7,EACEconBarrier_8,EACReviewImprovement,EACReviewMissedDoses,EACReviewStrategy,EACReferral,EACReferralApp,EACReferralExperience,EACHomevisit,EACAdherencePlan,EACFollowupDate,DateImported,CKV,PatientUnique_ID,EnhancedAdherenceCounsellingUnique_ID) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,SessionNumber,DateOfFirstSession,PillCountAdherence,MMAS4_1,MMAS4_2,MMAS4_3,MMAS4_4,MMSA8_1,MMSA8_2,MMSA8_3,MMSA8_4,MMSAScore,EACRecievedVL,EACVL,EACVLConcerns,EACVLThoughts,EACWayForward,EACCognitiveBarrier,EACBehaviouralBarrier_1,EACBehaviouralBarrier_2,EACBehaviouralBarrier_3,EACBehaviouralBarrier_4,EACBehaviouralBarrier_5,EACEmotionalBarriers_1,EACEmotionalBarriers_2,EACEconBarrier_1,EACEconBarrier_2,EACEconBarrier_3,EACEconBarrier_4,EACEconBarrier_5,EACEconBarrier_6,EACEconBarrier_7,EACEconBarrier_8,EACReviewImprovement,EACReviewMissedDoses,EACReviewStrategy,EACReferral,EACReferralApp,EACReferralExperience,EACHomevisit,EACAdherencePlan,EACFollowupDate,DateImported,CKV,PatientUnique_ID,EnhancedAdherenceCounsellingUnique_ID);
				
					--DROP INDEX CT_EnhancedAdherenceCounselling ON [ODS].[dbo].[CT_EnhancedAdherenceCounselling];
					---Remove any duplicate from [ODS].[dbo].[CT_EnhancedAdherenceCounselling]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],VisitID,VisitDate,PatientUnique_ID,EnhancedAdherenceCounsellingUnique_ID,ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode],VisitID,VisitDate,PatientUnique_ID,EnhancedAdherenceCounsellingUnique_ID
							ORDER BY [PatientPK],[SiteCode],VisitID,VisitDate,PatientUnique_ID,EnhancedAdherenceCounsellingUnique_ID) AS dump_ 
							FROM [ODS].[dbo].[CT_EnhancedAdherenceCounselling] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END