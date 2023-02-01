IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AggregateDSD]') AND type in (N'U'))
TRUNCATE TABLE [dbo].[AggregateDSD]
GO

INSERT INTO REPORTING.dbo.AggregateDSD
SELECT DISTINCT
MFLCode,
f.FacilityName,
County,
SubCounty,
p.PartnerName as CTPartner,
a.AgencyName as CTAgency,
Gender,
age.DATIMAgeGroup as AgeGroup, 
StabilityAssessment,
SUM(isTXCurr) as patients_TXCurr,
SUM(onMMD) as patients_onMMD,
SUM(case when onMMD = 0 then 1 else 0 end) as patients_nonMMD,
COUNT(StabilityAssessment) AS Stability,
Sum(pat.isTXCurr) As TXCurr

FROM NDWH.dbo.FactLatestObs lob
INNER JOIN NDWH.dbo.DimAgeGroup age on age.AgeGroupKey = lob.AgeGroupKey
INNER JOIN NDWH.dbo.DimFacility f on f.FacilityKey = lob.FacilityKey
INNER JOIN NDWH.dbo.DimAgency a on a.AgencyKey = lob.AgencyKey
INNER JOIN NDWH.dbo.DimPatient pat on pat.PatientKey = lob.PatientKey
INNER JOIN NDWH.dbo.DimPartner p on p.PartnerKey = lob.PartnerKey
WHERE pat.isTXCurr = 1
GROUP BY MFLCode, f.FacilityName, County, SubCounty, p.PartnerName, a.AgencyName, Gender, age.DATIMAgeGroup, StabilityAssessment

GO