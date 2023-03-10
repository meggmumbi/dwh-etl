BEGIN

			MERGE [ODS].[dbo].[HTS_clients] AS a
				USING(SELECT  DISTINCT [HtsNumber]
					  ,a.[Emr]
					  ,a.PatientPK
					  ,a.SiteCode
					  ,a.[Project]
					  ,[FacilityName]
					  ,[Serial]   
					  ,CAST ([Dob] AS DATE) AS [Dob]
					  ,LEFT([Gender],1) AS Gender
					  ,[MaritalStatus]
					  ,[KeyPopulationType]
					  ,[PatientDisabled] AS [DisabilityType]
					  ,PatientDisabled
					  ,[County]
					  ,[SubCounty]
					  ,[Ward]
					  ,NUPI
					  ,HtsRecencyId
		              ,Occupation 
                     ,PriorityPopulationType 
					FROM [HTSCentral].[dbo].[Clients](NoLock) a
				INNER JOIN (
								SELECT SiteCode,PatientPK, MAX(datecreated) AS Maxdatecreated
								FROM  [HTSCentral].[dbo].[Clients](NoLock)
								GROUP BY SiteCode,PatientPK
							) tm 
				ON a.[SiteCode] = tm.[SiteCode] and a.PatientPK=tm.PatientPK and a.datecreated = tm.Maxdatecreated
				 WHERE a.DateExtracted > '2019-09-08'
					) AS b 
						ON(
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode						
						)

					WHEN NOT MATCHED THEN 
						INSERT(HtsNumber,Emr,Project,PatientPk,SiteCode,FacilityName,Serial,Dob,Gender,MaritalStatus,KeyPopulationType,PopulationType,DisabilityType,PatientDisabled,County,SubCounty,Ward,NUPI,HtsRecencyId,Occupation ,PriorityPopulationType  ) 
						VALUES(HtsNumber,Emr,Project,PatientPk,SiteCode,FacilityName,Serial,Dob,Gender,MaritalStatus,KeyPopulationType,NULL,DisabilityType,PatientDisabled,County,SubCounty,Ward,NUPI,HtsRecencyId,Occupation ,PriorityPopulationType)
				
					WHEN MATCHED THEN
						UPDATE SET       
							
							a.FacilityName	   =b.FacilityName,
							a.Dob			   =b.Dob,
							a.Gender		   =b.Gender,
							a.MaritalStatus	   =b.MaritalStatus,
							a.KeyPopulationType=b.KeyPopulationType,
							a.DisabilityType   =b.DisabilityType,
							a.PatientDisabled  =b.PatientDisabled ,
							a.County		   =b.County,
							a.SubCounty		   =b.SubCounty,
							a.Ward			   =b.Ward;
	END
