
BEGIN
--truncate table [ODS].[dbo].[HTS_ClientLinkages]
		MERGE [ODS].[dbo].[HTS_ClientLinkages] AS a
			USING(SELECT 	DISTINCT a.[FacilityName]
							  ,a.[SiteCode]
							  ,a.[PatientPk]
							  ,a.[HtsNumber]
							  ,a.[Emr]
							  ,a.DateExtracted
							  ,a.[Project]
							  ,[EnrolledFacilityName]
							  ,CAST (MAX([ReferralDate]) AS DATE) AS [ReferralDate]
							  ,CAST([DateEnrolled] AS DATE) AS [DateEnrolled]
							  ,CAST(MAX([DatePrefferedToBeEnrolled]) AS DATE ) AS [DatePrefferedToBeEnrolled]
							  ,CASE WHEN [FacilityReferredTo]='Other Facility' THEN NULL ELSE [FacilityReferredTo] END AS [FacilityReferredTo] 
							  ,[HandedOverTo]
							  ,[HandedOverToCadre]
							  ,[ReportedCCCNumber]
							  ,CASE WHEN CAST([ReportedStartARTDate] AS DATE) = '0001-01-01' THEN NULL ELSE CAST([ReportedStartARTDate] AS DATE) END AS [ReportedStartARTDate]	,
							   convert(nvarchar(64), hashbytes('SHA2_256', cast(a.[PatientPk]  as nvarchar(36))), 2) PatientPKHash, 
					       convert(nvarchar(64), hashbytes('SHA2_256', cast(a.HtsNumber  as nvarchar(36))), 2)HtsNumberHash,
						   convert(nvarchar(64), hashbytes('SHA2_256', cast(LTRIM(RTRIM(a.PatientPk)) +'-'+LTRIM(RTRIM(a.HtsNumber)) as nvarchar(100))), 2) as CKVHash
						FROM [HTSCentral].[dbo].[ClientLinkages](NoLock) a
						INNER JOIN (
								SELECT SiteCode,PatientPK, MAX(DateExtracted) AS MaxDateExtracted
								FROM  [HTSCentral].[dbo].[ClientLinkages](NoLock)
								GROUP BY SiteCode,PatientPK
							) tm 
				     ON a.[SiteCode] = tm.[SiteCode] and a.PatientPK=tm.PatientPK and a.DateExtracted = tm.MaxDateExtracted
						INNER JOIN [HTSCentral].[dbo].Clients (NoLock) Cl
						on a.PatientPk = Cl.PatientPk and a.SiteCode = Cl.SiteCode
						WHERE a.DateExtracted > '2019-09-08'
						GROUP BY a.[FacilityName]
							,a.[SiteCode]
							,a.[PatientPk]
							,a.[HtsNumber]
							,a.[Emr]
							,a.[Project] 
							,[EnrolledFacilityName]
							,CAST([DateEnrolled] AS DATE)  
							,[FacilityReferredTo]
							,[HandedOverTo]
							,[HandedOverToCadre]
							,a.DateExtracted
							,[ReportedCCCNumber]
							,CAST([ReportedStartARTDate] AS DATE)
							) AS b 
				ON(
					a.PatientPK  = b.PatientPK 
				and a.SiteCode = b.SiteCode	
				and a.DateExtracted = b.DateExtracted
				)
		WHEN NOT MATCHED THEN 
			INSERT(FacilityName,SiteCode,PatientPk,HtsNumber,Emr,Project,EnrolledFacilityName,ReferralDate,DateEnrolled,DatePrefferedToBeEnrolled,FacilityReferredTo,HandedOverTo,HandedOverToCadre,ReportedCCCNumber,ReportedStartARTDate, PatientPKHash,HtsNumberHash) 
			VALUES(FacilityName,SiteCode,PatientPk,HtsNumber,Emr,Project,EnrolledFacilityName,ReferralDate,DateEnrolled,DatePrefferedToBeEnrolled,FacilityReferredTo,HandedOverTo,HandedOverToCadre,ReportedCCCNumber,ReportedStartARTDate ,PatientPKHash,HtsNumberHash)
		
		WHEN MATCHED THEN
		UPDATE SET 
				a.[FacilityName]				=b.[FacilityName],
				a.[HtsNumber]					=b.[HtsNumber],
				a.[Emr]							=b.[Emr],
				a.[Project]						=b.[Project],
				a.[EnrolledFacilityName]		=b.[EnrolledFacilityName],
				a.[ReferralDate]				=b.[ReferralDate],
				a.[DateEnrolled]				=b.[DateEnrolled],
				a.[DatePrefferedToBeEnrolled]	=b.[DatePrefferedToBeEnrolled],
				a.[FacilityReferredTo]			=b.[FacilityReferredTo]	,
				a.[HandedOverTo]				=b.[HandedOverTo],
				a.[HandedOverToCadre]			=b.[HandedOverToCadre],
				a.[ReportedCCCNumber]			=b.[ReportedCCCNumber],
				a.[ReportedStartARTDate]		=b.[ReportedStartARTDate]

		WHEN NOT MATCHED BY SOURCE 
			THEN
				/* The Record is in the target table but doen't exit on the source table*/
			Delete;
END
