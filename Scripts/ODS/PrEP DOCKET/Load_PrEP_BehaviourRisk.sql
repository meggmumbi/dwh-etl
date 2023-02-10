
BEGIN

--truncate table [ODS].[dbo].[PrEP_BehaviourRisk]
MERGE [ODS].[dbo].[PrEP_BehaviourRisk] AS a
	USING(SELECT distinct

      a.[RefId]
      ,a.[Created]
      ,a.[PatientPk]
      ,a.[SiteCode]
      ,a.[Emr]
      ,a.[Project]
      ,a.[Processed]
      ,a.[QueueId]
      ,a.[Status]
      ,a.[StatusDate]
      ,a.[DateExtracted]
      ,a.[FacilityId]
      ,a.[FacilityName]
      ,a.[PrepNumber]
      ,a.[HtsNumber]
      ,[VisitDate]
      ,[VisitID]
      ,[SexPartnerHIVStatus]
      ,[IsHIVPositivePartnerCurrentonART]
      ,[IsPartnerHighrisk]
      ,[PartnerARTRisk]
      ,[ClientAssessments]
      ,[ClientRisk]
      ,[ClientWillingToTakePrep]
      ,[PrEPDeclineReason]
      ,[RiskReductionEducationOffered]
      ,[ReferralToOtherPrevServices]
      ,[FirstEstablishPartnerStatus]
      ,[PartnerEnrolledtoCCC]
      ,[HIVPartnerCCCnumber]
      ,[HIVPartnerARTStartDate]
      ,[MonthsknownHIVSerodiscordant]
      ,[SexWithoutCondom]
      ,[NumberofchildrenWithPartner]
      ,a.[Date_Created]
      ,a.[Date_Last_Modified]
	  ,a.SiteCode +'-'+ a.PatientPK AS CKV,
	convert(nvarchar(64), hashbytes('SHA2_256', cast(a.[PatientPk]  as nvarchar(36))), 2) PatientPKHash, 
	convert(nvarchar(64), hashbytes('SHA2_256', cast(a.[PrepNumber]  as nvarchar(36))), 2) PrepNumberHash
  FROM [PREPCentral].[dbo].[PrepBehaviourRisks](NoLock)a
  inner join    [PREPCentral].[dbo].[PrepPatients](NoLock) b

on a.SiteCode = b.SiteCode and a.PatientPk =  b.PatientPk 

INNER JOIN (SELECT PatientPk, SiteCode, max(Created) AS maxCreated from [PREPCentral].[dbo].[PrepBehaviourRisks]
              group by PatientPk,SiteCode) tn
ON a.PatientPk = tn.PatientPk and a.SiteCode = tn.SiteCode and a.Created = tn.maxCreated

INNER JOIN (SELECT PatientPk, SiteCode, max(DateExtracted) AS maxDateExtracted from [PREPCentral].[dbo].[PrepBehaviourRisks]
              group by PatientPk,SiteCode) tm
ON a.PatientPk = tm.PatientPk and a.SiteCode = tm.SiteCode and a.DateExtracted = tm.maxDateExtracted

)
AS b    			ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK						
						and a.SiteCode = b.SiteCode
						and a.visitID  = b.visitID
						and a.VisitDate = b.Visitdate
						) 



	 WHEN NOT MATCHED THEN 
		  INSERT(RefId,Created,PatientPk,SiteCode,Emr,Project,Processed,QueueId,[Status],StatusDate,DateExtracted,FacilityId,FacilityName,PrepNumber,HtsNumber
		  ,VisitDate,VisitID,SexPartnerHIVStatus,IsHIVPositivePartnerCurrentonART,IsPartnerHighrisk,
		  PartnerARTRisk,ClientAssessments,ClientRisk,ClientWillingToTakePrep,PrEPDeclineReason,
		  RiskReductionEducationOffered,ReferralToOtherPrevServices,FirstEstablishPartnerStatus,PartnerEnrolledtoCCC,HIVPartnerCCCnumber,
		  HIVPartnerARTStartDate,MonthsknownHIVSerodiscordant,SexWithoutCondom,NumberofchildrenWithPartner,Date_Created,Date_Last_Modified,CKV,PatientPKHash,PrepNumberHash)
		  

		  VALUES(RefId,Created,PatientPk,SiteCode,Emr,Project,Processed,QueueId,[Status],StatusDate,DateExtracted,FacilityId,FacilityName,PrepNumber,HtsNumber,
          VisitDate,VisitID,SexPartnerHIVStatus,IsHIVPositivePartnerCurrentonART,IsPartnerHighrisk,
		  PartnerARTRisk,ClientAssessments,ClientRisk,ClientWillingToTakePrep,PrEPDeclineReason,
		  RiskReductionEducationOffered,ReferralToOtherPrevServices,FirstEstablishPartnerStatus,PartnerEnrolledtoCCC,HIVPartnerCCCnumber,
		  HIVPartnerARTStartDate,MonthsknownHIVSerodiscordant,SexWithoutCondom,NumberofchildrenWithPartner,Date_Created,Date_Last_Modified,CKV,PatientPKHash,PrepNumberHash) 

	  WHEN MATCHED THEN
						UPDATE SET 
							a.IsPartnerHighrisk=b.IsPartnerHighrisk,
							a.PartnerARTRisk=b.PartnerARTRisk,
							a.ClientAssessments=b.ClientRisk,
							a.ClientRisk=b.ClientRisk,
							a.ClientWillingToTakePrep=b.ClientWillingToTakePrep,
							a.PrEPDeclineReason=b.PrEPDeclineReason,
							a.RiskReductionEducationOffered=b.RiskReductionEducationOffered,
							a.ReferralToOtherPrevServices=b.ReferralToOtherPrevServices,
							a.FirstEstablishPartnerStatus=b.FirstEstablishPartnerStatus,
							a.PartnerEnrolledtoCCC=b.PartnerEnrolledtoCCC,
							a.HIVPartnerARTStartDate=b.HIVPartnerARTStartDate,
							a.MonthsknownHIVSerodiscordant=b.MonthsknownHIVSerodiscordant,
							a.SexWithoutCondom=b.SexWithoutCondom,
							a.NumberofchildrenWithPartner=b.NumberofchildrenWithPartner,
							a.Status=b.Status,
							a.SexPartnerHIVStatus=b.SexPartnerHIVStatus,
							a.IsHIVPositivePartnerCurrentonART=b.IsHIVPositivePartnerCurrentonART,						
							a.Date_Last_Modified=b.Date_Last_Modified;						
						
							
				

END

					