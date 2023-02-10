
BEGIN
--truncate table [ODS].[dbo].[PrEP_Patient]
MERGE [ODS].[dbo].[PrEP_Patient] AS a
	USING(SELECT  
				  [RefId]
				  ,[Created]
				  ,c.[PatientPk]
				  ,c.[SiteCode]
				  ,[Emr]
				  ,[Project]
				  ,[Processed]
				  ,[QueueId]
				  ,[Status]
				  ,[StatusDate]
				  ,[DateExtracted]
				  ,[FacilityId]
				  ,[FacilityName]
				  ,[PrepNumber]
				  ,[HtsNumber]
				  ,[PrepEnrollmentDate]
				  ,[Sex]
				  ,[DateofBirth]
				  ,[CountyofBirth]
				  ,[County]
				  ,[SubCounty]
				  ,[Location]
				  ,[LandMark]
				  ,[Ward]
				  ,[ClientType]
				  ,[ReferralPoint]
				  ,[MaritalStatus]
				  ,[Inschool]
				  ,[PopulationType]
				  ,[KeyPopulationType]
				  ,[Refferedfrom]
				  ,[TransferIn]
				  ,[TransferInDate]
				  ,[TransferFromFacility]
				  ,[DatefirstinitiatedinPrepCare]
				  ,[DateStartedPrEPattransferringfacility]
				  ,[ClientPreviouslyonPrep]
				  ,[PrevPrepReg]
				  ,[DateLastUsedPrev]
				  ,[Date_Created]
				  ,[Date_Last_Modified]
				  ,c.SiteCode +'-'+ c.PatientPK AS CKV,
				  convert(nvarchar(64), hashbytes('SHA2_256', cast(c.[PatientPk]  as nvarchar(36))), 2) PatientPKHash, 
				  convert(nvarchar(64), hashbytes('SHA2_256', cast(c.[PrepNumber]  as nvarchar(36))), 2) PrepNumberHash
 	 FROM [PREPCentral].[dbo].[PrepPatients](NoLock) c
	 INNER JOIN 
		(SELECT patientPK,sitecode,max(created)as Maxcreated from [PREPCentral].[dbo].[PrepPatients](NoLock) group by patientPK,sitecode)tn
		on c.patientPK = tn.patientPK 
			and c.sitecode =tn.sitecode and c.created = tn.Maxcreated) AS b 
	 
	ON(
		--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
			a.PatientPK  = b.PatientPK						
		and a.SiteCode = b.SiteCode
		) 
	 WHEN NOT MATCHED THEN 
		  INSERT(RefId,Created,PatientPk,SiteCode,Emr,Project,Processed,QueueId,[Status],StatusDate,DateExtracted,FacilityId,FacilityName,PrepNumber,HtsNumber,PrepEnrollmentDate,Sex,DateofBirth,CountyofBirth,County,SubCounty,[Location],LandMark,Ward,ClientType,ReferralPoint,MaritalStatus,Inschool,PopulationType,KeyPopulationType,Refferedfrom,TransferIn,TransferInDate,TransferFromFacility,DatefirstinitiatedinPrepCare,DateStartedPrEPattransferringfacility,ClientPreviouslyonPrep,PrevPrepReg,DateLastUsedPrev,Date_Created
			  ,Date_Last_Modified,CKV) 
		  VALUES(RefId,Created,PatientPk,SiteCode,Emr,Project,Processed,QueueId,[Status],StatusDate,DateExtracted,FacilityId,FacilityName,PrepNumber,HtsNumber,PrepEnrollmentDate,Sex,DateofBirth,CountyofBirth,County,SubCounty,[Location],LandMark,Ward,ClientType,ReferralPoint,MaritalStatus,Inschool,PopulationType,KeyPopulationType,Refferedfrom,TransferIn,TransferInDate,TransferFromFacility,DatefirstinitiatedinPrepCare,DateStartedPrEPattransferringfacility,ClientPreviouslyonPrep,PrevPrepReg,DateLastUsedPrev,Date_Created
				,Date_Last_Modified,CKV) 

	  WHEN MATCHED THEN
				UPDATE SET 													
					a.Status=b.Status,
					a.StatusDate=b.StatusDate,													
					a.PrepEnrollmentDate=b.PrepEnrollmentDate,
					a.CountyofBirth=b.CountyofBirth,
					a.County=b.County,
					a.SubCounty=b.SubCounty,
					a.Location=b.Location,
					a.LandMark=b.LandMark,
					a.Ward=b.Ward,
					a.ClientType=b.ClientType,
					a.ReferralPoint=b.ReferralPoint,
					a.MaritalStatus=b.MaritalStatus,
					a.Inschool=b.Inschool,
					a.PopulationType=b.PopulationType,
					a.KeyPopulationType=b.KeyPopulationType,
					a.Refferedfrom=b.Refferedfrom,
					a.TransferIn=b.TransferIn,
					a.TransferInDate=b.TransferInDate,
					a.TransferFromFacility=b.TransferFromFacility,
					a.DatefirstinitiatedinPrepCare=b.DatefirstinitiatedinPrepCare,
					a.DateStartedPrEPattransferringfacility=b.DateStartedPrEPattransferringfacility,
					a.ClientPreviouslyonPrep=b.ClientPreviouslyonPrep,
					a.PrevPrepReg=b.PrevPrepReg;										

	END

					