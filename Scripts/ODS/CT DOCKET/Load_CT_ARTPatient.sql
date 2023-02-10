BEGIN
  TRUNCATE TABLE [ODS].[dbo].[CT_ARTPatients] ---So as we can only have the most current snapshot. Need to think of a way to incrementally load this( More discusion btw Wambui,Koske,Dennis and Mumo)
 
			INSERT into [ODS].[dbo].[CT_ARTPatients] (PatientID,PatientPK,SiteCode,FacilityName,AgeEnrollment,
								AgeARTStart,AgeLastVisit,RegistrationDate,PatientSource,Gender,StartARTDate,PreviousARTStartDate,
								PreviousARTRegimen,StartARTAtThisFacility,StartRegimen,StartRegimenLine,LastARTDate,LastRegimen,
								LastRegimenLine,Duration,ExpectedReturn,Provider,LastVisit,ExitReason,ExitDate,Emr,
								Project,[DOB],CKV,PreviousARTUse,PreviousARTPurpose,DateLastUsed,DateAsOf) 
			SELECT  DISTINCT
				P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName, PA.[AgeEnrollment]
				,PA.[AgeARTStart],PA.[AgeLastVisit],PA.[RegistrationDate],PA.[PatientSource],PA.[Gender],PA.[StartARTDate],PA.[PreviousARTStartDate]
				,PA.[PreviousARTRegimen],PA.[StartARTAtThisFacility],PA.[StartRegimen],PA.[StartRegimenLine],PA.[LastARTDate],PA.[LastRegimen]
				,PA.[LastRegimenLine],PA.[Duration],PA.[ExpectedReturn],PA.[Provider],PA.[LastVisit],PA.[ExitReason],PA.[ExitDate],P.[Emr]
						,CASE P.[Project] 
							WHEN 'I-TECH' THEN 'Kenya HMIS II' 
							WHEN 'HMIS' THEN 'Kenya HMIS II'
						ELSE P.[Project] 
						END AS [Project]
						,PA.[DOB]
						,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						--,PA.[Processed]

						--,PA.[Created]
				,PA.[PreviousARTUse]
				,PA.[PreviousARTPurpose]
				,PA.[DateLastUsed]
				,GETDATE () AS DateAsOf,
				convert(nvarchar(64), hashbytes('SHA2_256', cast(P.[PatientPID]  as nvarchar(36))), 2) PatientPKHash,   
				convert(nvarchar(64), hashbytes('SHA2_256', cast(P.[PatientCccNumber]  as nvarchar(36))), 2) PatientIDHash,
				convert(nvarchar(64), hashbytes('SHA2_256', cast(LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID])))  as nvarchar(36))), 2) CKVHash

				FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
				INNER JOIN [DWAPICentral].[dbo].[PatientArtExtract](NoLock) PA ON PA.[PatientId]= P.ID AND PA.Voided=0
				INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0 
				--INNER JOIN (SELECT PatientId,MAX(created)Maxcreated from [DWAPICentral].[dbo].[PatientArtExtract](NoLock)
				--			group by PatientId) tn
				--on PA.PatientId = tn.PatientId and PA.Created = tn.Maxcreated
				WHERE p.gender!='Unknown';
				
				---Remove any duplicate from [ODS].[dbo].[CT_ARTPatients]
				--WITH CTE AS   
				--	(  
				--		SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
				--		OVER (PARTITION BY [PatientPK],[SiteCode] 
				--		ORDER BY [PatientPK],[SiteCode]) AS dump_ 
				--		FROM [ODS].[dbo].[CT_ARTPatients] 
				--		)  
			
				--DELETE FROM CTE WHERE dump_ >1;

	END