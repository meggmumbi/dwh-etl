
BEGIN
    --truncate table [ODS].[dbo].[MNCH_Heis]
	MERGE [ODS].[dbo].[MNCH_Heis] AS a
			USING(
					SELECT distinct P.[PatientPk],P.[SiteCode],P.[Emr],P.[Project],P.[Processed],P.[QueueId],P.[Status],P.[StatusDate],P.[DateExtracted]
						  ,P.[FacilityId],P.[FacilityName],P.[PatientMnchID],[DNAPCR1Date],[DNAPCR2Date],[DNAPCR3Date],[ConfirmatoryPCRDate],[BasellineVLDate]
						  ,[FinalyAntibodyDate],[DNAPCR1],[DNAPCR2],[DNAPCR3],[ConfirmatoryPCR],[BasellineVL],[FinalyAntibody]
						  ,[HEIExitDate],[HEIHIVStatus],[HEIExitCritearia],P.[Date_Created],P.[Date_Last_Modified]
					  FROM [MNCHCentral].[dbo].[Heis] P
					INNER JOIN (SELECT tn.PatientPk,tn.SiteCode,max(tn.DateExtracted)MaxDateExtracted FROM [MNCHCentral].[dbo].[Heis] (NOLOCK)tn
								GROUP BY  tn.PatientPk,tn.SiteCode)tm
					 on p.PatientPk = tm.PatientPk and p.SiteCode = tm.SiteCode and p.DateExtracted = tm.MaxDateExtracted
					 INNER JOIN  [MNCHCentral].[dbo].[MnchPatients](NOLOCK)  Mnchp
					 ON p.patientpk = Mnchp.PatientPK and p.Sitecode = Mnchp.sitecode
					 INNER JOIN [MNCHCentral].[dbo].[Facilities] F ON P.[FacilityId] = F.Id) AS b 
						ON(
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						--and a.ID  = b.ID
							)
					WHEN NOT MATCHED THEN 
						INSERT(PatientPk,SiteCode,Emr,Project,Processed,QueueId,[Status],StatusDate,DateExtracted,FacilityId,FacilityName,PatientMnchID,DNAPCR1Date,DNAPCR2Date,DNAPCR3Date,ConfirmatoryPCRDate,BasellineVLDate,FinalyAntibodyDate,DNAPCR1,DNAPCR2,DNAPCR3,ConfirmatoryPCR,BasellineVL,FinalyAntibody,HEIExitDate,HEIHIVStatus,HEIExitCritearia,Date_Created,Date_Last_Modified) 
						VALUES(PatientPk,SiteCode,Emr,Project,Processed,QueueId,[Status],StatusDate,DateExtracted,FacilityId,FacilityName,PatientMnchID,DNAPCR1Date,DNAPCR2Date,DNAPCR3Date,ConfirmatoryPCRDate,BasellineVLDate,FinalyAntibodyDate,DNAPCR1,DNAPCR2,DNAPCR3,ConfirmatoryPCR,BasellineVL,FinalyAntibody,HEIExitDate,HEIHIVStatus,HEIExitCritearia,Date_Created,Date_Last_Modified)

				
					WHEN MATCHED THEN
						UPDATE SET 
							a.[Status]	 =b.[Status];

					;with cte AS ( Select            
									P.PatientPK,            
									P.SiteCode,            
					
					ROW_NUMBER() OVER (PARTITION BY P.PatientPK,P.SiteCode
					ORDER BY P.PatientPK,P.SiteCode) Row_Num
					FROM [ODS].[dbo].[MNCH_Heis] p)   
		
				delete from cte
				where  Row_Num  > 1;
END



