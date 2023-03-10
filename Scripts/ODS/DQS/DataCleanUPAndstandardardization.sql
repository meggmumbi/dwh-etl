
BEGIN

    Insert into [dbo].[CT_DQS_Log]([LoadStartDateTime])
	values(Getdate());
	-- clean AdverseEvent
	UPDATE CT_AdverseEvents
		SET AdverseEvent = lkp_adverse_events.target_name
	FROM CT_AdverseEvents AS adverse_events
	INNER JOIN lkp_adverse_events ON lkp_adverse_events.source_name = adverse_events.AdverseEvent;

	-- clean AdverseEventStartDate
	UPDATE CT_AdverseEvents
		SET AdverseEventStartDate = CAST('1900-01-01' AS DATE)
	WHERE AdverseEventStartDate < CAST('1980-01-01' AS DATE) OR AdverseEventStartDate > GETDATE();

	-- clean AdverseEventEndDate
	UPDATE CT_AdverseEvents
		SET AdverseEventEndDate = CAST('1900-01-01' AS DATE)
	WHERE AdverseEventEndDate < CAST('1980-01-01' AS DATE) OR AdverseEventEndDate > GETDATE();

	-- clean Severity
	UPDATE CT_AdverseEvents
		SET Severity = CASE 
						WHEN Severity IN ('Mild', 'Mild|Mild|Mild') THEN 'Mild'
						WHEN Severity IN ('Moderate','Moderate|Moderate', 'Moderate|Moderate|Moderate') THEN 'Moderate'
						WHEN Severity IN ('Severe','Fatal', 'Severe|Severe', 'Severe|Severe|Severe') THEN 'Severe'
						WHEN Severity IN ('Mild|Moderate', 'Moderate|Mild', 'Severe|Moderate', 'Unknown|Moderate', 'Moderate|Severe') THEN 'Unknown'
					  END
	WHERE Severity IN ('Moderate','Mild','Severe','Mild|Moderate','Fatal','Severe|Severe','Moderate|Moderate','Moderate|Mild','Severe|Moderate','Mild|Mild|Mild','Unknown|Moderate','Severe|Severe|Severe','Moderate|Moderate|Moderate','Moderate|Severe');
	
	-- clean AdverseEventRegimen
	UPDATE CT_AdverseEvents
		SET AdverseEventRegimen = lkp_regimen.target_name
	FROM CT_AdverseEvents AS adverse_events
	INNER JOIN lkp_regimen ON lkp_regimen.source_name = adverse_events.AdverseEventRegimen;

	-- clean AdverseEventActionTaken
	UPDATE CT_AdverseEvents
		SET AdverseEventActionTaken = CASE 
										WHEN AdverseEventActionTaken IN ('Medicine not changed', 'CONTINUE REGIMEN', 'CONTINUE REGIMEN|CONTINUE REGIMEN') THEN 'Drug not Changed'
										WHEN AdverseEventActionTaken = 'Dose reduced' THEN 'Drug Reduced'
										WHEN AdverseEventActionTaken = 'SUBSTITUTED DRUG' THEN 'Drug Substituted'
										WHEN AdverseEventActionTaken IN ('Medicine causing AE substituted/withdrawn','STOP','STOP|STOP','All drugs stopped','STOP|STOP|STOP','Other|STOP','NONE|STOP')  THEN 'Drug Withdrawn'
										WHEN AdverseEventActionTaken IN ('Other','NONE','Select','SUBSTITUTED DRUG|STOP','Other|Other') THEN 'OTHER'
										WHEN AdverseEventActionTaken = 'SWITCHED REGIMEN' THEN 'Regimen Switched'
									END
	WHERE AdverseEventActionTaken IN ('SUBSTITUTED DRUG','Medicine causing AE substituted/withdrawn','Medicine not changed','STOP','Other','SWITCHED REGIMEN','CONTINUE REGIMEN','STOP|STOP','NONE','Dose reduced','Select','CHANGED DOSE','All drugs stopped','CONTINUE REGIMEN|CONTINUE REGIMEN','STOP|STOP|STOP','Other|STOP','NONE|STOP','SUBSTITUTED DRUG|STOP','Other|Other');

	--- clean AdverseEventCause
	UPDATE CT_AdverseEvents
		SET AdverseEventCause = CASE 
									WHEN AdverseEventCause IN ('3TC/D4T','3TC/TDF/NVP','ABACAVIR','abacavirwhen she was using','ABC','ABC+3TC','abc/3tc/efv','AF2B','af2b- avonza','ALL ARV','ALUVIA','art','ARV','arvs','atanzanavir','atavanavir','ataz/rit','atazanavir','Atazanavir/Rironavir','atazanavir/ritonavir','ATV','ATV/r','ATVr','AZT','AZT+3TC+EFV','AZT/3TC/NVP','AZT/ATV','AZT/KALETRA','ctx/3tc/tdf/efv','D4T','D4T / 3TC / NVP','D4T/3TC','D4T/AZT','DDI','Dolotegravir','doluteglavir','dolutegravir','DTG','DTG Aurobindo','dultegravir','EFARIRENZ','EFAVIRENCE','Efavirens','efavirenz','efavirenze','efavirez','efervirence','efervirenz','efevurence','EFV','EFV 600MG','EFV/NVP','efv/rhze','HAART','KALETRA','lopinanavir','LOPINAVIR','LPV','LPV/r','lpvr','NVP','NVP/ABC','pep','TDF','tdf dtg','TDF/3TC/','tdf/3tc/dtg','tdf/3tc/efv','Tenoforvir','tenofovir','TLD','TLE ','TLE 400','TRIMUNE','ZIDOVUDINE','EFV','? NVP','? TLD','?ATV/r','3TC','3TC/3TC', 'D4T', 'EFAVIRENZ') THEN 'ARV'
									WHEN AdverseEventCause IN ('ART/TB', 'ARVS, CTX , IPT', 'CTX OR EFV', 'D4T/INH', 'INH/NVP', 'isoniazid and nevirapine', 'isoniazid efavirenz', 'NVP/CTX', 'tdf dtg ctx 3tc', 'inh, tdf,3tc,dtg, ctx') THEN 'ARV + OTHER DRUGS'
									WHEN AdverseEventCause IN ('ANT TB','ANTI TB','anti TBs','ANTI-TB','Co-trimoxazole','CONTRIMAZOLE','cotrimoxasole','cotrimoxazole','cotrimoxazole 960mg','Cotrimoxazole-','CTX','CTX /ANTI TB','Dapson','fluconazole','IHN','INH','INH (IPT)','INH/CTX','IPT','ipt in 2016','ipt side effect ','IRIS','Isiniazid','isiniazide','isonaizid','isoniaizid','isoniasid','isoniazid','Isoniazid - November 2017','isoniazide','isoniazin','isonizid','Isonizide and Pyridoxine','IZONIAZID','IZONIAZIDE','pyrazinamid','pyrazinamide','PYRIDOXINE','RH','RHE','RHZE','septin','SEPTRIN','septrine','Streptomycin','sulfa','sulphonamides','SULPHONOMIDES','SULPHUR','TB','TB DRUGS','tb meds','2RHZ/4RH(children)','2RHZE/10RH','2RHZE/4RH','2SRHZE/1RHZE/', 'INH, SEPTRIN') THEN 'NON-ARVS'
									ELSE 'UNSPECIFIED' 
								END;

	-- clean AdverseEventClinicalOutcome
	UPDATE CT_AdverseEvents
		SET AdverseEventClinicalOutcome = CASE
											WHEN AdverseEventClinicalOutcome = 'Recovered/Resolved' THEN 'Recovered'
											WHEN AdverseEventClinicalOutcome = 'Recovering/Resolving' THEN 'Recovering'
											WHEN AdverseEventClinicalOutcome = 'Requires intervention to prevent permanent damage' THEN 'OTHER' 
										END
	WHERE AdverseEventClinicalOutcome IN ('Recovered/Resolved', 'Recovering/Resolving', 'Requires intervention to prevent permanent damage'); 

	-- clean ChronicIllness
	UPDATE CT_AllergiesChronicIllness 
		SET ChronicIllness = lkp_chronic_illness.target_name
	FROM CT_AllergiesChronicIllness AS allergies_chronic_illness
	INNER JOIN lkp_chronic_illness ON lkp_chronic_illness.source_name = allergies_chronic_illness.ChronicIllness;

	-- clean ChronicOnsetDate
	UPDATE CT_AllergiesChronicIllness 
		SET ChronicOnsetDate = CAST('1900-01-01' AS DATE)
	WHERE ChronicOnsetDate < CAST('1900-01-01' AS DATE) OR ChronicOnsetDate > GETDATE();

	-- clean AllergyCausativeAgent
	UPDATE CT_AllergiesChronicIllness 
		SET AllergyCausativeAgent = lkp_allergy_causative_agent.target_name
	FROM CT_AllergiesChronicIllness AS allergies_chronic_illness
	INNER JOIN lkp_allergy_causative_agent ON lkp_allergy_causative_agent.source_name = allergies_chronic_illness.AllergyCausativeAgent;

	-- clean AllergicReaction
	UPDATE CT_AllergiesChronicIllness 
		SET AllergicReaction = lkp_allergic_reaction.target_name
	FROM CT_AllergiesChronicIllness AS allergies_chronic_illness
	INNER JOIN lkp_allergic_reaction ON lkp_allergic_reaction.source_name = allergies_chronic_illness.AllergicReaction;

	-- clean AllergySeverity
	UPDATE CT_AllergiesChronicIllness 
		SET AllergySeverity = CASE 
								WHEN AllergySeverity = 'Fatal' THEN 'Fatal'
								WHEN AllergySeverity IN ('Mild|Mild|Mild', 'Mild|Mild', 'Mild') THEN 'Mild'
								WHEN AllergySeverity IN ('Moderate|Moderate', 'Moderate') THEN 'Moderate'
								WHEN AllergySeverity = 'Severe' THEN 'Severe'
								WHEN AllergySeverity IN ('Unknown', 'Moderate|Mild') THEN 'Unknown'
							END
	WHERE AllergySeverity IN ('Fatal', 'Mild|Mild|Mild', 'Mild|Mild', 'Mild', 'Moderate|Moderate', 'Moderate', 'Severe', 'Unknown', 'Moderate|Mild');

	-- clean DOB
	UPDATE CT_ARTPatients 
		SET DOB = CAST('1900-01-01' AS DATE)
	WHERE DOB < CAST('1900-01-01' AS DATE) OR DOB >  GETDATE();

	-- clean StartARtDate
	UPDATE CT_ARTPatients
		SET StartARTDate = CAST('1900-01-01' AS DATE)
	WHERE StartARTDate < CAST('1980-01-01' AS DATE) OR StartARTDate > GETDATE();

	-- clean StartARTAtThisFacility
	UPDATE CT_ARTPatients
		SET StartARTAtThisFacility = CAST('1900-01-01' AS DATE)
	WHERE StartARTAtThisFacility < CAST('1980-01-01' AS DATE) OR StartARTAtThisFacility > GETDATE();
	
	-- clean LastARTDate
	UPDATE CT_ARTPatients
		SET LastARTDate = CAST('1900-01-01' AS DATE)
	WHERE LastARTDate < CAST('1980-01-01' AS DATE) OR LastARTDate > GETDATE();
	
	-- clean RegistrationDate
	UPDATE CT_ARTPatients
		SET RegistrationDate = CAST('1900-01-01' AS DATE)
	WHERE RegistrationDate < CAST('1980-01-01' AS DATE) OR RegistrationDate > GETDATE();
	
	-- clean PreviousARTStartDate
	UPDATE CT_ARTPatients
		SET PreviousARTStartDate = CAST('1900-01-01' AS DATE)
	WHERE PreviousARTStartDate < CAST('1980-01-01' AS DATE) OR PreviousARTStartDate > GETDATE();
	
	-- clean ExpectedReturn
	UPDATE CT_ARTPatients
		SET ExpectedReturn = CAST('1900-01-01' AS DATE)
	WHERE ExpectedReturn < CAST('1980-01-01' AS DATE)-- OR ExpectedReturn > GETDATE(); Commented by Dennis/Mary/Mumo and koske

	-- clean LastVisit
	UPDATE CT_ARTPatients
		SET LastVisit = CAST('1900-01-01' AS DATE)
	WHERE LastVisit < CAST('1980-01-01' AS DATE) OR LastVisit > GETDATE();

	-- clean ExitDate
	UPDATE CT_ARTPatients
		SET ExitDate = CAST('1900-01-01' AS DATE)
	WHERE ExitDate < CAST('1980-01-01' AS DATE) OR ExitDate > GETDATE();

	-- clean EMR 
	UPDATE CT_ARTPatients 
		SET Emr = CASE
					WHEN Emr = 'Open Medical Records System - OpenMRS' THEN 'OpenMRS'
					WHEN Emr = 'Ampath AMRS' THEN 'AMRS'
				END
	WHERE Emr IN ('Open Medical Records System - OpenMRS', 'Ampath AMRS');

	-- clean ExitReason
	UPDATE CT_ARTPatients
		SET ExitReason = lkp_exit_reason.target_name
	FROM CT_ARTPatients AS ARTPatients
	INNER JOIN lkp_exit_reason ON lkp_exit_reason.source_name = ARTPatients.ExitReason;

	--clean Project
	UPDATE CT_ARTPatients 
		SET Project = CASE
					WHEN Project IN ('Ampathplus', 'AMPATH') THEN 'Ampath Plus'
					WHEN Project IN ('UCSF Clinical Kisumu', 'CHAP Uzima', 'DREAM', 'IRDO') THEN 'Kenya HMIS II'
				END
	WHERE Project IN ('Ampathplus', 'AMPATH', 'UCSF Clinical Kisumu', 'CHAP Uzima', 'DREAM', 'IRDO');

	--clean Duration
	UPDATE CT_ARTPatients
		SET Duration = 999
	WHERE CAST(Duration AS FLOAT) < 0;

	--clean AgeARTStart
	UPDATE CT_ARTPatients
		SET AgeARTStart = 999
	WHERE AgeARTStart < 0 OR AgeARTStart > 120;

	--clean AgeLastVisit
	UPDATE CT_ARTPatients
		SET AgeLastVisit = 999
	WHERE AgeLastVisit < 0 OR AgeLastVisit > 120;

	--clean AgeEnrollment
	UPDATE CT_ARTPatients
		SET AgeEnrollment = 999
	WHERE AgeEnrollment < 0 OR AgeEnrollment > 120;

	-- clean PreviousARTRegimen
	UPDATE CT_ARTPatients
		SET PreviousARTRegimen = lkp_regimen.target_name 
	FROM CT_ARTPatients AS ARTPatients
	INNER JOIN lkp_regimen ON lkp_regimen.source_name = ARTPatients.PreviousARTRegimen;

	-- clean LastRegimen
	UPDATE CT_ARTPatients
		SET LastRegimen = lkp_regimen.target_name 
	FROM CT_ARTPatients AS ARTPatients
	INNER JOIN lkp_regimen ON lkp_regimen.source_name = ARTPatients.LastRegimen;

	-- StartRegimen
	UPDATE CT_ARTPatients
		SET StartRegimen = lkp_regimen.target_name 
	FROM CT_ARTPatients AS ARTPatients
	INNER JOIN lkp_regimen ON lkp_regimen.source_name = ARTPatients.StartRegimen;

	-- clean PatientSource
	UPDATE CT_ARTPatients
		SET PatientSource = lkp_patient_source.target_name
	FROM CT_ARTPatients AS ARTPatients
	INNER JOIN lkp_patient_source ON lkp_patient_source.source_name = ARTPatients.PatientSource;

	-- clean ContactAge
	UPDATE CT_ContactListing
		SET ContactAge = 999
	WHERE ContactAge < 0 OR ContactAge > 120;

	-- clean ContactSex
	UPDATE CT_ContactListing
		SET ContactSex = CASE 
							WHEN ContactSex = 'U' THEN 'Undefined'
							WHEN ContactSex = 'M' THEN 'Male'
							WHEN ContactSex = 'F' THEN 'Female'
						END
	WHERE ContactSex IN ('U', 'M', 'F');

	-- clean RelationshipWithPatient
	UPDATE CT_ContactListing
		SET RelationshipWithPatient = CASE 
										WHEN RelationshipWithPatient IN ('Daughter', 'Son') THEN 'Child'
										WHEN RelationshipWithPatient = 'Co-wife' THEN 'Sexual Partner'
										WHEN RelationshipWithPatient = 'Select' THEN 'OTHER'
										WHEN RelationshipWithPatient IN ('undefined', 'None') THEN 'Undefined'
										WHEN RelationshipWithPatient = 'Nice' THEN 'Niece'
									END
	WHERE RelationshipWithPatient IN ('Daughter', 'Son', 'Co-wife', 'Select', 'undefined', 'None', 'Niece');

	-- clean IPVScreeningOutcome
	UPDATE CT_ContactListing
		SET IPVScreeningOutcome = CASE 
									WHEN IPVScreeningOutcome = '0' THEN 'False'
									WHEN IPVScreeningOutcome = 'No' THEN 'False'
									WHEN IPVScreeningOutcome = 'Yes' THEN 'True'
									WHEN IPVScreeningOutcome  IN ('1065', '1066') THEN 'OTHER'
								END
	 WHERE IPVScreeningOutcome IN ('0', 'No', 'Yes', '1065', '1066');

	 -- clean KnowledgeOfHivStatus   
	 UPDATE CT_ContactListing
		SET KnowledgeOfHivStatus = CASE 
									WHEN KnowledgeOfHivStatus IN ('Negative', 'Yes', 'Positive', 'Exposed Infant', 'Exposed', '664', '703') THEN 'Yes'  
									WHEN KnowledgeOfHivStatus IN ('No', 'Unknown', '1067', '0') THEN 'No'
								END
	WHERE KnowledgeOfHivStatus IN ('Negative', 'Yes', 'Positive', 'Exposed Infant', 'Exposed', '664', '703', 'No', 'Unknown', '1067', '0');              

	-- clean Covid19AssessmentDate
	UPDATE CT_Covid
		SET Covid19AssessmentDate = CAST('1900-01-01' AS DATE)
	WHERE Covid19AssessmentDate < CAST('1980-01-01' AS DATE) OR Covid19AssessmentDate > GETDATE();

	-- clean DateGivenFirstDose
	UPDATE CT_Covid
		SET DateGivenFirstDose = CAST('1900-01-01' AS DATE)
	WHERE DateGivenFirstDose < CAST('1980-01-01' AS DATE) OR DateGivenFirstDose > GETDATE();

	-- clean DateGivenSecondDose
	UPDATE CT_Covid
		SET DateGivenSecondDose = CAST('1900-01-01' AS DATE)
	WHERE DateGivenSecondDose < CAST('1980-01-01' AS DATE) OR DateGivenSecondDose > GETDATE();

	
	---------Clean vaccinationStatus------------------
	UPDATE CT_Covid  SET VaccinationStatus = Case When VaccinationStatus='Fully' THEN 'Fully Vaccinated'
		When VaccinationStatus='Fully - Details not Available' THEN 'Fully Vaccinated'
		when VaccinationStatus='Partial' THEN 'Partially Vaccinated'
		when VaccinationStatus='Partial - Details not Available' THEN 'Partially Vaccinated'
		END
	WHERE VaccinationStatus IN ('Fully - Details not Available', 'Partial','Partial - Details not Available','Fully');

	-- clean DrinkingAlcohol
	UPDATE CT_DrugAlcoholScreening
		SET DrinkingAlcohol = CASE 
								WHEN DrinkingAlcohol = 'No' THEN 'Never'
								WHEN DrinkingAlcohol = 'Yes' THEN 'OTHER'
							END
	WHERE DrinkingAlcohol IN ('No', 'Yes');

	-- clean Smoking
	UPDATE CT_DrugAlcoholScreening
		SET Smoking = CASE
						WHEN Smoking = 'No' THEN 'Never smoked'
						WHEN Smoking = 'Yes' THEN 'OTHER'
					END
	WHERE Smoking IN ('No', 'Yes');

	-- clean DateOfFirstSession
	UPDATE CT_EnhancedAdherenceCounselling
		SET DateOfFirstSession = CAST('1900-01-01' AS DATE)
	WHERE DateOfFirstSession < CAST('1900-01-01' AS DATE) OR DateOfFirstSession > GETDATE();

	-- clean EACFollowupDate
	UPDATE CT_EnhancedAdherenceCounselling
		SET EACFollowupDate = CAST('1900-01-01' AS DATE)
	WHERE EACFollowupDate < CAST('1900-01-01' AS DATE) OR DATEDIFF(day, GETDATE(), EACFollowupDate) > 365;

	-- clean TBScreening
	UPDATE CT_Ipt
		SET TBScreening = CASE
									WHEN IndicationForIPT = '1' THEN 'Screened'
									WHEN IndicationForIPT IN ('TB Screening not done', '0') THEN  'Not Screened'
								END
	WHERE TBScreening IN ('1', 'Screening not done', '0');

	-- clean IndicationForIPT
	UPDATE CT_Ipt
		SET IndicationForIPT = CASE 
									WHEN IndicationForIPT IN ('Adherence Issues', 'Poor adherence') THEN 'Adherence Issues'
									WHEN IndicationForIPT = 'Client Traced back a' THEN 'Client Traced back'
									WHEN IndicationForIPT IN ('No more drug Interru', 'Toxicity Resolved', 'Other patient decisi', 'Pregnancy', 'Patient declined', 'Other', 'High CD4', 'Education', 'Client Discharged fr') THEN 'OTHER'
								END
	WHERE IndicationForIPT IN ('Adherence Issues', 'Poor adherence', 'Client Traced back a', 'No more drug Interru', 'Toxicity Resolved', 'Other patient decisi', 'Pregnancy', 
								'Patient declined', 'Other', 'High CD4', 'Education', 'Client Discharged fr'); 

	-- clean OTZEnrollmentDate
	UPDATE CT_Otz
		SET OTZEnrollmentDate = CAST('1900-01-01' AS DATE)
	WHERE OTZEnrollmentDate < CAST('2012-01-01' AS DATE) OR OTZEnrollmentDate >  GETDATE();

	-- clean TransferInStatus
	UPDATE CT_Otz
		SET TransferInStatus = CASE
									WHEN TransferInStatus IN ('Yes', '1') THEN 'Yes'
									WHEN TransferInStatus IN ('No', '0') THEN 'No'
								END
	WHERE TransferInStatus IN ('Yes', '1', 'No', '0');

	-- clean SupportGroupInvolvement
	UPDATE CT_Otz
		SET SupportGroupInvolvement = CASE
										WHEN SupportGroupInvolvement IN ('Yes', '1') THEN 'Yes'
										WHEN SupportGroupInvolvement IN ('No', '0') THEN 'No'
									END
	WHERE SupportGroupInvolvement IN ('Yes', '1', 'No', '0');

	-- clean bWHODate
	--UPDATE CT_PatientsWABWHOCD4
	--	SET bWHODate = CAST('1900-01-01' AS DATE)
	--WHERE bWHODate < CAST('1980-01-01' AS DATE) OR bWHODate > GETDATE();

	---- clean bCD4
	--UPDATE CT_PatientsWABWHOCD4
	--	SET bCD4 = 999
	--WHERE bCD4 < 0 ;

	---- clean bCD4Date
	--UPDATE CT_PatientsWABWHOCD4
	--	SET bCD4Date = CAST('1900-01-01' AS DATE)
	--WHERE bCD4Date < CAST('1980-01-01' AS DATE) OR bCD4Date > GETDATE();

	------Update Date of Birth to missing where Year <1910------------------------------

	------Update Date of Birth to missing where Year <1910------------------------------
	UPDATE ODS.dbo.CT_Patient   SET DOB =CAST ('1900-01-01' as DATE) where (DOB) < CAST ('1910-01-01' AS DATE)
	;

	UPDATE ODS.dbo.CT_Patient   SET DOB =CAST ('1900-01-01' as DATE) where (DOB) > GETDATE()
	;
	-------------------Update MaritalStatus-------------------------------------------------------------
	UPDATE M SET MaritalStatus = T.Target_MaritalStatus
	from ODS.dbo.CT_Patient M
	inner JOIN ODS.[dbo].lkp_MaritalStatus T
	on M.MaritalStatus = T.Source_MaritalStatus;

	-------------------Update EducationLevel-------------------------------------------------------------
	UPDATE   M  SET  M.EducationLevel= T.TargetEducationLevel   from ODS.dbo.CT_Patient M 
	INNER JOIN Lkp_EducationLevel T  ON M.EducationLevel = T.SourceEducationLevel
	--WHERE M.DateImported = CAST(GETDATE() AS DATE) OR M.DateImported = CAST(GETDATE()-1 AS DATE)
	;

	-------------------Update RegistrationDates-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient   SET RegistrationDate =cast ('1900-01-01' as date) where Year (RegistrationDate) <1980
	;
	UPDATE ODS.dbo.CT_Patient   SET RegistrationDate =cast ('1900-01-01' as date) where Year (RegistrationDate) > GETDATE()
	;

	UPDATE ODS.dbo.CT_Patient   SET RegistrationAtCCC =cast ('1900-01-01' as date) where Year (RegistrationAtCCC) <1980
	;
	UPDATE ODS.dbo.CT_Patient   SET RegistrationAtCCC =cast ('1900-01-01' as date) where Year (RegistrationAtCCC) > GETDATE()
	;

	UPDATE ODS.dbo.CT_Patient   SET RegistrationAtPMTCT =cast ('1900-01-01' as date) where Year (RegistrationAtPMTCT) <1980
	;
	UPDATE ODS.dbo.CT_Patient   SET RegistrationAtPMTCT =cast ('1900-01-01' as date) where Year (RegistrationAtPMTCT) > GETDATE()
	;

	UPDATE ODS.dbo.CT_Patient   SET RegistrationAtTBClinic =cast ('1900-01-01' as date) where Year (RegistrationAtTBClinic) <1980
	;
	UPDATE ODS.dbo.CT_Patient   SET RegistrationAtTBClinic =cast ('1900-01-01' as date) where Year (RegistrationAtTBClinic) > GETDATE()
	;
	-------------------Update PreviousARTStartDates-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient   SET PreviousARTStartDate =cast ('1900-01-01' as date) where Year (PreviousARTStartDate) <1980
	;
	UPDATE ODS.dbo.CT_Patient   SET PreviousARTStartDate =cast ('1900-01-01' as date) where Year (PreviousARTStartDate) > GETDATE()
	;
	-------------------Update LastVisitDates-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient   SET LastVisit =cast ('1900-01-01' as date) where Year (LastVisit) <1980
	UPDATE ODS.dbo.CT_Patient   SET LastVisit =cast ('1900-01-01' as date) where Year (LastVisit) >GETDATE()
	;

	-------------------Update EMR-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient  SET Emr = CASE
					WHEN Emr = 'Open Medical Records System - OpenMRS' THEN  'OpenMRS'
					WHEN Emr = 'Ampath AMRS' THEN 'AMRS'
				END
	WHERE Emr IN ('Open Medical Records System - OpenMRS', 'Ampath AMRS')
	;
	-------------------Update Project-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient  SET Project = CASE
					WHEN Project  in ('AMPATH','Ampath Plus', 'Ampathplus') THEN  'AMPATH'
					 WHEN Project  in ('CHAP Uzima','EDARP','IRDO','UCSF Clinical Kisumu','Kenya HMIS II') THEN  'Kenya HMIS II'
				   ELSE Project
				END;
	-------------------Update Orphan-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient  SET Orphan = CASE
					WHEN Orphan  in ('NOT WORKING NOW', '') THEN  'NOT PROVIDED'
					WHEN orphan is null THEN 'NOT PROVIDED'
				END
				where Orphan in ('NOT WORKING NOW','');
	-------------------Update PatientType-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient  SET PatientType = CASE
					WHEN PatientType  in ('New', 'New client','Re-enroll') THEN  'New Client'
					WHEN PatientType in  ('Transfer in','Transfer-In') THEN 'Transfer in'
					WHEN PatientType='Transit' THEN 'Transit'
				END
				where PatientType in ('New', 'New client','Re-enroll','Transfer in','Transfer-In','Transit','')
	;

	-------------------Update Regimen-------------------------------------------------------------
	UPDATE   M  SET  M.PreviousARTExposure= T.Target_Regimen   from ODS.dbo.CT_Patient M 
	INNER JOIN lkp_RegimenMap T  ON M.PreviousARTExposure = T.Source_Regimen;

	-------------------Update Inschool-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient  SET Inschool = CASE
					WHEN  Inschool in ('New', 'New client','Re-enroll') THEN  'New Client'
					WHEN Inschool in  ('Transfer in','Transfer-In') THEN 'Transfer in'
					WHEN Inschool='Transit' THEN 'Transit'
				END
				where Inschool in ('New', 'New client','Re-enroll','Transfer in','Transfer-In','Transit','')
	;
	-------------------Update PopulationType-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patient  SET PopulationType = CASE
					WHEN  PopulationType in ('General Population', 'General Population','GeneralPopulation') THEN  ' General Population'
					WHEN PopulationType in  ('FSW','Female Having Sex With Female',' Key Population','Key population') THEN ' Key Population'			
				END
				where PopulationType in ('General Population', 'General Population','GeneralPopulation','FSW','Female Having Sex With Female',' Key Population','Key population','')
	;
	UPDATE ODS.dbo.CT_Patient  SET KeyPopulationType = CASE
					WHEN  KeyPopulationType in ('MSM', 'MSW') THEN  'MSM'
					WHEN KeyPopulationType ='FSW' THEN 'FSW'
					WHEN KeyPopulationType='PWID' THEN 'PWID'
					WHEN KeyPopulationType='Transgender' THEN 'Transgender'	
				END
				where KeyPopulationType in ('MSM','MSW','FSW','PWID','N/A','Transgender','')
	;
-------------------Update PatientResidentCounty-------------------------------------------------------------

	UPDATE   CT_Patient  SET  CT_Patient.PatientResidentCounty=NULL;

	---------------------------------UpdatePatientSource--------------------------------------------------
	UPDATE   M  SET  M.PatientSource= T.target_name  from ODS.dbo.CT_Patient M 
	INNER JOIN lkp_patient_source T  ON M.PatientSource = T.source_name
	;

	UPDATE ODS.dbo.CT_Patient   SET DateConfirmedHIVPositive =cast ('1900-01-01' as date) where Year (DateConfirmedHIVPositive) >GETDATE()
	;

	UPDATE ODS.dbo.CT_Patient   SET DateConfirmedHIVPositive =cast ('1900-01-01' as date) where Year (DateConfirmedHIVPositive) < 1980
	;

	UPDATE ODS.dbo.CT_Patient   SET TransferInDate =cast ('1900-01-01' as date) where Year (TransferInDate) >GETDATE()
	;

	UPDATE ODS.dbo.CT_Patient   SET TransferInDate =cast ('1900-01-01' as date) where Year (TransferInDate) < 1980
	;

	UPDATE   dbo.CT_Ovc SET  dbo.CT_Ovc.PartnerOfferingOVCServices= lkp_PartnerOfferingOVCServices.target_name  from ODS.dbo.CT_Ovc 
	INNER JOIN dbo.lkp_PartnerOfferingOVCServices   ON dbo.CT_Ovc.PartnerOfferingOVCServices = lkp_PartnerOfferingOVCServices.source_name
	;
	-- clean OIDate
	UPDATE CT_PatientVisits 
		SET OIDate = CAST('1900-01-01' AS DATE)
	WHERE OIDate < CAST('2000-01-01' AS DATE) OR OIDate > GETDATE()
	;

	-- clean Weight
	UPDATE CT_PatientVisits 
		SET Weight = CAST(999 AS FLOAT)
	WHERE Weight < CAST(0 AS FLOAT) OR Weight > CAST(200 AS FLOAT)
	;

	-- clean Height
	UPDATE CT_PatientVisits 
		SET Height = CAST(999 AS FLOAT)
	WHERE Height < CAST(0 AS FLOAT) OR Height > CAST(250 AS FLOAT)
	;

	-- clean StabilityAssessment
	UPDATE CT_PatientVisits
		SET StabilityAssessment = CASE 
									WHEN StabilityAssessment = 'Stable1' THEN 'Stable'
									WHEN StabilityAssessment = 'Not Stable' THEN 'Unstable'
								END
	WHERE StabilityAssessment IN ('Stable1', 'Not Stable')
	;
	-- clean Pregnant
	UPDATE CT_PatientVisits
		SET Pregnant = CASE 
							WHEN Pregnant IN ('True', 'LIVE BIRTH') THEN 'Yes'
							WHEN Pregnant IN ('No - Miscarriage (mc)', 'No - Induced Abortion (ab)', 'RECENTLY MISCARRIAGED') THEN 'No'
							WHEN Pregnant = 'UNKNOWN' THEN NULL
						END
	WHERE Pregnant IN ('True', 'LIVE BIRTH', 'No - Miscarriage (mc)', 'No - Induced Abortion (ab)', 'RECENTLY MISCARRIAGED', 'UNKNOWN')
	;
	-- clean FamilyPlanningMethod
	UPDATE CT_PatientVisits
		SET FamilyPlanningMethod = lkp_family_planning_method.target_name 
	FROM CT_PatientVisits AS PatientVisits
	INNER JOIN lkp_family_planning_method ON lkp_family_planning_method.source_name = PatientVisits.FamilyPlanningMethod
	;
	-- clean PwP
	UPDATE CT_PatientVisits
		SET PwP = lkp_pwp.target_name 
	FROM CT_PatientVisits AS PatientVisits
	INNER JOIN lkp_pwp ON lkp_pwp.source_name = PatientVisits.PwP
	;

	-- clean DifferentiatedCare
	UPDATE CT_PatientVisits
		SET DifferentiatedCare = CASE 
									WHEN DifferentiatedCare = 'Standard Care' THEN 'Standard Care'
									WHEN DifferentiatedCare IN ('Express Care','Express','Fast Track care','Differentiated care model','MmasRecommendation0') THEN 'Fast Track'
									WHEN DifferentiatedCare IN  ('Community ART Distribution_Point', 'Individual Patient ART Distribution_community', 'Community Based Dispensing', 'Community ART distribution - HCW led', 'Community_Based_Dispensing') THEN 'Community ART Distribution HCW Led'
									WHEN DifferentiatedCare IN  ('Community ART distribution � Peer led','Community ART Distribution - Peer Led') THEN 'Community ART Distribution peer led'
									WHEN DifferentiatedCare IN ('Facility ART Distribution Group', 'FADG') THEN 'Facility ART distribution Group'
								END 
	WHERE DifferentiatedCare IN ('Standard Care', 'Community ART Distribution_Point', 'Express Care', 'Express', 'Fast Track care', 'Differentiated care model', 'MmasRecommendation0', 
									'Community ART Distribution_Point', 'Individual Patient ART Distribution_community', 'Community Based Dispensing', 'Community ART distribution - HCW led',
									'Community_Based_Dispensing', 'Community ART distribution � Peer led', 'Community ART Distribution - Peer Led', 'Facility ART Distribution Group', 'FADG'
								)
	;
	-- clean VisitDate
	UPDATE CT_PatientVisits 
		SET VisitDate = CAST('1900-01-01' AS DATE)
	WHERE VisitDate < CAST('1980-01-01' AS DATE) OR VisitDate > GETDATE()
	;
	-- clean NextAppointmentDate
	UPDATE CT_PatientVisits
		SET NextAppointmentDate = CAST('1900-01-01' AS DATE)
	WHERE NextAppointmentDate < CAST('1900-01-01' AS DATE) OR DATEDIFF(day, VisitDate, NextAppointmentDate) > 365
	;
	-- clean ExitDate
	UPDATE CT_PatientStatus
		SET ExitDate = CAST('1900-01-01' AS DATE)
	WHERE ExitDate < CAST('2004-01-01' AS DATE) OR ExitDate > GETDATE();
	-- clean EMR 
	UPDATE CT_PatientStatus
		SET Emr = CASE
					WHEN Emr = 'Ampath AMRS' THEN 'AMRS'
				END
	WHERE Emr = 'Ampath AMRS';
	-- clean Project
	UPDATE CT_PatientStatus
		SET Project = CASE
					WHEN Project IN ('Ampathplus') THEN  'Ampath Plus'
					WHEN Project IN ('UCSF Clinical Kisumu', 'CHAP Uzima', 'DREAM Kenya Trusts', 'IRDO')  THEN 'Kenya HMIS II'
				END
	WHERE Project IN ('Ampathplus', 'AMPATH', 'UCSF Clinical Kisumu', 'CHAP Uzima', 'DREAM Kenya Trusts', 'IRDO');

	--clean Drug
	UPDATE CT_PatientPharmacy
		SET Drug = lkp_regimen.target_name 
	FROM CT_PatientPharmacy AS PatientPharmacy
	INNER JOIN lkp_regimen ON lkp_regimen.source_name = PatientPharmacy.Drug;

	--clean Duration
	UPDATE CT_PatientPharmacy
		SET Duration = 999
	WHERE CAST(Duration AS FLOAT) < 0
	;
	-- clean ExpectedReturn
	UPDATE CT_PatientPharmacy
		SET ExpectedReturn = CAST('1900-01-01' AS DATE)
	WHERE ExpectedReturn < CAST('1900-01-01' AS DATE) --OR ExpectedReturn >  GETDATE() Commented by Dennis/Mary/Koske and Mumo
	;

	-- clean TreatmentType
	UPDATE CT_PatientPharmacy
		SET TreatmentType = lkp_treatment_type.target_name
	FROM CT_PatientPharmacy AS PatientPharmacy
	INNER JOIN lkp_treatment_type ON lkp_treatment_type.source_name = PatientPharmacy.TreatmentType
	;

	-- clean PeriodTaken
	UPDATE CT_PatientPharmacy
		SET PeriodTaken = 999
	WHERE ISNUMERIC(PeriodTaken) = 0 OR CAST(PeriodTaken AS FLOAT) < 0
	;

	--clean ProphylaxisType
	UPDATE CT_PatientPharmacy
		SET ProphylaxisType = lkp_prophylaxis_type.target_name
	FROM CT_PatientPharmacy AS PatientPharmacy
	INNER JOIN lkp_prophylaxis_type ON lkp_prophylaxis_type.source_name = PatientPharmacy.ProphylaxisType
	;

	-- clean Emr
	UPDATE CT_PatientPharmacy
		SET Emr = CASE
					WHEN Emr = 'Open Medical Records System - OpenMRS' THEN 'OpenMRS'
					WHEN Emr = 'Ampath AMRS' THEN 'AMRS'
				END
	WHERE Emr IN ('Open Medical Records System - OpenMRS', 'Ampath AMRS')
	;

	-- clean Project
	UPDATE CT_PatientPharmacy
		SET Project = CASE
						WHEN Project IN ('Ampathplus', 'AMPATH') THEN  'Ampath Plus'
						WHEN Project IN ('UCSF Clinical Kisumu', 'CHAP Uzima', 'DREAM', 'IRDO')  THEN 'Kenya HMIS II'
				END
	WHERE Project IN ('Ampathplus', 'AMPATH', 'UCSF Clinical Kisumu', 'CHAP Uzima', 'DREAM', 'IRDO');

	-- clean TestName
	UPDATE CT_PatientLabs 
		SET TestName = lkp_test_name.target_name
	FROM CT_PatientLabs AS patient_labs
	INNER JOIN lkp_test_name ON lkp_test_name.source_name = patient_labs.TestName;

	-- clean ReportedbyDate
	UPDATE CT_PatientLabs 
		SET ReportedbyDate = CAST('1900-01-01' AS DATE)
	WHERE ReportedbyDate < CAST('1900-01-01' AS DATE) OR ReportedbyDate > GETDATE();

	-- clean OrderedbyDate
	UPDATE CT_PatientLabs 
		SET OrderedbyDate = CAST('1900-01-01' AS DATE)
	WHERE OrderedbyDate < CAST('1900-01-01' AS DATE) OR OrderedbyDate > GETDATE();
	-- clean EMR 
	UPDATE CT_PatientLabs 
		SET Emr = CASE
					WHEN Emr = 'Open Medical Records System - OpenMRS' THEN 'OpenMRS'
					WHEN Emr = 'Ampath AMRS' THEN 'AMRS'
				END
	WHERE Emr IN ('Open Medical Records System - OpenMRS', 'Ampath AMRS');
	-- clean TestResult
	UPDATE CT_PatientLabs
		SET TestResult = NULL
	WHERE TRY_CAST(TestResult AS FLOAT) < 0
		AND TestName = 'Viral Load'

	update [dbo].[CT_DQS_Log]
	set [LoadEndDateTime] = Getdate()
	where [LoadStartDateTime] is null
	
END

