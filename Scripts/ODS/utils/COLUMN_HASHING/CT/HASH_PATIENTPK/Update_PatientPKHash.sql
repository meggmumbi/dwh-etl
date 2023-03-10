update ODS.dbo.CT_Patient 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2),
		PatientIDHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientID  as nvarchar(36))), 2);

update ODS.dbo.CT_PatientBaselines 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_AllergiesChronicIllness 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_ARTPatients 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);


	update ODS.dbo.CT_ContactListing 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_EnhancedAdherenceCounselling 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_Otz 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

	update ODS.dbo.CT_Ovc 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_DefaulterTracing 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_PatientStatus 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update ODS.dbo.CT_AdverseEvents 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

update [ODS].[dbo].[CT_ContactListing] 
	set ContactPatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(ContactPatientPK  as nvarchar(36))), 2);

update ODS.dbo.CT_DepressionScreening 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

	
update ODS.dbo.CT_DrugAlcoholScreening 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

	update ODS.dbo.CT_GbvScreening 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

	update ODS.dbo.CT_Covid 
	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

	--update ODS.dbo.CT_PatientVisits 
	--set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);
		update v
	set PatientPKHash = p.PatientPKHash
	from ODS.dbo.CT_PatientVisits  v
	JOIN ODS.dbo.CT_Patient p
	on v.SiteCode = p.SiteCode and v.PatientPK = p.PatientPK

	--update ODS.dbo.CT_Ipt 
	--set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

		update Ipt
	set PatientPKHash = p.PatientPKHash
	from ODS.dbo.CT_Ipt  Ipt
	JOIN ODS.dbo.CT_Patient p
	on Ipt.SiteCode = p.SiteCode and Ipt.PatientPK = p.PatientPK

--update ODS.dbo.CT_PatientLabs 
--	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2); 

			update Labs 
	set PatientPKHash = p.PatientPKHash
	from ODS.dbo.CT_PatientLabs   Labs 
	JOIN ODS.dbo.CT_Patient p
	on Labs .SiteCode = p.SiteCode and Labs .PatientPK = p.PatientPK

--update ODS.dbo.CT_PatientPharmacy 
--	set PatientPKHash = convert(nvarchar(64), hashbytes('SHA2_256', cast(PatientPk  as nvarchar(36))), 2);

		update Phar 
	set PatientPKHash = p.PatientPKHash
	from ODS.dbo.CT_PatientPharmacy   Phar
	JOIN ODS.dbo.CT_Patient p
	on Phar .SiteCode = p.SiteCode and Phar .PatientPK = p.PatientPK









