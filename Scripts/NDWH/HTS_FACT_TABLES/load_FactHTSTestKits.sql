IF OBJECT_ID(N'[NDWH].[dbo].[FactHTSTestKits]', N'U') IS NOT NULL 
	DROP TABLE [NDWH].[dbo].[FactHTSTestKits];
BEGIN

    with MFL_partner_agency_combination as (
        select 
            distinct MFL_Code,
            SDP,
            SDP_Agency collate Latin1_General_CI_AS as Agency
        from ODS.dbo.All_EMRSites 
    ),
    source_data as (
        select 
        distinct SiteCode,
        PatientPk,
        EncounterId,
        TestKitName1,
        TestKitLotNumber1,
        TestKitExpiry1,
        TestResult1,
        TestKitName2,
        TestKitLotNumber2,
        TestKitExpiry2,
        TestResult2
    from ODS.dbo.HTS_TestKits
    )
    select 
        FactKey = IDENTITY(INT, 1, 1),
        patient.PatientKey,
        facility.FacilityKey,
        partner.PartnerKey,
        agency.AgencyKey,
        kit_name1.TestKitNameKey as TestKitName1Key,
        TestKitLotNumber1,
        TestResult1,
        kit_name2.TestKitNameKey as TestKitName2Key,
        TestKitLotNumber2,
        TestResult2
    into NDWH.dbo.FactHTSTestKits
    from source_data
    left join NDWH.dbo.DimPatient as patient on patient.PatientPK = convert(nvarchar(64), hashbytes('SHA2_256', cast(source_data.PatientPK as nvarchar(36))), 2)
        and patient.SiteCode = source_data.SiteCode
    left join NDWH.dbo.DimFacility as facility on facility.MFLCode = source_data.SiteCode
    left join MFL_partner_agency_combination on MFL_partner_agency_combination.MFL_Code = source_data.SiteCode
    left join NDWH.dbo.DimPartner as partner on partner.PartnerName = MFL_partner_agency_combination.SDP
    left join NDWH.dbo.DimAgency as agency on agency.AgencyName = MFL_partner_agency_combination.Agency
    left join NDWH.dbo.DimTestKitName as kit_name1 on kit_name1.TestKitName = source_data.TestKitName1
    left join NDWH.dbo.DimTestKitName as kit_name2 on kit_name2.TestKitName = source_data.TestKitName2;

alter table NDWH.dbo.FactHTSTestKits add primary key(FactKey); 

END