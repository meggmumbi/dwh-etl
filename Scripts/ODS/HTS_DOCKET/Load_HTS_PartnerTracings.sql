
BEGIN
		--truncate table [ODS].[dbo].[HTS_PartnerTracings]
		MERGE [ODS].[dbo].[HTS_PartnerTracings] AS a
			USING(SELECT DISTINCT a.[FacilityName]
			  ,a.[SiteCode]
			  ,a.[PatientPk]
			  ,a.[HtsNumber]
			  ,a.[Emr]
			  ,a.[Project]
			  ,[TraceType]
			  ,[TraceDate]
			  ,[TraceOutcome]
			  ,[BookingDate]  ,  
			  	 convert(nvarchar(64), hashbytes('SHA2_256', cast(a.[PatientPk]  as nvarchar(36))), 2) PatientPKHash,
				convert(nvarchar(64), hashbytes('SHA2_256', cast(a.HtsNumber  as nvarchar(36))), 2)HtsNumberHash,
				convert(nvarchar(64), hashbytes('SHA2_256', cast(LTRIM(RTRIM(a.PatientPk)) +'-'+LTRIM(RTRIM(a.HtsNumber)) as nvarchar(100))), 2) CKVHash
		  FROM [HTSCentral].[dbo].[HtsPartnerTracings](NoLock) a
		  INNER JOIN [HTSCentral].[dbo].Clients (NoLock) Cl
		  on a.PatientPk = Cl.PatientPk and a.SiteCode = Cl.SiteCode
		  ) AS b 
			ON(
				a.PatientPK  = b.PatientPK 
			and a.SiteCode = b.SiteCode		
			
			and a.TraceDate  = b.TraceDate 
			and a.TraceOutcome COLLATE Latin1_General_CI_AS = b.TraceOutcome 
			and a.BookingDate  = b.BookingDate 
			and a.TraceType COLLATE Latin1_General_CI_AS = b.TraceType 
			and a.HtsNumber COLLATE Latin1_General_CI_AS = b.HtsNumber 

			)
	WHEN NOT MATCHED THEN 
		INSERT(FacilityName,SiteCode,PatientPk,HtsNumber,Emr,Project,TraceType,TraceDate,TraceOutcome,BookingDate,PatientPKHash,HtsNumberHash) 
		VALUES(FacilityName,SiteCode,PatientPk,HtsNumber,Emr,Project,TraceType,TraceDate,TraceOutcome,BookingDate,PatientPKHash,HtsNumberHash)

	WHEN MATCHED THEN
		UPDATE SET 
			a.[FacilityName]=b.[FacilityName],
			a.[HtsNumber]	=b.[HtsNumber],
			a.[Emr]			=b.[Emr],
			a.[Project]		=b.[Project],
			a.[TraceType]	=b.[TraceType],
			a.[TraceDate]	=b.[TraceDate],
			a.[TraceOutcome]=b.[TraceOutcome],
			a.[BookingDate]	=b.[BookingDate]
	
	WHEN NOT MATCHED BY SOURCE 
			THEN
				/* The Record is in the target table but doen't exit on the source table*/
			Delete;
END
	