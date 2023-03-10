BEGIN
		--truncate table [ODS].[dbo].[HTS_PartnerTracings]
		MERGE [ODS].[dbo].[HTS_PartnerTracings] AS a
			USING(SELECT DISTINCT  a.[FacilityName]
			  ,a.[SiteCode]
			  ,a.[PatientPk]
			  ,a.[HtsNumber]
			  ,a.[Emr]
			  ,a.[Project]
			  ,a.[TraceType]
			  ,a.[TraceDate]
			  ,a.[TraceOutcome]
			  ,a.[BookingDate] 
			  	 
		  FROM [HTSCentral].[dbo].[HtsPartnerTracings](NoLock) a
		  inner join (select tn.[SiteCode],tn.[PatientPk],tn.[HtsNumber],tn.[TraceType],tn.[TraceDate],tn.BookingDate,tn.[TraceOutcome],max(DateExtracted)MaxDateExtracted from [HTSCentral].[dbo].[HtsPartnerTracings](NoLock) tn
		               group by tn.[SiteCode],tn.[PatientPk],tn.[HtsNumber],tn.[TraceType],tn.BookingDate,tn.[TraceDate],tn.[TraceOutcome]
					)tm
			on a.[SiteCode] =tm.[SiteCode] and a.[PatientPk] =tm.[PatientPk] and a.[TraceType] = tm.[TraceType] and a.BookingDate =tm.BookingDate and a.DateExtracted = MaxDateExtracted
		  INNER JOIN [HTSCentral].[dbo].Clients (NoLock) Cl
		  on a.PatientPk = Cl.PatientPk and a.SiteCode = Cl.SiteCode
		  ) AS b 
			ON(
				a.PatientPK  = b.PatientPK 
			and a.SiteCode = b.SiteCode
			and a.TraceDate  = b.TraceDate 			
			and a.BookingDate  = b.BookingDate 
			and a.[TraceOutcome] = b.[TraceOutcome]
			and a.[TraceType] = b.[TraceType]
			---and a.ID = b.ID

			)
	WHEN NOT MATCHED THEN 
		INSERT(FacilityName,SiteCode,PatientPk,HtsNumber,Emr,Project,TraceType,TraceDate,TraceOutcome,BookingDate) 
		VALUES(FacilityName,SiteCode,PatientPk,HtsNumber,Emr,Project,TraceType,TraceDate,TraceOutcome,BookingDate)

	WHEN MATCHED THEN
		UPDATE SET 
			a.[FacilityName]=b.[FacilityName],
			
			a.[TraceType]	=b.[TraceType],
			a.[TraceDate]	=b.[TraceDate],
			a.[TraceOutcome]=b.[TraceOutcome],
			a.[BookingDate]	=b.[BookingDate];


		with cte AS ( Select           
		a.[PatientPk],           
		a.[SiteCode],  
		TraceDate,
		[BookingDate],
		 ROW_NUMBER() OVER (PARTITION BY a.[PatientPk],a.[SiteCode],TraceDate,[BookingDate]
		ORDER BY a.[PatientPk] desc) Row_Num
         FROM [ODS].[dbo].[HTS_PartnerTracings]  a)

	delete from cte where Row_Num>1
END