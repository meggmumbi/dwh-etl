IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[REPORTING].[dbo].[LineListOVCEnrollments]') AND type in (N'U'))
TRUNCATE TABLE [REPORTING].[dbo].LineListOVCEnrollments
GO

INSERT INTO [REPORTING].[dbo].LineListOVCEnrollments
SELECT 
MFLCode,
f.FacilityName,
County,
SubCounty,
p.PartnerName,
a.AgencyName,
Gender, 
g.DATIMAgeGroup,
enrld.Date as  OVCEnrollmentDate,
rp.RelationshipWithPatient,
EnrolledinCPIMS,
CASE
When EnrolledinCPIMS ='Yes' Then 'Yes'Else 'No'
End as EnrolledinCPIMSCleaned,
CPIMSUniqueIdentifier,
PartnerOfferingOVCServices,
OVCExitReason,
exd.Date as ExitDate,
FirstVL,
fvd.Date as FirstVLDate,
lastVL,
lvd.Date as lastVLDate,
Last12MVLResult,
lv12md.Date as Last12MVLDate,
pat.IsTXCurr as TXCurr,
CurrentRegimen,
case 
 	when CurrentRegimen like '%DTG%' then CurrentRegimen 
	else 'non DTG' 
end as LastRegimen,
 onMMD,
 ao.ARTOutcome,
 EligibleVL,
Last12MonthVL as VLDone,
Last12MVLSup as VirallySuppressed
from [NDWH].[dbo].[FactOVC] it
INNER JOIN NDWH.dbo.DimDate enrld on enrld.DateKey = it.OVCEnrollmentDateKey
INNER join NDWH.dbo.DimFacility f on f.FacilityKey = it.FacilityKey
INNER JOIN NDWH.dbo.DimAgency a on a.AgencyKey = it.AgencyKey
INNER JOIN NDWH.dbo.DimPatient pat on pat.PatientKey = it.PatientKey
INNER JOIN NDWH.dbo.DimPartner p on p.PartnerKey = it.PartnerKey
INNER JOIN NDWH.dbo.FactART art on art.PatientKey = it.PatientKey
INNER JOIN NDWH.dbo.FactViralLoads vl on vl.PatientKey = it.PatientKey
INNER join NDWH.dbo.DimAgeGroup g on g.Age = AgeLastVisit
LEFT JOIN NDWH.dbo.DimDate exd on exd.DateKey = it.OVCExitDateKey
LEFT JOIN NDWH.dbo.DimDate lvd on lvd.DateKey = vl.LastVLDateKey
LEFT JOIN NDWH.dbo.DimDate fvd on fvd.DateKey = vl.FirstVLDateKey
LEFT JOIN NDWH.dbo.DimDate lv12md on lv12md.DateKey = vl.Last12MVLDateKey
LEFT JOIN NDWH.dbo.DimRelationshipWithPatient rp on rp.RelationshipWithPatientKey = it.RelationshipWithPatientKey
INNER JOIN NDWH.dbo.DimARTOutcome ao on ao.ARTOutcomeKey = art.ARTOutcomeKey
LEFT JOIN NDWH.dbo.FactLatestObs lo on lo.PatientKey = it.PatientKey
where art.AgeLastVisit between 0 and 17 and OVCExitReason is null