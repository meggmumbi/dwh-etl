
BEGIN
    --truncate table [ODS].[dbo].[MNCH_CwcEnrolments]
	MERGE [ODS].[dbo].[MNCH_CwcEnrolments] AS a
			USING(
					SELECT Distinct [PatientIDCWC],[HEIID],P.[PatientPk],P.[SiteCode],P.[EMR],F.Name FacilityName,P.[Project],cast(P.[DateExtracted] as date)[DateExtracted]
						  ,P.[PKV],[MothersPkv],cast([RegistrationAtCWC] as date) [RegistrationAtCWC],cast([RegistrationAtHEI] as date)[RegistrationAtHEI]
						  ,[VisitID],[Gestation],[BirthWeight],[BirthLength],[BirthOrder],[BirthType],[PlaceOfDelivery],[ModeOfDelivery],[SpecialNeeds]
						  ,[SpecialCare],[HEI],[MotherAlive],[MothersCCCNo],[TransferIn],[TransferInDate],[TransferredFrom],[HEIDate],[NVP]
						  ,[BreastFeeding],[ReferredFrom],[ARTMother],[ARTRegimenMother]
						  ,cast([ARTStartDateMother] as date) [ARTStartDateMother]
						  ,P.[Date_Created]
						  ,P.[Date_Last_Modified]

					  FROM [MNCHCentral].[dbo].[CwcEnrolments]P(Nolock)
					  inner join (select tn.PatientPK,tn.SiteCode,max(tn.DateExtracted)MaxDateExtracted FROM [MNCHCentral].[dbo].[CwcEnrolments] (NoLock)tn
						group by tn.PatientPK,tn.SiteCode)tm
					on P.PatientPk = tm.PatientPk and p.SiteCode = tm.SiteCode and p.DateExtracted = tm.MaxDateExtracted
					  INNER JOIN  [MNCHCentral].[dbo].[MnchPatients] MnchP(Nolock)
					on P.patientPK = MnchP.patientPK and P.Sitecode = MnchP.Sitecode
					  INNER JOIN [MNCHCentral].[dbo].[Facilities]F on F.Id=P.FacilityId ) AS b 
						ON(
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						--and a.ID  = b.ID
							)
					WHEN NOT MATCHED THEN 
						INSERT(PatientIDCWC,HEIID,PatientPk,SiteCode,EMR,FacilityName,Project,DateExtracted,PKV,MothersPkv,RegistrationAtCWC,RegistrationAtHEI,VisitID,Gestation,BirthWeight,BirthLength,BirthOrder,BirthType,PlaceOfDelivery,ModeOfDelivery,SpecialNeeds,SpecialCare,HEI,MotherAlive,MothersCCCNo,TransferIn,TransferInDate,TransferredFrom,HEIDate,NVP,BreastFeeding,ReferredFrom,ARTMother,ARTRegimenMother,ARTStartDateMother,Date_Created,Date_Last_Modified) 
						VALUES(PatientIDCWC,HEIID,PatientPk,SiteCode,EMR,FacilityName,Project,DateExtracted,PKV,MothersPkv,RegistrationAtCWC,RegistrationAtHEI,VisitID,Gestation,BirthWeight,BirthLength,BirthOrder,BirthType,PlaceOfDelivery,ModeOfDelivery,SpecialNeeds,SpecialCare,HEI,MotherAlive,MothersCCCNo,TransferIn,TransferInDate,TransferredFrom,HEIDate,NVP,BreastFeeding,ReferredFrom,ARTMother,ARTRegimenMother,ARTStartDateMother,Date_Created,Date_Last_Modified)
				
					WHEN MATCHED THEN
						UPDATE SET 
							a.PlaceOfDelivery	 =b.PlaceOfDelivery;
END

