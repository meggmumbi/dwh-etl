USE [ODS]
GO
/****** Object:  User [palladium_analytics_readonly]    Script Date: 2/9/2023 3:05:12 PM ******/
CREATE USER [palladium_analytics_readonly] FOR LOGIN [palladium_analytics_readonly] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Security_Test]    Script Date: 2/9/2023 3:05:12 PM ******/
CREATE USER [Security_Test] FOR LOGIN [Security_Test] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [palladium_analytics_readonly]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Security_Test]
GO
/****** Object:  Table [dbo].[HTS_ClientLinkages]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_ClientLinkages](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[EnrolledFacilityName] [nvarchar](800) NULL,
	[ReferralDate] [date] NULL,
	[DateExtracted] [date] NULL,
	[DateEnrolled] [date] NULL,
	[DatePrefferedToBeEnrolled] [date] NULL,
	[FacilityReferredTo] [nvarchar](800) NULL,
	[HandedOverTo] [nvarchar](800) NULL,
	[HandedOverToCadre] [nvarchar](800) NULL,
	[ReportedCCCNumber] [nvarchar](800) NULL,
	[ReportedStartARTDate] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ARTPatients]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ARTPatients](
	[PatientPK] [varchar](250) NULL,
	[PatientID] [varchar](250) NULL,
	[DOB] [date] NULL,
	[AgeEnrollment] [float] NULL,
	[AgeARTStart] [float] NULL,
	[AgeLastVisit] [float] NULL,
	[SiteCode] [varchar](250) NULL,
	[FacilityName] [varchar](250) NULL,
	[RegistrationDate] [date] NULL,
	[PatientSource] [varchar](255) NULL,
	[Gender] [varchar](250) NULL,
	[StartARTDate] [date] NULL,
	[PreviousARTStartDate] [date] NULL,
	[PreviousARTRegimen] [varchar](250) NULL,
	[StartARTAtThisFacility] [date] NULL,
	[StartRegimen] [varchar](250) NULL,
	[StartRegimenLine] [varchar](250) NULL,
	[LastARTDate] [date] NULL,
	[LastRegimen] [varchar](250) NULL,
	[LastRegimenLine] [varchar](250) NULL,
	[Duration] [varchar](250) NULL,
	[ExpectedReturn] [date] NULL,
	[Provider] [varchar](250) NULL,
	[LastVisit] [date] NULL,
	[ExitReason] [varchar](250) NULL,
	[ExitDate] [date] NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[PreviousARTRegimen_Orig] [varchar](50) NULL,
	[StartRegimen_Orig] [varchar](50) NULL,
	[LastRegimen_Orig] [varchar](50) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](150) NULL,
	[created] [date] NULL,
	[PreviousARTUse] [nvarchar](4000) NULL,
	[PreviousARTPurpose] [nvarchar](4000) NULL,
	[DateLastUsed] [datetime] NULL,
	[DateAsOf] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Patient]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Patient](
	[Id] [nvarchar](4000) NULL,
	[PatientID] [varchar](100) NULL,
	[PatientPK] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[FacilityName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[DOB] [datetime2](7) NULL,
	[RegistrationDate] [date] NULL,
	[RegistrationAtCCC] [date] NULL,
	[RegistrationAtPMTCT] [date] NULL,
	[RegistrationAtTBClinic] [date] NULL,
	[PatientSource] [varchar](250) NULL,
	[Region] [varchar](250) NULL,
	[District] [varchar](250) NULL,
	[Village] [varchar](250) NULL,
	[ContactRelation] [varchar](250) NULL,
	[LastVisit] [date] NULL,
	[MaritalStatus] [varchar](250) NULL,
	[EducationLevel] [varchar](250) NULL,
	[DateConfirmedHIVPositive] [date] NULL,
	[PreviousARTExposure] [varchar](250) NULL,
	[PreviousARTStartDate] [date] NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](250) NULL,
	[RegistrationYear] [int] NULL,
	[MPIPKV] [varchar](250) NULL,
	[Orphan] [varchar](250) NULL,
	[Inschool] [varchar](250) NULL,
	[PatientType] [varchar](250) NULL,
	[PopulationType] [varchar](250) NULL,
	[KeyPopulationType] [varchar](250) NULL,
	[PatientResidentCounty] [varchar](250) NULL,
	[PatientResidentSubCounty] [varchar](250) NULL,
	[PatientResidentLocation] [varchar](250) NULL,
	[PatientResidentSubLocation] [varchar](250) NULL,
	[PatientResidentWard] [varchar](250) NULL,
	[PatientResidentVillage] [varchar](250) NULL,
	[TransferInDate] [date] NULL,
	[Occupation] [nvarchar](4000) NULL,
	[NUPI] [nvarchar](3200) NULL,
	[Processed] [bit] NULL,
	[StatusAtCCC] [nvarchar](3200) NULL,
	[StatusAtPMTCT] [nvarchar](3200) NULL,
	[StatusAtTBClinic] [nvarchar](3200) NULL,
	[Created] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_hts_CT_ClientLinkages]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_hts_CT_ClientLinkages]
AS
SELECT  * FROM 
(
SELECT  
	   lnk.[FacilityName]
      ,lnk.[SiteCode]
	   ,lnk.[PatientPk] as ct_patientPk
      ,lnk.[PatientPk]
      ,[HtsNumber]
      ,lnk.[Emr]
      ,lnk.[Project]
      ,[EnrolledFacilityName]
      ,[ReferralDate]
      ,[DateEnrolled]
      ,[DatePrefferedToBeEnrolled]
      ,[FacilityReferredTo]
      ,[HandedOverTo]
      ,[HandedOverToCadre]
      ,[ReportedCCCNumber]
      ,[ReportedStartARTDate]
	  ,P.PatientID AS CCCNumber
	  ,p.CKV
	  ,PA.StartArTDate
  FROM [ODS].[dbo].[HTS_ClientLinkages] lnk
  LEFT JOIN CT_Patient P On P.SiteCode=lnk.SiteCode and P.PatientPK = lnk.PatientPK 
  LEFT JOIN CT_ArtPatients PA on P.CKV = PA.CKV
UNION ALL 

  SELECT 
  A.[FacilityName]
      ,A.[SiteCode]
	  , P.PatientPK as ct_PatientPK
      ,A.[PatientPk]
      ,A.[HtsNumber]
      ,A.[Emr]
      ,A.[Project]
      ,A.[EnrolledFacilityName]
      ,A.[ReferralDate]
      ,A.[DateEnrolled]
      ,A.[DatePrefferedToBeEnrolled]
      ,A.[FacilityReferredTo]
      ,A.[HandedOverTo]
      ,A.[HandedOverToCadre]
      ,A.[ReportedCCCNumber]
      ,A.[ReportedStartARTDate]
  	  ,P.PatientID AS CCCNumber
	  ,p.CKV
      ,PA.StartArtDate
    
  FROM 
  (
  SELECT  
	   lnk.[FacilityName]
      ,lnk.[SiteCode]
      ,lnk.[PatientPk]
      ,[HtsNumber]
      ,lnk.[Emr]
      ,lnk.[Project]
      ,[EnrolledFacilityName]
      ,[ReferralDate]
      ,[DateEnrolled]
      ,[DatePrefferedToBeEnrolled]
      ,[FacilityReferredTo]
      ,[HandedOverTo]
      ,[HandedOverToCadre]
      ,[ReportedCCCNumber]
      ,[ReportedStartARTDate]
	  ,P.PatientID AS CCCNumber
	  ,p.CKV
	
  FROM [ODS].[dbo].[HTS_ClientLinkages] lnk
  LEFT JOIN CT_Patient P On P.SiteCode=lnk.SiteCode and P.PatientPK = lnk.PatientPK 

  ) A 
  LEFT JOIN CT_Patient P ON P.PatientID = A.ReportedCCCNumber AND P.SiteCode=A.SiteCode 
  LEFT JOIN CT_ArtPatients PA on P.CKV = PA.CKV --WHERE P.PatientUID IS NOT NULL


) AS All_Linkages 
GO
/****** Object:  View [dbo].[vw_hts_ClientLinkages]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_hts_ClientLinkages]
AS
SELECT  * FROM vw_hts_CT_ClientLinkages
union all
select 
m.[FacilityName], 
m.[SiteCode], 
[ct_patientPk],
m.[PatientPk], 
m.[HtsNumber],
m.[Emr], m.[Project],  
m.[EnrolledFacilityName],
m.[ReferralDate], 
m.[DateEnrolled], 
m.[DatePrefferedToBeEnrolled],
m.[FacilityReferredTo], 
m.[HandedOverTo], 
m.[HandedOverToCadre], 
m.[ReportedCCCNumber], 
m.[ReportedStartARTDate],
[CCCNumber], 
[CKV], 
[StartArTDate] 
FROM HTS_ClientLinkages  m
LEFT JOIN  vw_hts_CT_ClientLinkages  v
ON m.PatientPk = v.PatientPk AND m.SiteCode = v.SiteCode
where v.PatientPk IS NULL 
GO
/****** Object:  Table [dbo].[CT_PatientPharmacy]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientPharmacy](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[PatientPharmacyUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](255) NULL,
	[FacilityName] [varchar](255) NULL,
	[PatientPK] [varchar](50) NULL,
	[VisitID] [varchar](50) NULL,
	[Drug] [varchar](250) NULL,
	[DispenseDate] [date] NULL,
	[Duration] [varchar](50) NULL,
	[ExpectedReturn] [date] NULL,
	[TreatmentType] [varchar](250) NULL,
	[PeriodTaken] [varchar](50) NULL,
	[ProphylaxisType] [varchar](50) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](150) NULL,
	[RegimenLine] [varchar](250) NULL,
	[RegimenChangedSwitched] [nvarchar](4000) NULL,
	[RegimenChangeSwitchReason] [nvarchar](4000) NULL,
	[StopRegimenReason] [nvarchar](4000) NULL,
	[StopRegimenDate] [datetime] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCT_PatientPharmact]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCT_PatientPharmact]
AS
SELECT CKV, RegimenLine, RegimenChangedSwitched, RegimenChangeSwitchReason, Drug, FacilityName
FROM     dbo.CT_PatientPharmacy
GO
/****** Object:  Table [dbo].[CT_PatientVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientVisits](
	[PatientVisitUnique_ID] [varchar](100) NULL,
	[PatientUnique_ID] [varchar](100) NULL,
	[PatientID] [varchar](50) NULL,
	[FacilityName] [varchar](150) NULL,
	[SiteCode] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[VisitID] [varchar](50) NULL,
	[VisitDate] [date] NULL,
	[SERVICE] [varchar](150) NULL,
	[VisitType] [varchar](150) NULL,
	[WHOStage] [varchar](150) NULL,
	[WABStage] [varchar](150) NULL,
	[Pregnant] [varchar](150) NULL,
	[LMP] [varchar](150) NULL,
	[EDD] [varchar](150) NULL,
	[Height] [varchar](150) NULL,
	[Weight] [varchar](150) NULL,
	[BP] [varchar](150) NULL,
	[OI] [varchar](150) NULL,
	[OIDate] [date] NULL,
	[Adherence] [varchar](150) NULL,
	[AdherenceCategory] [varchar](150) NULL,
	[FamilyPlanningMethod] [varchar](150) NULL,
	[PwP] [varchar](150) NULL,
	[GestationAge] [varchar](150) NULL,
	[NextAppointmentDate] [date] NULL,
	[SubstitutionFirstlineReg] [varchar](100) NULL,
	[SubstitutionFirstLineRegReason] [varchar](150) NULL,
	[SubstitutionSecondLineReg] [varchar](100) NULL,
	[SubstitutionSecondLineRegReason] [varchar](150) NULL,
	[SecondLineRegChange] [varchar](100) NULL,
	[SecondLineRegChangeReason] [varchar](150) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](150) NULL,
	[DeletedFlag] [bit] NULL,
	[DifferentiatedCare] [nvarchar](4000) NULL,
	[StabilityAssessment] [nvarchar](4000) NULL,
	[KeyPopulationType] [nvarchar](4000) NULL,
	[PopulationType] [nvarchar](4000) NULL,
	[VisitBy] [nvarchar](4000) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[Muac] [int] NULL,
	[NutritionalStatus] [nvarchar](4000) NULL,
	[EverHadMenses] [nvarchar](4000) NULL,
	[Breastfeeding] [nvarchar](4000) NULL,
	[Menopausal] [nvarchar](4000) NULL,
	[NoFPReason] [nvarchar](4000) NULL,
	[ProphylaxisUsed] [nvarchar](4000) NULL,
	[CTXAdherence] [nvarchar](4000) NULL,
	[CurrentRegimen] [nvarchar](4000) NULL,
	[HCWConcern] [nvarchar](4000) NULL,
	[TCAReason] [nvarchar](4000) NULL,
	[ClinicalNotes] [nvarchar](4000) NULL,
	[GeneralExamination] [nvarchar](4000) NULL,
	[SystemExamination] [nvarchar](4000) NULL,
	[Skin] [nvarchar](4000) NULL,
	[Eyes] [nvarchar](4000) NULL,
	[ENT] [nvarchar](4000) NULL,
	[Chest] [nvarchar](4000) NULL,
	[CVS] [nvarchar](4000) NULL,
	[Abdomen] [nvarchar](4000) NULL,
	[CNS] [nvarchar](4000) NULL,
	[Genitourinary] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCT_PatientVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCT_PatientVisits]
AS
SELECT Height, Weight, CKV, FacilityName, VisitID, VisitDate, VisitBy
FROM     dbo.CT_PatientVisits
GO
/****** Object:  Table [dbo].[ALL_EMRSites]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALL_EMRSites](
	[MFL_Code] [varchar](50) NULL,
	[Facility_Name] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[Owner] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[SDP] [varchar](250) NULL,
	[SDP_Agency] [nvarchar](4000) NULL,
	[Implementation] [varchar](50) NULL,
	[EMR] [varchar](50) NULL,
	[EMR_Status] [varchar](50) NULL,
	[HTS_Use] [varchar](50) NULL,
	[HTS_Deployment] [varchar](50) NULL,
	[HTS_Status] [varchar](50) NULL,
	[IL_Status] [varchar](50) NULL,
	[Registration_IE] [varchar](50) NULL,
	[Phamarmacy_IE] [varchar](50) NULL,
	[mlab] [varchar](50) NULL,
	[Ushauri] [varchar](50) NULL,
	[Nishauri] [varchar](50) NULL,
	[Appointment_Management_IE] [varchar](50) NULL,
	[OVC] [varchar](50) NULL,
	[OTZ] [varchar](50) NULL,
	[PrEP] [varchar](50) NULL,
	[_3PM] [varchar](50) NULL,
	[AIR] [varchar](50) NULL,
	[KP] [varchar](50) NULL,
	[MCH] [varchar](50) NULL,
	[TB] [varchar](50) NULL,
	[Lab_Manifest] [varchar](50) NULL,
	[Comments] [varchar](250) NULL,
	[Project] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AdverseEvent_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AdverseEvent_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxAdverseEventStartDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AdverseEventCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AdverseEventCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxAdverseEventStartDate] [date] NULL,
	[AdverseEventCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AdverseEvents]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AdverseEvents](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[AdverseEventsUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [varchar](100) NULL,
	[Patientpk] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[AdverseEvent] [varchar](100) NULL,
	[AdverseEventStartDate] [date] NULL,
	[AdverseEventEndDate] [date] NULL,
	[Severity] [varchar](100) NULL,
	[VisitDate] [date] NULL,
	[EMR] [varchar](50) NULL,
	[Project] [varchar](100) NULL,
	[AdverseEventCause] [varchar](100) NULL,
	[AdverseEventRegimen] [varchar](100) NULL,
	[AdverseEventActionTaken] [varchar](100) NULL,
	[AdverseEventClinicalOutcome] [varchar](100) NULL,
	[dateimported] [date] NULL,
	[AdverseEventIsPregnant] [bit] NULL,
	[CKV] [varchar](100) NULL,
	[FacilityName] [varchar](100) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AllergiesChronicIllness]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AllergiesChronicIllness](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[AllergiesChronicIllnessUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[ChronicIllness] [nvarchar](4000) NULL,
	[ChronicOnsetDate] [datetime2](7) NULL,
	[knownAllergies] [nvarchar](4000) NULL,
	[AllergyCausativeAgent] [nvarchar](4000) NULL,
	[AllergicReaction] [nvarchar](4000) NULL,
	[AllergySeverity] [nvarchar](4000) NULL,
	[AllergyOnsetDate] [datetime2](7) NULL,
	[Skin] [nvarchar](4000) NULL,
	[Eyes] [nvarchar](4000) NULL,
	[ENT] [nvarchar](4000) NULL,
	[Chest] [nvarchar](4000) NULL,
	[CVS] [nvarchar](4000) NULL,
	[Abdomen] [nvarchar](4000) NULL,
	[CNS] [nvarchar](4000) NULL,
	[Genitourinary] [nvarchar](4000) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AllergiesChronicIllness_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AllergiesChronicIllness_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AllergiesChronicIllnessCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AllergiesChronicIllnessCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[AllergiesChronicIllnessCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ARTPatient_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ARTPatient_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxLastVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ContactListing]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ContactListing](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[ContactListingUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[PartnerPersonID] [int] NULL,
	[ContactAge] [nvarchar](4000) NULL,
	[ContactSex] [nvarchar](4000) NULL,
	[ContactMaritalStatus] [nvarchar](4000) NULL,
	[RelationshipWithPatient] [nvarchar](4000) NULL,
	[ScreenedForIpv] [nvarchar](4000) NULL,
	[IpvScreening] [nvarchar](4000) NULL,
	[IPVScreeningOutcome] [nvarchar](4000) NULL,
	[CurrentlyLivingWithIndexClient] [nvarchar](4000) NULL,
	[KnowledgeOfHivStatus] [nvarchar](4000) NULL,
	[PnsApproach] [nvarchar](4000) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[ContactPatientPK] [int] NULL,
	[DateCreated] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ContactListing_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ContactListing_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxDateCreated] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ContactListingCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ContactListingCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[ContactListingCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Covid]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Covid](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[CovidUnique_ID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[PatientID] [nvarchar](4000) NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[VisitID] [int] NULL,
	[Covid19AssessmentDate] [date] NULL,
	[ReceivedCOVID19Vaccine] [nvarchar](4000) NULL,
	[DateGivenFirstDose] [date] NULL,
	[FirstDoseVaccineAdministered] [nvarchar](4000) NULL,
	[DateGivenSecondDose] [date] NULL,
	[SecondDoseVaccineAdministered] [nvarchar](4000) NULL,
	[VaccinationStatus] [nvarchar](4000) NULL,
	[VaccineVerification] [nvarchar](4000) NULL,
	[BoosterGiven] [nvarchar](4000) NULL,
	[BoosterDose] [nvarchar](4000) NULL,
	[BoosterDoseDate] [date] NULL,
	[EverCOVID19Positive] [nvarchar](4000) NULL,
	[COVID19TestDate] [date] NULL,
	[PatientStatus] [nvarchar](4000) NULL,
	[AdmissionStatus] [nvarchar](4000) NULL,
	[AdmissionUnit] [nvarchar](4000) NULL,
	[MissedAppointmentDueToCOVID19] [nvarchar](4000) NULL,
	[COVID19PositiveSinceLasVisit] [nvarchar](4000) NULL,
	[COVID19TestDateSinceLastVisit] [date] NULL,
	[PatientStatusSinceLastVisit] [nvarchar](4000) NULL,
	[AdmissionStatusSinceLastVisit] [nvarchar](4000) NULL,
	[AdmissionStartDate] [date] NULL,
	[AdmissionEndDate] [date] NULL,
	[AdmissionUnitSinceLastVisit] [nvarchar](4000) NULL,
	[SupplementalOxygenReceived] [nvarchar](4000) NULL,
	[PatientVentilated] [nvarchar](4000) NULL,
	[TracingFinalOutcome] [nvarchar](4000) NULL,
	[CauseOfDeath] [nvarchar](4000) NULL,
	[CKV] [nvarchar](4000) NULL,
	[DateImported] [datetime] NOT NULL,
	[BoosterDoseVerified] [nvarchar](1280) NULL,
	[Sequence] [nvarchar](1280) NULL,
	[COVID19TestResult] [nvarchar](1280) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Covid_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Covid_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxCovid19AssessmentDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_CovidCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_CovidCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[CovidCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DefaulterTracing]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DefaulterTracing](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[DefaulterTracingUnique_ID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[PatientID] [nvarchar](4000) NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [date] NULL,
	[EncounterId] [int] NULL,
	[TracingType] [nvarchar](4000) NULL,
	[TracingOutcome] [nvarchar](4000) NULL,
	[AttemptNumber] [int] NULL,
	[IsFinalTrace] [nvarchar](4000) NULL,
	[TrueStatus] [nvarchar](4000) NULL,
	[CauseOfDeath] [nvarchar](4000) NULL,
	[Comments] [nvarchar](4000) NULL,
	[BookingDate] [date] NULL,
	[CKV] [nvarchar](4000) NULL,
	[DateImported] [datetime] NOT NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DefaulterTracing_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DefaulterTracing_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DefaulterTracingCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DefaulterTracingCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[DefaulterTracingCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DepressionScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DepressionScreening](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[DepressionScreeningUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[PHQ9_1] [nvarchar](4000) NULL,
	[PHQ9_2] [nvarchar](4000) NULL,
	[PHQ9_3] [nvarchar](4000) NULL,
	[PHQ9_4] [nvarchar](4000) NULL,
	[PHQ9_5] [nvarchar](4000) NULL,
	[PHQ9_6] [nvarchar](4000) NULL,
	[PHQ9_7] [nvarchar](4000) NULL,
	[PHQ9_8] [nvarchar](4000) NULL,
	[PHQ9_9] [nvarchar](4000) NULL,
	[PHQ_9_rating] [nvarchar](4000) NULL,
	[DepressionAssesmentScore] [int] NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DepressionScreening_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DepressionScreening_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DepressionScreeningCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DepressionScreeningCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[DepressionScreeningCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DQS_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DQS_Log](
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DrugAlcoholScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DrugAlcoholScreening](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[DrugAlcoholScreeningUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[DrinkingAlcohol] [nvarchar](4000) NULL,
	[Smoking] [nvarchar](4000) NULL,
	[DrugUse] [nvarchar](4000) NULL,
	[Ident] [int] NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DrugAlcoholScreening_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DrugAlcoholScreening_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DrugAlcoholScreeningCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DrugAlcoholScreeningCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[DrugAlcoholScreeningCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_EnhancedAdherenceCounselling]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_EnhancedAdherenceCounselling](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[EnhancedAdherenceCounsellingUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[SessionNumber] [int] NULL,
	[DateOfFirstSession] [datetime2](7) NULL,
	[PillCountAdherence] [int] NULL,
	[MMAS4_1] [nvarchar](4000) NULL,
	[MMAS4_2] [nvarchar](4000) NULL,
	[MMAS4_3] [nvarchar](4000) NULL,
	[MMAS4_4] [nvarchar](4000) NULL,
	[MMSA8_1] [nvarchar](4000) NULL,
	[MMSA8_2] [nvarchar](4000) NULL,
	[MMSA8_3] [nvarchar](4000) NULL,
	[MMSA8_4] [nvarchar](4000) NULL,
	[MMSAScore] [nvarchar](4000) NULL,
	[EACRecievedVL] [nvarchar](4000) NULL,
	[EACVL] [nvarchar](4000) NULL,
	[EACVLConcerns] [nvarchar](4000) NULL,
	[EACVLThoughts] [nvarchar](4000) NULL,
	[EACWayForward] [nvarchar](4000) NULL,
	[EACCognitiveBarrier] [nvarchar](4000) NULL,
	[EACBehaviouralBarrier_1] [nvarchar](4000) NULL,
	[EACBehaviouralBarrier_2] [nvarchar](4000) NULL,
	[EACBehaviouralBarrier_3] [nvarchar](4000) NULL,
	[EACBehaviouralBarrier_4] [nvarchar](4000) NULL,
	[EACBehaviouralBarrier_5] [nvarchar](4000) NULL,
	[EACEmotionalBarriers_1] [nvarchar](4000) NULL,
	[EACEmotionalBarriers_2] [nvarchar](4000) NULL,
	[EACEconBarrier_1] [nvarchar](4000) NULL,
	[EACEconBarrier_2] [nvarchar](4000) NULL,
	[EACEconBarrier_3] [nvarchar](4000) NULL,
	[EACEconBarrier_4] [nvarchar](4000) NULL,
	[EACEconBarrier_5] [nvarchar](4000) NULL,
	[EACEconBarrier_6] [nvarchar](4000) NULL,
	[EACEconBarrier_7] [nvarchar](4000) NULL,
	[EACEconBarrier_8] [nvarchar](4000) NULL,
	[EACReviewImprovement] [nvarchar](4000) NULL,
	[EACReviewMissedDoses] [nvarchar](4000) NULL,
	[EACReviewStrategy] [nvarchar](4000) NULL,
	[EACReferral] [nvarchar](4000) NULL,
	[EACReferralApp] [nvarchar](4000) NULL,
	[EACReferralExperience] [nvarchar](4000) NULL,
	[EACHomevisit] [nvarchar](4000) NULL,
	[EACAdherencePlan] [nvarchar](4000) NULL,
	[EACFollowupDate] [datetime2](7) NULL,
	[Ident] [int] NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_EnhancedAdherenceCounselling_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_EnhancedAdherenceCounselling_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_EnhancedAdherenceCounsellingCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_EnhancedAdherenceCounsellingCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[EnhancedAdherenceCounsellingCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_FacilityManifest]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_FacilityManifest](
	[Voided] [bit] NULL,
	[Processed] [bit] NULL,
	[SiteCode] [int] NULL,
	[PatientCount] [int] NULL,
	[DateRecieved] [datetime] NULL,
	[Name] [nvarchar](2400) NULL,
	[EmrName] [nvarchar](2400) NULL,
	[EmrSetup] [int] NULL,
	[UploadMode] [int] NULL,
	[Start] [datetime] NULL,
	[End] [datetime] NULL,
	[Tag] [nvarchar](2400) NULL,
	[CreatedOn] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_GbvScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_GbvScreening](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[GbvScreeningUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[IPV] [nvarchar](4000) NULL,
	[PhysicalIPV] [nvarchar](4000) NULL,
	[EmotionalIPV] [nvarchar](4000) NULL,
	[SexualIPV] [nvarchar](4000) NULL,
	[IPVRelationship] [nvarchar](4000) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_GbvScreening_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_GbvScreening_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_GbvScreeningCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_GbvScreeningCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[GbvScreeningCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ipt]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ipt](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[IptVisitUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[OnTBDrugs] [nvarchar](4000) NULL,
	[OnIPT] [nvarchar](4000) NULL,
	[EverOnIPT] [nvarchar](4000) NULL,
	[Cough] [nvarchar](4000) NULL,
	[Fever] [nvarchar](4000) NULL,
	[NoticeableWeightLoss] [nvarchar](4000) NULL,
	[NightSweats] [nvarchar](4000) NULL,
	[Lethargy] [nvarchar](4000) NULL,
	[ICFActionTaken] [nvarchar](4000) NULL,
	[TestResult] [nvarchar](4000) NULL,
	[TBClinicalDiagnosis] [nvarchar](4000) NULL,
	[ContactsInvited] [nvarchar](4000) NULL,
	[EvaluatedForIPT] [nvarchar](4000) NULL,
	[StartAntiTBs] [nvarchar](4000) NULL,
	[TBRxStartDate] [datetime2](7) NULL,
	[TBScreening] [nvarchar](4000) NULL,
	[IPTClientWorkUp] [nvarchar](4000) NULL,
	[StartIPT] [nvarchar](4000) NULL,
	[IndicationForIPT] [nvarchar](4000) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ipt_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ipt_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_IptCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_IptCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[IptCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_LastPatientEncounter]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_LastPatientEncounter](
	[PatientID] [varchar](250) NULL,
	[SiteCode] [varchar](255) NULL,
	[PatientPK] [varchar](250) NULL,
	[Emr] [varchar](100) NULL,
	[NextAppointmentDate] [date] NULL,
	[MainDataNextAppointment] [date] NULL,
	[LastEncounterDate] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Otz]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Otz](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[OtzUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[OTZEnrollmentDate] [datetime2](7) NULL,
	[TransferInStatus] [nvarchar](4000) NULL,
	[ModulesPreviouslyCovered] [nvarchar](4000) NULL,
	[ModulesCompletedToday] [nvarchar](4000) NULL,
	[SupportGroupInvolvement] [nvarchar](4000) NULL,
	[Remarks] [nvarchar](4000) NULL,
	[TransitionAttritionReason] [nvarchar](4000) NULL,
	[OutcomeDate] [datetime2](7) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Otz_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Otz_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_OtzCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_OtzCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[OtzCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ovc]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ovc](
	[PatientUnique_ID] [nvarchar](4000) NULL,
	[OvcUnique_ID] [nvarchar](4000) NULL,
	[PatientID] [nvarchar](4000) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](4000) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](4000) NULL,
	[Project] [nvarchar](4000) NULL,
	[OVCEnrollmentDate] [datetime2](7) NULL,
	[RelationshipToClient] [nvarchar](4000) NULL,
	[EnrolledinCPIMS] [nvarchar](4000) NULL,
	[CPIMSUniqueIdentifier] [nvarchar](4000) NULL,
	[PartnerOfferingOVCServices] [nvarchar](4000) NULL,
	[OVCExitReason] [nvarchar](4000) NULL,
	[ExitDate] [datetime2](7) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ovc_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ovc_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_OvcCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_OvcCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[OvcCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Patient_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Patient_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxRegistrationDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientBaselines]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientBaselines](
	[PatientID] [varchar](50) NULL,
	[FacilityID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[bCD4] [float] NULL,
	[PatientBaselinesUniqueID] [varchar](100) NULL,
	[bCD4Date] [date] NULL,
	[bWHO] [varchar](50) NULL,
	[bWHODate] [date] NULL,
	[eCD4] [float] NULL,
	[eCD4Date] [date] NULL,
	[eWHO] [varchar](50) NULL,
	[eWHODate] [date] NULL,
	[lastWHO] [varchar](50) NULL,
	[lastWHODate] [date] NULL,
	[lastCD4] [float] NULL,
	[lastCD4Date] [date] NULL,
	[m12CD4] [float] NULL,
	[m12CD4Date] [date] NULL,
	[m6CD4] [float] NULL,
	[m6CD4Date] [date] NULL,
	[Emr] [varchar](50) NULL,
	[Project] [varchar](50) NULL,
	[CD4atEnrollment] [float] NULL,
	[CD4atEnrollment_Date] [date] NULL,
	[CD4BeforeARTStart] [float] NULL,
	[CD4BeforeARTStart_Date] [date] NULL,
	[LastCD4AfterARTStart] [float] NULL,
	[LastCD4AfterARTStart_Date] [date] NULL,
	[CD4atEnrollmentPercent] [float] NULL,
	[CD4atEnrollmentPercent_Date] [date] NULL,
	[CD4BeforeARTStartPercent] [float] NULL,
	[CD4BeforeARTStartPercent_Date] [date] NULL,
	[LastCD4AfterARTStartPercent] [float] NULL,
	[LastCD4AfterARTStartPercent_Date] [date] NULL,
	[_6MonthCD4] [float] NULL,
	[_6MonthCD4_Date] [date] NULL,
	[_12MonthCD4] [float] NULL,
	[_12MonthCD4_Date] [date] NULL,
	[_6MonthCD4Percent] [float] NULL,
	[_6MonthCD4Percent_Date] [date] NULL,
	[_12MonthCD4Percent] [float] NULL,
	[_12MonthCD4Percent_Date] [date] NULL,
	[FirstCD4AfterARTStart] [float] NULL,
	[FirstCD4AfterARTStart_Date] [date] NULL,
	[FirtsCD4AfterARTStartPercent] [float] NULL,
	[FirtsCD4AfterARTStartPercent_date] [date] NULL,
	[DateImported] [date] NULL,
	[_6MonthVL] [varchar](50) NULL,
	[_6MonthVlDate] [date] NULL,
	[_12MonthVL] [varchar](50) NULL,
	[_12MonthVLDate] [date] NULL,
	[LstickBaselineCD4] [float] NULL,
	[LstickBaselineCD4_Date] [date] NULL,
	[CKV] [varchar](250) NULL,
	[_18MonthVL] [varchar](50) NULL,
	[_18MonthVlDate] [date] NULL,
	[_24MonthVL] [varchar](50) NULL,
	[_24MonthVLDate] [date] NULL,
	[bWAB] [varchar](50) NULL,
	[bWABDate] [date] NULL,
	[eWAB] [varchar](50) NULL,
	[eWABDate] [date] NULL,
	[lastWAB] [varchar](50) NULL,
	[lastWABDate] [date] NULL,
	[Created] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[PatientCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientLabs]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientLabs](
	[PatientUnique_ID] [varchar](150) NULL,
	[PatientLabsUnique_ID] [varchar](150) NULL,
	[PatientID] [varchar](150) NULL,
	[PatientPk] [varchar](150) NULL,
	[FacilityID] [varchar](150) NULL,
	[SiteCode] [varchar](150) NULL,
	[FacilityName] [varchar](150) NULL,
	[SatelliteName] [varchar](150) NULL,
	[VisitID] [varchar](150) NULL,
	[OrderedbyDate] [date] NULL,
	[ReportedbyDate] [date] NULL,
	[TestName] [varchar](100) NULL,
	[EnrollmentTest] [varchar](150) NULL,
	[TestResult] [varchar](100) NULL,
	[BaselineTest] [varchar](150) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](250) NULL,
	[Reason] [varchar](250) NULL,
	[DateSampleTaken] [datetime] NULL,
	[SampleType] [nvarchar](4000) NULL,
	[Processed] [bit] NULL,
	[Created] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientLabs_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientLabs_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxOrderedbyDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientLabsCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientLabsCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[PatientLabsCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientPharmacyCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientPharmacyCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[PatientPharmacyCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientStatus]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientStatus](
	[PatientUnique_ID] [varchar](100) NULL,
	[PatientStatusUnique_ID] [varchar](100) NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[FacilityName] [varchar](250) NULL,
	[ExitDescription] [varchar](250) NULL,
	[ExitDate] [date] NULL,
	[ExitReason] [varchar](250) NULL,
	[PatientPK] [varchar](50) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](250) NULL,
	[TOVerified] [nvarchar](4000) NULL,
	[TOVerifiedDate] [datetime] NULL,
	[ReEnrollmentDate] [datetime] NULL,
	[ReasonForDeath] [varchar](150) NULL,
	[SpecificDeathReason] [varchar](150) NULL,
	[DeathDate] [date] NULL,
	[EffectiveDiscontinuationDate] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_patientStatus_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_patientStatus_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxExitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientStatusCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientStatusCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[PatientStatusCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientsWABWHOCD4_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientsWABWHOCD4_Log](
	[SiteCode] [nvarchar](320) NULL,
	[MaxbCD4Date] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientVisits_Opt]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientVisits_Opt](
	[PatientVisitUnique_ID] [varchar](100) NULL,
	[PatientUnique_ID] [varchar](100) NULL,
	[PatientID] [nvarchar](800) NULL,
	[FacilityName] [nvarchar](2400) NULL,
	[SiteCode] [nvarchar](800) NULL,
	[PatientPK] [nvarchar](800) NULL,
	[VisitID] [nvarchar](800) NULL,
	[VisitDate] [date] NULL,
	[SERVICE] [nvarchar](2400) NULL,
	[VisitType] [nvarchar](2400) NULL,
	[WHOStage] [nvarchar](2400) NULL,
	[WABStage] [nvarchar](2400) NULL,
	[Pregnant] [nvarchar](2400) NULL,
	[LMP] [nvarchar](2400) NULL,
	[EDD] [nvarchar](2400) NULL,
	[Height] [nvarchar](2400) NULL,
	[Weight] [nvarchar](2400) NULL,
	[BP] [nvarchar](2400) NULL,
	[OI] [nvarchar](2400) NULL,
	[OIDate] [date] NULL,
	[Adherence] [nvarchar](2400) NULL,
	[AdherenceCategory] [nvarchar](2400) NULL,
	[FamilyPlanningMethod] [nvarchar](2400) NULL,
	[PwP] [nvarchar](2400) NULL,
	[GestationAge] [nvarchar](2400) NULL,
	[NextAppointmentDate] [date] NULL,
	[SubstitutionFirstlineReg] [nvarchar](1600) NULL,
	[SubstitutionFirstLineRegReason] [nvarchar](2400) NULL,
	[SubstitutionSecondLineReg] [nvarchar](1600) NULL,
	[SubstitutionSecondLineRegReason] [nvarchar](2400) NULL,
	[SecondLineRegChange] [nvarchar](1600) NULL,
	[SecondLineRegChangeReason] [varchar](150) NULL,
	[Emr] [nvarchar](1600) NULL,
	[Project] [nvarchar](1600) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](150) NULL,
	[DeletedFlag] [bit] NULL,
	[DifferentiatedCare] [nvarchar](4000) NULL,
	[StabilityAssessment] [nvarchar](4000) NULL,
	[KeyPopulationType] [nvarchar](4000) NULL,
	[PopulationType] [nvarchar](4000) NULL,
	[VisitBy] [nvarchar](4000) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[Muac] [int] NULL,
	[NutritionalStatus] [nvarchar](4000) NULL,
	[EverHadMenses] [nvarchar](4000) NULL,
	[Breastfeeding] [nvarchar](4000) NULL,
	[Menopausal] [nvarchar](4000) NULL,
	[NoFPReason] [nvarchar](4000) NULL,
	[ProphylaxisUsed] [nvarchar](4000) NULL,
	[CTXAdherence] [nvarchar](4000) NULL,
	[CurrentRegimen] [nvarchar](4000) NULL,
	[HCWConcern] [nvarchar](4000) NULL,
	[TCAReason] [nvarchar](4000) NULL,
	[ClinicalNotes] [nvarchar](4000) NULL,
	[GeneralExamination] [nvarchar](4000) NULL,
	[SystemExamination] [nvarchar](4000) NULL,
	[Skin] [nvarchar](4000) NULL,
	[Eyes] [nvarchar](4000) NULL,
	[ENT] [nvarchar](4000) NULL,
	[Chest] [nvarchar](4000) NULL,
	[CVS] [nvarchar](4000) NULL,
	[Abdomen] [nvarchar](4000) NULL,
	[CNS] [nvarchar](4000) NULL,
	[Genitourinary] [nvarchar](4000) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PharmacyVisit_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PharmacyVisit_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxDispenseDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Visit_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Visit_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_VisitCount_Log]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_VisitCount_Log](
	[SiteCode] [nvarchar](640) NULL,
	[MaxVisitDate] [date] NULL,
	[VisitCount] [int] NULL,
	[CreatedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricalARTOutcomesBaseTable]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricalARTOutcomesBaseTable](
	[PatientID] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[MFLCode] [varchar](255) NULL,
	[ARTOutcome] [varchar](2) NULL,
	[AsOfDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_clients]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_clients](
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](600) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](600) NULL,
	[Serial] [nvarchar](400) NULL,
	[Dob] [date] NULL,
	[Gender] [nvarchar](240) NULL,
	[MaritalStatus] [nvarchar](400) NULL,
	[KeyPopulationType] [nvarchar](400) NULL,
	[PopulationType] [varchar](50) NULL,
	[DisabilityType] [nvarchar](800) NULL,
	[PatientDisabled] [varchar](200) NULL,
	[County] [nvarchar](400) NULL,
	[SubCounty] [nvarchar](400) NULL,
	[Ward] [nvarchar](600) NULL,
	[NUPI] [nvarchar](200) NULL,
	[MPIPKV] [varchar](250) NULL,
	[Occupation] [nvarchar](100) NULL,
	[PriorityPopulationType] [nvarchar](100) NULL,
	[HtsRecencyId] [nvarchar](100) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_ClientTests]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_ClientTests](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[EncounterId] [int] NULL,
	[DateExtracted] [date] NULL,
	[TestDate] [datetime2](7) NULL,
	[EverTestedForHiv] [nvarchar](800) NULL,
	[MonthsSinceLastTest] [int] NULL,
	[ClientTestedAs] [nvarchar](800) NULL,
	[EntryPoint] [nvarchar](800) NULL,
	[TestStrategy] [nvarchar](800) NULL,
	[TestResult1] [nvarchar](800) NULL,
	[TestResult2] [nvarchar](800) NULL,
	[FinalTestResult] [nvarchar](800) NULL,
	[PatientGivenResult] [nvarchar](800) NULL,
	[TbScreening] [nvarchar](800) NULL,
	[ClientSelfTested] [nvarchar](800) NULL,
	[CoupleDiscordant] [nvarchar](4000) NULL,
	[TestType] [nvarchar](800) NULL,
	[Consent] [nvarchar](800) NULL,
	[Setting] [nvarchar](100) NULL,
	[Approach] [nvarchar](100) NULL,
	[HtsRiskCategory] [nvarchar](100) NULL,
	[HtsRiskScore] [nvarchar](100) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL,
	[ID] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_ClientTracing]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_ClientTracing](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[TracingType] [nvarchar](800) NULL,
	[TracingDate] [datetime2](7) NULL,
	[TracingOutcome] [nvarchar](800) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_EligibilityExtract]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_EligibilityExtract](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](800) NULL,
	[Status] [nvarchar](800) NULL,
	[StatusDate] [datetime2](7) NULL,
	[EncounterId] [nvarchar](800) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime2](7) NULL,
	[PopulationType] [nvarchar](800) NULL,
	[KeyPopulation] [nvarchar](800) NULL,
	[PriorityPopulation] [nvarchar](800) NULL,
	[Department] [nvarchar](800) NULL,
	[PatientType] [nvarchar](800) NULL,
	[IsHealthWorker] [nvarchar](800) NULL,
	[RelationshipWithContact] [nvarchar](800) NULL,
	[TestedHIVBefore] [nvarchar](800) NULL,
	[WhoPerformedTest] [nvarchar](800) NULL,
	[ResultOfHIV] [nvarchar](800) NULL,
	[DateTestedSelf] [datetime2](7) NULL,
	[StartedOnART] [nvarchar](800) NULL,
	[CCCNumber] [nvarchar](800) NULL,
	[EverHadSex] [nvarchar](800) NULL,
	[SexuallyActive] [nvarchar](800) NULL,
	[NewPartner] [nvarchar](800) NULL,
	[PartnerHIVStatus] [nvarchar](800) NULL,
	[CoupleDiscordant] [nvarchar](800) NULL,
	[MultiplePartners] [nvarchar](800) NULL,
	[NumberOfPartners] [int] NULL,
	[AlcoholSex] [nvarchar](800) NULL,
	[MoneySex] [nvarchar](800) NULL,
	[CondomBurst] [nvarchar](800) NULL,
	[UnknownStatusPartner] [nvarchar](800) NULL,
	[KnownStatusPartner] [nvarchar](800) NULL,
	[Pregnant] [nvarchar](800) NULL,
	[BreastfeedingMother] [nvarchar](800) NULL,
	[ExperiencedGBV] [nvarchar](800) NULL,
	[ContactWithTBCase] [nvarchar](800) NULL,
	[Lethargy] [nvarchar](800) NULL,
	[EverOnPrep] [nvarchar](800) NULL,
	[CurrentlyOnPrep] [nvarchar](800) NULL,
	[EverOnPep] [nvarchar](800) NULL,
	[CurrentlyOnPep] [nvarchar](800) NULL,
	[EverHadSTI] [nvarchar](800) NULL,
	[CurrentlyHasSTI] [nvarchar](800) NULL,
	[EverHadTB] [nvarchar](800) NULL,
	[SharedNeedle] [nvarchar](800) NULL,
	[NeedleStickInjuries] [nvarchar](800) NULL,
	[TraditionalProcedures] [nvarchar](800) NULL,
	[ChildReasonsForIneligibility] [nvarchar](800) NULL,
	[EligibleForTest] [nvarchar](800) NULL,
	[ReasonsForIneligibility] [nvarchar](800) NULL,
	[SpecificReasonForIneligibility] [int] NULL,
	[Cough] [nvarchar](800) NULL,
	[DateTestedProvider] [datetime2](7) NULL,
	[Fever] [nvarchar](800) NULL,
	[MothersStatus] [nvarchar](800) NULL,
	[NightSweats] [nvarchar](800) NULL,
	[ReferredForTesting] [nvarchar](800) NULL,
	[ResultOfHIVSelf] [nvarchar](800) NULL,
	[ScreenedTB] [nvarchar](800) NULL,
	[TBStatus] [nvarchar](800) NULL,
	[WeightLoss] [nvarchar](800) NULL,
	[AssessmentOutcome] [nvarchar](800) NULL,
	[ForcedSex] [nvarchar](800) NULL,
	[ReceivedServices] [nvarchar](800) NULL,
	[TypeGBV] [nvarchar](800) NULL,
	[DateCreated] [datetime2](7) NULL,
	[DateLastModified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_Linkage]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_Linkage](
	[PatientPK] [int] NULL,
	[FacilityName] [varchar](150) NULL,
	[Emr] [varchar](150) NULL,
	[Project] [varchar](150) NULL,
	[HTSNumber] [varchar](150) NULL,
	[PhoneTracingDate] [date] NULL,
	[PhysicalTracingDate] [date] NULL,
	[tracingOutcome] [varchar](150) NULL,
	[CCCNumber] [varchar](150) NULL,
	[EnrolledFacilityName] [varchar](150) NULL,
	[ReferralDate] [date] NULL,
	[dateEnrolled] [date] NULL,
	[SiteCode] [int] NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_PartnerNotificationServices]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_PartnerNotificationServices](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[PartnerPatientPk] [int] NULL,
	[KnowledgeOfHivStatus] [nvarchar](800) NULL,
	[PartnerPersonID] [int] NULL,
	[CccNumber] [nvarchar](800) NULL,
	[IpvScreeningOutcome] [nvarchar](800) NULL,
	[ScreenedForIpv] [nvarchar](800) NULL,
	[PnsConsent] [nvarchar](800) NULL,
	[RelationsipToIndexClient] [nvarchar](800) NULL,
	[LinkedToCare] [nvarchar](800) NULL,
	[MaritalStatus] [nvarchar](800) NULL,
	[PnsApproach] [nvarchar](800) NULL,
	[FacilityLinkedTo] [nvarchar](800) NULL,
	[Gender] [nvarchar](800) NULL,
	[CurrentlyLivingWithIndexClient] [nvarchar](800) NULL,
	[Age] [int] NULL,
	[DateElicited] [datetime2](7) NULL,
	[Dob] [datetime2](7) NULL,
	[LinkDateLinkedToCare] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_PartnerTracings]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_PartnerTracings](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[TraceType] [nvarchar](800) NULL,
	[TraceDate] [datetime2](7) NULL,
	[TraceOutcome] [nvarchar](800) NULL,
	[BookingDate] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_PositivePatients]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_PositivePatients](
	[FacilityName] [varchar](50) NULL,
	[SiteCode] [int] NULL,
	[Dob] [datetime] NULL,
	[Gender] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[dead] [varchar](50) NULL,
	[death_date] [date] NULL,
	[Visit_id] [varchar](50) NULL,
	[encounter_id] [varchar](50) NULL,
	[date_created] [date] NULL,
	[TestDate] [date] NULL,
	[TestType] [varchar](50) NULL,
	[population_type] [varchar](50) NULL,
	[key_population_type] [varchar](50) NULL,
	[ever_tested_for_hiv] [varchar](3) NULL,
	[months_since_last_test] [varchar](50) NULL,
	[patient_disabled] [varchar](50) NULL,
	[disability_type] [varchar](50) NULL,
	[patient_consented] [varchar](50) NULL,
	[client_tested_as] [varchar](50) NULL,
	[test_strategy] [varchar](50) NULL,
	[test_1_kit_name] [varchar](50) NULL,
	[test_1_kit_expiry] [varchar](50) NULL,
	[test_1_result] [varchar](50) NULL,
	[test_2_kit_name] [varchar](50) NULL,
	[test_2_kit_expiry] [varchar](50) NULL,
	[test_2_result] [varchar](50) NULL,
	[final_test_result] [varchar](50) NULL,
	[patient_given_result] [varchar](50) NULL,
	[couple_discordant] [varchar](50) NULL,
	[tb_screening] [varchar](50) NULL,
	[patient_had_hiv_self_test] [varchar](50) NULL,
	[tracing_status] [varchar](50) NULL,
	[tracing_type] [varchar](13) NULL,
	[ccc_number] [varchar](50) NULL,
	[facility_linked_to] [varchar](50) NULL,
	[CKV] [varchar](50) NULL,
	[DateImported] [date] NULL,
	[PatientUID] [uniqueidentifier] NULL,
	[CleanedCCC_Number] [varchar](50) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_PositivePatients_new]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_PositivePatients_new](
	[FacilityName] [nvarchar](1200) NULL,
	[SiteCode] [int] NOT NULL,
	[Dob] [date] NULL,
	[Gender] [nvarchar](160) NULL,
	[PatientPK] [int] NOT NULL,
	[dead] [varchar](2) NULL,
	[death_date] [int] NULL,
	[visit_id] [int] NULL,
	[encounter_id] [int] NULL,
	[TestDate] [datetime2](7) NULL,
	[TestType] [nvarchar](400) NULL,
	[population_type] [varchar](18) NULL,
	[key_population_type] [nvarchar](400) NULL,
	[ever_tested_for_hiv] [nvarchar](400) NULL,
	[months_since_last_test] [int] NULL,
	[patient_disabled] [varchar](3) NULL,
	[disability_type] [nvarchar](400) NULL,
	[patient_consented] [nvarchar](400) NULL,
	[client_tested_as] [nvarchar](400) NULL,
	[test_strategy] [nvarchar](400) NULL,
	[test_1_kit_name] [nvarchar](400) NULL,
	[test_1_kit_expiry] [nvarchar](400) NULL,
	[test_1_result] [nvarchar](400) NULL,
	[test_2_kit_name] [nvarchar](400) NULL,
	[test_2_kit_expiry] [nvarchar](400) NULL,
	[test_2_result] [nvarchar](400) NULL,
	[final_test_result] [nvarchar](400) NULL,
	[patient_given_result] [nvarchar](800) NULL,
	[couple_discordant] [nvarchar](400) NULL,
	[tb_screening] [nvarchar](400) NULL,
	[patient_had_hiv_self_test] [nvarchar](400) NULL,
	[tracing_status] [nvarchar](400) NULL,
	[tracing_type] [nvarchar](400) NULL,
	[ReportedCCCNumber] [nvarchar](400) NULL,
	[facility_linked_to] [nvarchar](400) NULL,
	[CKV] [varchar](250) NULL,
	[ClientUPI] [uniqueidentifier] NULL,
	[LinkedCCC_Number] [varchar](100) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HTS_TestKits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HTS_TestKits](
	[FacilityName] [nvarchar](800) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPk] [int] NOT NULL,
	[HtsNumber] [nvarchar](800) NULL,
	[Emr] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[EncounterId] [int] NULL,
	[TestKitName1] [nvarchar](800) NULL,
	[TestKitLotNumber1] [nvarchar](800) NULL,
	[TestKitExpiry1] [nvarchar](800) NULL,
	[TestResult1] [nvarchar](800) NULL,
	[TestKitName2] [nvarchar](800) NULL,
	[TestKitLotNumber2] [nvarchar](800) NULL,
	[TestKitExpiry2] [nvarchar](800) NULL,
	[TestResult2] [nvarchar](800) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[HtsNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_ARTOutcomes]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_ARTOutcomes](
	[PatientID] [varchar](100) NULL,
	[PatientPK] [varchar](50) NULL,
	[startARTDate] [date] NULL,
	[Cohort] [int] NULL,
	[ExitReason] [varchar](250) NULL,
	[ExitDate] [date] NULL,
	[LastEncounterDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[ARTOutcome] [varchar](2) NULL,
	[SiteCode] [nvarchar](30) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateUploaded] [datetime] NULL,
	[SiteAbstractionDate] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_BaseLineViralLoads]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_BaseLineViralLoads](
	[rank] [bigint] NULL,
	[PatientID] [varchar](150) NULL,
	[SiteCode] [varchar](150) NULL,
	[PatientPK] [varchar](150) NULL,
	[VisitID] [varchar](150) NULL,
	[OrderedbyDate] [date] NULL,
	[ReportedbyDate] [date] NULL,
	[TestName] [varchar](100) NULL,
	[TestResult] [varchar](100) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[Reason] [varchar](250) NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_EncounterHTSTests]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_EncounterHTSTests](
	[num] [bigint] NULL,
	[TestDate] [datetime2](7) NULL,
	[EncounterId] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPK] [int] NOT NULL,
	[EMR] [nvarchar](800) NULL,
	[Project] [nvarchar](800) NULL,
	[DateExtracted] [date] NULL,
	[EverTestedForHiv] [nvarchar](800) NULL,
	[MonthsSinceLastTest] [int] NULL,
	[ClientTestedAs] [nvarchar](800) NULL,
	[EntryPoint] [nvarchar](800) NULL,
	[TestStrategy] [nvarchar](800) NULL,
	[TestResult1] [nvarchar](800) NULL,
	[TestResult2] [nvarchar](800) NULL,
	[FinalTestResult] [nvarchar](800) NULL,
	[PatientGivenResult] [nvarchar](800) NULL,
	[TbScreening] [nvarchar](800) NULL,
	[ClientSelfTested] [nvarchar](800) NULL,
	[CoupleDiscordant] [nvarchar](4000) NULL,
	[TestType] [nvarchar](800) NULL,
	[Consent] [nvarchar](800) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastestWeightHeight]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastestWeightHeight](
	[rank] [bigint] NULL,
	[VisitDate] [date] NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[VisitID] [varchar](50) NULL,
	[Weight] [varchar](150) NULL,
	[Height] [varchar](150) NULL,
	[VisitBy] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastOTZVisit]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastOTZVisit](
	[PatientID] [nvarchar](4000) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPK] [int] NOT NULL,
	[EMR] [nvarchar](4000) NULL,
	[LastVisitDate] [datetime] NULL,
	[OTZEnrollmentDate] [datetime2](7) NULL,
	[TransferInStatus] [nvarchar](4000) NULL,
	[TransitionAttritionReason] [nvarchar](4000) NULL,
	[ModulesPreviouslyCovered] [nvarchar](4000) NULL,
	[ModulesCompletedToday_OTZ_Orientation] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Participation] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Leadership] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_MakingDecisions] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Transition] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_TreatmentLiteracy] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_SRH] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Beyond] [int] NOT NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastOVCVisit]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastOVCVisit](
	[LatestVisitDate] [datetime] NULL,
	[PatientID] [nvarchar](4000) NULL,
	[SiteCode] [int] NOT NULL,
	[PatientPK] [int] NOT NULL,
	[EMR] [nvarchar](4000) NULL,
	[VisitDate] [datetime] NULL,
	[VisitID] [int] NULL,
	[OVCEnrollmentDate] [datetime2](7) NULL,
	[RelationshipToClient] [nvarchar](4000) NULL,
	[EnrolledinCPIMS] [nvarchar](4000) NULL,
	[CPIMSUniqueIdentifier] [nvarchar](4000) NULL,
	[PartnerOfferingOVCServices] [nvarchar](4000) NULL,
	[OVCExitReason] [nvarchar](4000) NULL,
	[ExitDate] [datetime2](7) NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastPatientEncounter]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastPatientEncounter](
	[PatientID] [varchar](250) NULL,
	[SiteCode] [varchar](250) NULL,
	[PatientPK] [varchar](250) NULL,
	[LastEncounterDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastPatientEncounterAsAt]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastPatientEncounterAsAt](
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](255) NULL,
	[PatientPK] [varchar](50) NULL,
	[EncounterDateAsAt] [date] NULL,
	[AppointmentDateAsAt] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastPharmacyDispenseDate]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastPharmacyDispenseDate](
	[NUM] [bigint] NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](255) NULL,
	[PatientPK] [varchar](50) NULL,
	[LastDispenseDate] [date] NULL,
	[ExpectedReturn] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastVisitAsAt]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastVisitAsAt](
	[NUM] [bigint] NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[VisitDateAsAt] [date] NULL,
	[AppointmentDateAsAt] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastVisitDate]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LastVisitDate](
	[NUM] [bigint] NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[LastVisitDate] [date] NULL,
	[NextAppointment] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LatestViralLoads]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_LatestViralLoads](
	[rank] [bigint] NULL,
	[PatientID] [varchar](150) NULL,
	[SiteCode] [varchar](150) NULL,
	[PatientPK] [varchar](150) NULL,
	[VisitID] [varchar](150) NULL,
	[OrderedbyDate] [date] NULL,
	[ReportedbyDate] [date] NULL,
	[TestName] [varchar](100) NULL,
	[TestResult] [varchar](100) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[Reason] [varchar](250) NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_OrderedViralLoads]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_OrderedViralLoads](
	[rank] [bigint] NULL,
	[PatientID] [varchar](150) NULL,
	[SiteCode] [varchar](150) NULL,
	[PatientPK] [varchar](150) NULL,
	[VisitID] [varchar](150) NULL,
	[OrderedbyDate] [date] NULL,
	[ReportedbyDate] [date] NULL,
	[TestName] [varchar](100) NULL,
	[TestResult] [varchar](100) NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[Reason] [varchar](250) NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_PharmacyDispenseAsAtDate]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_PharmacyDispenseAsAtDate](
	[NUM] [bigint] NULL,
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](255) NULL,
	[PatientPK] [varchar](50) NULL,
	[LastDispenseDate] [date] NULL,
	[ExpectedReturn] [date] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_PregnancyAsATInitiation]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_PregnancyAsATInitiation](
	[PatientID] [varchar](100) NULL,
	[PatientPK] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PregnantARTStart] [int] NOT NULL,
	[PregnantAtEnrol] [int] NOT NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_PregnancyDuringART]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intermediate_PregnancyDuringART](
	[PatientID] [varchar](100) NULL,
	[PatientPK] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PregnantDuringART] [int] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_AdherenceCategoryMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_AdherenceCategoryMapping](
	[Source_AdheranceCategory] [varchar](150) NULL,
	[Target_AdheranceCatgory] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_AdherenceMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_AdherenceMapping](
	[Source_Adherance] [varchar](150) NULL,
	[Target_Adherance] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_adverse_events]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_adverse_events](
	[source_name] [varchar](100) NOT NULL,
	[target_name] [varchar](100) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_AdverseEventsMappings]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_AdverseEventsMappings](
	[Source_AdverseEvent] [varchar](250) NULL,
	[Target_AdverseEvent] [varchar](250) NULL,
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_allergic_reaction]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_allergic_reaction](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_allergy_causative_agent]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_allergy_causative_agent](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_ARTOutcomes]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_ARTOutcomes](
	[PatientID] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[startARTDate] [date] NULL,
	[Cohort] [int] NULL,
	[ExitReason] [varchar](150) NULL,
	[ExitDate] [date] NULL,
	[LastEncounterDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[m6ARTStatus] [varchar](2) NULL,
	[m12ARTStatus] [varchar](2) NULL,
	[m18ARTStatus] [varchar](2) NULL,
	[m24ARTStatus] [varchar](2) NULL,
	[m36ARTStatus] [varchar](2) NULL,
	[m48ARTStatus] [varchar](2) NULL,
	[m60ARTStatus] [varchar](2) NULL,
	[m72ARTStatus] [varchar](2) NULL,
	[m84ARTStatus] [varchar](2) NULL,
	[m96ARTStatus] [varchar](2) NULL,
	[m108ARTStatus] [varchar](2) NULL,
	[m120ARTStatus] [varchar](2) NULL,
	[m132ARTStatus] [varchar](2) NULL,
	[m144ARTStatus] [varchar](2) NULL,
	[m156ARTStatus] [varchar](2) NULL,
	[m168ARTStatus] [varchar](2) NULL,
	[m180ARTStatus] [varchar](2) NULL,
	[ARTOutcome] [varchar](2) NULL,
	[ARTOutcome_0Days] [varchar](2) NULL,
	[ARTOutcome_7days] [varchar](2) NULL,
	[ARTOutcome_14Days] [varchar](2) NULL,
	[ARTOutcome_30Days] [varchar](2) NULL,
	[ARTOutcome_90Days] [varchar](2) NULL,
	[duARTOutcome] [varchar](2) NULL,
	[duARTOutcome_0Days] [varchar](2) NULL,
	[duARTOutcome_7days] [varchar](2) NULL,
	[duARTOutcome_14Days] [varchar](2) NULL,
	[duARTOutcome_30Days] [varchar](2) NULL,
	[duARTOutcome_90Days] [varchar](2) NULL,
	[SiteCode] [varchar](50) NULL,
	[Emr] [varchar](50) NULL,
	[Project] [varchar](255) NULL,
	[SiteAbstractionDate] [date] NULL,
	[DateUploaded] [datetime] NULL,
	[PatientUID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_chronic_illness]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_chronic_illness](
	[source_name] [varchar](100) NOT NULL,
	[target_name] [varchar](100) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lkp_ContactRelation]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lkp_ContactRelation](
	[SourceContactRelation] [varchar](250) NULL,
	[TargetContactRelation] [varchar](250) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
 CONSTRAINT [PK_Lkp_ContactRelation] PRIMARY KEY CLUSTERED 
(
	[Ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_education_level]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_education_level](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lkp_EducationLevel]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lkp_EducationLevel](
	[SourceEducationLevel] [varchar](150) NULL,
	[TargetEducationLevel] [varchar](150) NULL,
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_exit_reason]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_exit_reason](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_ExitReasonMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_ExitReasonMapping](
	[Source_ExitReason] [varchar](250) NULL,
	[Target_ExitReason] [varchar](250) NULL,
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_family_planning_method]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_family_planning_method](
	[source_name] [varchar](250) NOT NULL,
	[target_name] [varchar](250) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_Gender]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_Gender](
	[ident] [int] NOT NULL,
	[Source_Gender] [varchar](150) NULL,
	[Target_Gender] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_HTS_EnrolledFacility]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_HTS_EnrolledFacility](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[Source] [varchar](150) NULL,
	[Target] [varchar](150) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsClientTestedAs]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsClientTestedAs](
	[Source_TestedAs] [varchar](150) NULL,
	[Target_TestedAs] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsDisability]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsDisability](
	[Source_Disability] [varchar](150) NULL,
	[Target_Disability] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsEntryPoint]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsEntryPoint](
	[Source_EntryPoint] [varchar](150) NULL,
	[Target_EntryPoint] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsEntryTest]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsEntryTest](
	[Source_EntryPoint] [varchar](150) NULL,
	[Target_EntryPoint] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsKeypop]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsKeypop](
	[Source_Keypop] [varchar](150) NULL,
	[Target_KeyPop] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsMaritalStatus]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsMaritalStatus](
	[Source_MaritalStatus] [varchar](150) NULL,
	[Target_MaritalStatus] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsSelfTested]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsSelfTested](
	[Source_SelfTested] [varchar](150) NULL,
	[Target_SelfTested] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsStrategy]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsStrategy](
	[Source_htsStrategy] [varchar](150) NULL,
	[Target_htsStrategy] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsTBScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsTBScreening](
	[Source_TBScreening] [varchar](150) NULL,
	[Target_TBScreening] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_htsTestType]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_htsTestType](
	[Source_TestType] [varchar](150) NULL,
	[Target_TestType] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_IEBC_Counties]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_IEBC_Counties](
	[IEBC_Subcounties] [varchar](50) NULL,
	[IEBC_County] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_IEBC_Wards]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_IEBC_Wards](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[WARD_NAME] [varchar](50) NULL,
	[SUB_COUNTY] [varchar](50) NULL,
	[COUNTY] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_marital_status]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_marital_status](
	[source_name] [varchar](100) NOT NULL,
	[target_name] [varchar](100) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_MaritalStatus]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_MaritalStatus](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[Source_MaritalStatus] [varchar](200) NULL,
	[Target_MaritalStatus] [varchar](200) NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_newPartnerSites]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_newPartnerSites](
	[Region] [varchar](50) NULL,
	[County] [varchar](100) NULL,
	[Subcountry] [varchar](100) NULL,
	[FacilityName] [varchar](100) NULL,
	[Mflcode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_PartnerOfferingOVCServices]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_PartnerOfferingOVCServices](
	[source_name] [varchar](100) NOT NULL,
	[target_name] [varchar](100) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_patient_source]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_patient_source](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_PatientSourceMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_PatientSourceMapping](
	[Source_PatientSource] [varchar](250) NULL,
	[Target_PatientSource] [varchar](250) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
 CONSTRAINT [PK_lkp_PatientSourceMapping] PRIMARY KEY CLUSTERED 
(
	[Ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_PreARTVisitDates]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_PreARTVisitDates](
	[PatientId] [varchar](150) NULL,
	[PatientPK] [varchar](150) NULL,
	[SiteCode] [varchar](50) NULL,
	[RegistrationAtCCC] [date] NULL,
	[maxVizYr1] [date] NULL,
	[maxVizNextApYr1] [date] NULL,
	[maxVizYr2] [date] NULL,
	[maxVizNextApYr2] [date] NULL,
	[maxVizYr3] [date] NULL,
	[maxVizNextApYr3] [date] NULL,
	[maxVizYr4] [date] NULL,
	[maxVizNextApYr4] [date] NULL,
	[maxVizYr5] [date] NULL,
	[maxVizNextApYr5] [date] NULL,
	[maxVizYr6] [date] NULL,
	[maxVizNextApYr6] [date] NULL,
	[maxVizYr7] [date] NULL,
	[maxVizNextApYr7] [date] NULL,
	[maxVizYr8] [date] NULL,
	[maxVizNextApYr8] [date] NULL,
	[maxVizYr9] [date] NULL,
	[maxVizNextApYr9] [date] NULL,
	[maxVizYr10] [date] NULL,
	[maxVizNextApYr10] [date] NULL,
	[maxViz6m] [date] NULL,
	[maxVizNextAp6m] [date] NULL,
	[DateImported] [date] NULL,
	[maxViz18m] [date] NULL,
	[maxVizNextAp18m] [date] NULL,
	[PatientUID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_PregnantMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_PregnantMapping](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[Source_Pregnant] [varchar](150) NULL,
	[Target_Pregnant] [varchar](150) NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_prophylaxis_type]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_prophylaxis_type](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_pwp]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_pwp](
	[source_name] [varchar](200) NOT NULL,
	[target_name] [varchar](200) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_regimen]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_regimen](
	[source_name] [varchar](700) NOT NULL,
	[target_name] [varchar](700) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_RegimenLineMap]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_RegimenLineMap](
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[Source_Regimen] [varchar](250) NULL,
	[Target_Regimen] [varchar](150) NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_RegimenLineMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_RegimenLineMapping](
	[Source_Regimen_Line] [varchar](150) NULL,
	[Target_Regimen_Line_Above3] [varchar](150) NULL,
	[Target_Regimen_Line_Under3] [varchar](150) NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_RegimenMap]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_RegimenMap](
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[Source_Regimen] [varchar](250) NULL,
	[Target_Regimen] [varchar](150) NULL,
	[DateImported] [date] NULL,
 CONSTRAINT [PK_lkp_RegimenMap] PRIMARY KEY CLUSTERED 
(
	[Ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_RegionMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_RegionMapping](
	[Source_Region] [varchar](150) NULL,
	[Target_Region] [varchar](150) NULL,
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_SiteAbstractionDate]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_SiteAbstractionDate](
	[Sitecode] [varchar](50) NULL,
	[EMR] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[VisitAbstractionDate] [date] NULL,
	[PharmacyAbstractionDate] [date] NULL,
	[SiteAbstractionDate] [date] NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_StartRegimenMap]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_StartRegimenMap](
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[Source_RegLine] [varchar](250) NULL,
	[Source_Regimen] [varchar](250) NULL,
	[Target_Regimen] [varchar](150) NULL,
	[DateImported] [date] NULL,
 CONSTRAINT [PK_lkp_StartRegimenMap] PRIMARY KEY CLUSTERED 
(
	[Ident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_test]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_test](
	[MFL_Code] [varchar](50) NULL,
	[FacilityName] [varchar](200) NULL,
	[County] [varchar](100) NULL,
	[Agency] [varchar](100) NULL,
	[MechanismID] [varchar](50) NULL,
	[Implementing_Mechanism_Name] [varchar](200) NULL,
	[Mechanism] [varchar](250) NULL,
	[project] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_test_name]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_test_name](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_treatment_type]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_treatment_type](
	[source_name] [varchar](50) NOT NULL,
	[target_name] [varchar](50) NULL,
	[date_created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[source_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_usgPartnerMenchanism]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_usgPartnerMenchanism](
	[MFL_Code] [varchar](50) NULL,
	[FacilityName] [varchar](200) NULL,
	[County] [varchar](100) NULL,
	[Agency] [varchar](100) NULL,
	[MechanismID] [varchar](50) NULL,
	[Implementing_Mechanism_Name] [varchar](200) NULL,
	[Mechanism] [varchar](250) NULL,
	[Code] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_usgPartnerMenchanism_HTS]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_usgPartnerMenchanism_HTS](
	[MFL_Code] [varchar](50) NULL,
	[FacilityName] [varchar](200) NULL,
	[County] [varchar](100) NULL,
	[Agency] [varchar](100) NULL,
	[MechanismID] [varchar](50) NULL,
	[Implementing_Mechanism_Name] [varchar](200) NULL,
	[Mechanism] [varchar](250) NULL,
	[Code] [int] NULL,
	[project] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_usgPartnerMenchanism_hts_befUpdateApril]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_usgPartnerMenchanism_hts_befUpdateApril](
	[MFL_Code] [varchar](50) NULL,
	[FacilityName] [varchar](200) NULL,
	[County] [varchar](100) NULL,
	[Agency] [varchar](100) NULL,
	[MechanismID] [varchar](50) NULL,
	[Implementing_Mechanism_Name] [varchar](200) NULL,
	[Mechanism] [varchar](250) NULL,
	[Code] [int] NULL,
	[project] [varchar](100) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_ViralLoadMapping]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_ViralLoadMapping](
	[Source_ViralLoad] [varchar](150) NULL,
	[Target_ViralLoad] [varchar](150) NULL,
	[ident] [int] NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_VisitDates]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_VisitDates](
	[PatientId] [varchar](150) NULL,
	[PatientPK] [varchar](150) NULL,
	[SiteCode] [varchar](50) NULL,
	[StartARTDate] [date] NULL,
	[maxViz6m] [date] NULL,
	[maxVizNextAp6m] [date] NULL,
	[maxVizYr1] [date] NULL,
	[maxVizNextApYr1] [date] NULL,
	[maxVizYr2] [date] NULL,
	[maxVizNextApYr2] [date] NULL,
	[maxVizYr3] [date] NULL,
	[maxVizNextApYr3] [date] NULL,
	[maxVizYr4] [date] NULL,
	[maxVizNextApYr4] [date] NULL,
	[maxVizYr5] [date] NULL,
	[maxVizNextApYr5] [date] NULL,
	[maxVizYr6] [date] NULL,
	[maxVizNextApYr6] [date] NULL,
	[maxVizYr7] [date] NULL,
	[maxVizNextApYr7] [date] NULL,
	[maxVizYr8] [date] NULL,
	[maxVizNextApYr8] [date] NULL,
	[maxVizYr9] [date] NULL,
	[maxVizNextApYr9] [date] NULL,
	[maxVizYr10] [date] NULL,
	[maxVizNextApYr10] [date] NULL,
	[IDENT] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImported] [date] NULL,
	[MaxPharm6m] [date] NULL,
	[MaxPharmNextAp6m] [date] NULL,
	[MaxPharmYr1] [date] NULL,
	[MaxPharmNextApYr1] [date] NULL,
	[MaxPharmYr2] [date] NULL,
	[MaxPharmNextApYr2] [date] NULL,
	[MaxPharmYr3] [date] NULL,
	[MaxPharmNextApYr3] [date] NULL,
	[MaxPharmYr4] [date] NULL,
	[MaxPharmNextApYr4] [date] NULL,
	[MaxPharmYr5] [date] NULL,
	[MaxPharmNextApYr5] [date] NULL,
	[MaxPharmYr6] [date] NULL,
	[MaxPharmNextApYr6] [date] NULL,
	[MaxPharmYr7] [date] NULL,
	[MaxPharmNextApYr7] [date] NULL,
	[MaxPharmYr8] [date] NULL,
	[MaxPharmNextApYr8] [date] NULL,
	[MaxPharmYr9] [date] NULL,
	[MaxPharmNextApYr9] [date] NULL,
	[MaxPharmYr10] [date] NULL,
	[MaxPharmNextApYr10] [date] NULL,
	[maxViz18m] [date] NULL,
	[maxVizNextAp18m] [date] NULL,
	[maxPharm18m] [date] NULL,
	[maxPharmNextAp18m] [date] NULL,
	[maxVizYr11] [date] NULL,
	[maxVizNextApYr11] [date] NULL,
	[maxVizYr12] [date] NULL,
	[maxVizNextApYr12] [date] NULL,
	[maxVizYr13] [date] NULL,
	[maxVizNextApYr13] [date] NULL,
	[MaxPharmYr11] [date] NULL,
	[MaxPharmYr12] [date] NULL,
	[MaxPharmYr13] [date] NULL,
	[MaxPharmYr14] [date] NULL,
	[MaxPharmYr15] [date] NULL,
	[MaxPharmNextApYr11] [date] NULL,
	[MaxPharmNextApYr12] [date] NULL,
	[MaxPharmNextApYr13] [date] NULL,
	[MaxPharmNextApYr14] [date] NULL,
	[MaxPharmNextApYr15] [date] NULL,
	[maxVizYr14] [date] NULL,
	[maxVizNextApYr14] [date] NULL,
	[maxVizYr15] [date] NULL,
	[maxVizNextApYr15] [date] NULL,
	[PatientUID] [uniqueidentifier] NULL,
	[maxViz3m] [date] NULL,
	[maxVizNextAp3m] [date] NULL,
	[MaxPharm3m] [date] NULL,
	[MaxPharmNextAp3m] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lkp_WHOStage]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lkp_WHOStage](
	[ident] [int] IDENTITY(1,1) NOT NULL,
	[Source_WHOStage] [varchar](100) NULL,
	[Target_WHOStage] [varchar](50) NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lpEncounter]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lpEncounter](
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PatientPK] [varchar](50) NULL,
	[LastEncounterDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[DateImported] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_AncVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_AncVisits](
	[PatientMnchID] [nvarchar](20) NULL,
	[ANCClinicNumber] [nvarchar](70) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](100) NULL,
	[EMR] [nvarchar](20) NULL,
	[Project] [nvarchar](20) NULL,
	[DateExtracted] [date] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [date] NULL,
	[ANCVisitNo] [int] NULL,
	[GestationWeeks] [int] NULL,
	[Height] [decimal](18, 2) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[MUAC] [int] NULL,
	[BP] [int] NULL,
	[BreastExam] [nvarchar](10) NULL,
	[AntenatalExercises] [nvarchar](10) NULL,
	[FGM] [nvarchar](10) NULL,
	[FGMComplications] [nvarchar](10) NULL,
	[Haemoglobin] [decimal](18, 2) NULL,
	[DiabetesTest] [nvarchar](5) NULL,
	[TBScreening] [nvarchar](35) NULL,
	[CACxScreen] [nvarchar](20) NULL,
	[CACxScreenMethod] [nvarchar](20) NULL,
	[WHOStaging] [int] NULL,
	[VLSampleTaken] [nvarchar](10) NULL,
	[VLDate] [datetime2](7) NULL,
	[VLResult] [nvarchar](50) NULL,
	[SyphilisTreatment] [nvarchar](10) NULL,
	[HIVStatusBeforeANC] [nvarchar](20) NULL,
	[HIVTestingDone] [nvarchar](10) NULL,
	[HIVTestType] [nvarchar](15) NULL,
	[HIVTest1] [nvarchar](60) NULL,
	[HIVTest1Result] [nvarchar](30) NULL,
	[HIVTest2] [nvarchar](20) NULL,
	[HIVTest2Result] [nvarchar](20) NULL,
	[HIVTestFinalResult] [nvarchar](20) NULL,
	[SyphilisTestDone] [nvarchar](5) NULL,
	[SyphilisTestType] [nvarchar](10) NULL,
	[SyphilisTestResults] [nvarchar](15) NULL,
	[SyphilisTreated] [nvarchar](10) NULL,
	[MotherProphylaxisGiven] [nvarchar](5) NULL,
	[MotherGivenHAART] [datetime2](7) NULL,
	[AZTBabyDispense] [nvarchar](5) NULL,
	[NVPBabyDispense] [nvarchar](5) NULL,
	[ChronicIllness] [nvarchar](100) NULL,
	[CounselledOn] [nvarchar](120) NULL,
	[PartnerHIVTestingANC] [nvarchar](5) NULL,
	[PartnerHIVStatusANC] [nvarchar](20) NULL,
	[PostParturmFP] [nvarchar](5) NULL,
	[Deworming] [nvarchar](5) NULL,
	[MalariaProphylaxis] [nvarchar](5) NULL,
	[TetanusDose] [nvarchar](5) NULL,
	[IronSupplementsGiven] [nvarchar](5) NULL,
	[ReceivedMosquitoNet] [nvarchar](5) NULL,
	[PreventiveServices] [nvarchar](120) NULL,
	[UrinalysisVariables] [nvarchar](5) NULL,
	[ReferredFrom] [nvarchar](30) NULL,
	[ReferredTo] [nvarchar](30) NULL,
	[ReferralReasons] [nvarchar](50) NULL,
	[NextAppointmentANC] [date] NULL,
	[ClinicalNotes] [nvarchar](max) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL,
	[BabyPatientPK] [nvarchar](100) NULL,
	[MotherPatientPK] [nvarchar](100) NULL,
	[BabyPatientMncHeiID] [nvarchar](100) NULL,
	[MotherPatientMncHeiID] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_Arts]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_Arts](
	[Id] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](30) NULL,
	[Project] [nvarchar](20) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](30) NULL,
	[Status] [nvarchar](30) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[CKV] [nvarchar](100) NULL,
	[PatientMnchID] [nvarchar](30) NULL,
	[PatientHeiID] [nvarchar](30) NULL,
	[FacilityName] [nvarchar](100) NULL,
	[RegistrationAtCCC] [datetime2](7) NULL,
	[StartARTDate] [datetime2](7) NULL,
	[StartRegimen] [nvarchar](40) NULL,
	[StartRegimenLine] [nvarchar](40) NULL,
	[StatusAtCCC] [nvarchar](20) NULL,
	[LastARTDate] [datetime2](7) NULL,
	[LastRegimen] [nvarchar](40) NULL,
	[LastRegimenLine] [nvarchar](20) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_CwcEnrolments]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_CwcEnrolments](
	[id] [nvarchar](50) NULL,
	[PatientIDCWC] [nvarchar](50) NULL,
	[HEIID] [nvarchar](30) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[EMR] [nvarchar](30) NULL,
	[FacilityName] [nvarchar](120) NULL,
	[Project] [nvarchar](50) NULL,
	[DateExtracted] [date] NULL,
	[PKV] [nvarchar](30) NULL,
	[MothersPkv] [nvarchar](30) NULL,
	[RegistrationAtCWC] [date] NULL,
	[RegistrationAtHEI] [date] NULL,
	[VisitID] [int] NULL,
	[Gestation] [datetime2](7) NULL,
	[BirthWeight] [nvarchar](20) NULL,
	[BirthLength] [decimal](18, 2) NULL,
	[BirthOrder] [int] NULL,
	[BirthType] [nvarchar](20) NULL,
	[PlaceOfDelivery] [nvarchar](50) NULL,
	[ModeOfDelivery] [nvarchar](30) NULL,
	[SpecialNeeds] [nvarchar](5) NULL,
	[SpecialCare] [nvarchar](50) NULL,
	[HEI] [nvarchar](5) NULL,
	[MotherAlive] [nvarchar](5) NULL,
	[MothersCCCNo] [nvarchar](30) NULL,
	[TransferIn] [nvarchar](5) NULL,
	[TransferInDate] [nvarchar](30) NULL,
	[TransferredFrom] [nvarchar](50) NULL,
	[HEIDate] [nvarchar](30) NULL,
	[NVP] [nvarchar](5) NULL,
	[BreastFeeding] [nvarchar](5) NULL,
	[ReferredFrom] [nvarchar](50) NULL,
	[ARTMother] [nvarchar](20) NULL,
	[ARTRegimenMother] [nvarchar](30) NULL,
	[ARTStartDateMother] [date] NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL,
	[PKVHash] [nvarchar](100) NULL,
	[MothersPkvHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_CwcVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_CwcVisits](
	[ID] [nvarchar](50) NULL,
	[PatientMnchID] [nvarchar](50) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](100) NULL,
	[EMR] [nvarchar](30) NULL,
	[Project] [nvarchar](30) NULL,
	[DateExtracted] [date] NULL,
	[VisitDate] [date] NULL,
	[VisitID] [int] NULL,
	[Height] [decimal](18, 2) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[MUAC] [int] NULL,
	[WeightCategory] [nvarchar](30) NULL,
	[Stunted] [nvarchar](5) NULL,
	[InfantFeeding] [nvarchar](30) NULL,
	[MedicationGiven] [nvarchar](20) NULL,
	[TBAssessment] [nvarchar](15) NULL,
	[MNPsSupplementation] [nvarchar](10) NULL,
	[Immunization] [nvarchar](30) NULL,
	[DangerSigns] [nvarchar](20) NULL,
	[Milestones] [nvarchar](20) NULL,
	[VitaminA] [nvarchar](5) NULL,
	[Disability] [nvarchar](5) NULL,
	[ReceivedMosquitoNet] [nvarchar](10) NULL,
	[Dewormed] [nvarchar](5) NULL,
	[ReferredFrom] [nvarchar](30) NULL,
	[ReferredTo] [nvarchar](40) NULL,
	[ReferralReasons] [nvarchar](20) NULL,
	[FollowUP] [nvarchar](30) NULL,
	[NextAppointment] [date] NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_Enrolments]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_Enrolments](
	[ID] [nvarchar](50) NULL,
	[PatientMnchID] [nvarchar](50) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](100) NULL,
	[EMR] [nvarchar](30) NULL,
	[Project] [nvarchar](30) NULL,
	[DateExtracted] [date] NULL,
	[ServiceType] [nvarchar](10) NULL,
	[EnrollmentDateAtMnch] [date] NULL,
	[MnchNumber] [datetime2](7) NULL,
	[FirstVisitAnc] [datetime2](7) NULL,
	[Parity] [nvarchar](15) NULL,
	[Gravidae] [int] NOT NULL,
	[LMP] [datetime2](7) NULL,
	[EDDFromLMP] [datetime2](7) NULL,
	[HIVStatusBeforeANC] [nvarchar](20) NULL,
	[HIVTestDate] [date] NULL,
	[PartnerHIVStatus] [nvarchar](20) NULL,
	[PartnerHIVTestDate] [date] NULL,
	[BloodGroup] [nvarchar](20) NULL,
	[StatusAtMnch] [nvarchar](30) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_HEIs]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_HEIs](
	[Id] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](15) NULL,
	[Project] [nvarchar](20) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](20) NULL,
	[Status] [nvarchar](30) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](100) NULL,
	[FacilityName] [nvarchar](100) NULL,
	[PatientMnchID] [nvarchar](30) NULL,
	[DNAPCR1Date] [datetime2](7) NULL,
	[DNAPCR2Date] [datetime2](7) NULL,
	[DNAPCR3Date] [datetime2](7) NULL,
	[ConfirmatoryPCRDate] [datetime2](7) NULL,
	[BasellineVLDate] [datetime2](7) NULL,
	[FinalyAntibodyDate] [datetime2](7) NULL,
	[DNAPCR1] [nvarchar](20) NULL,
	[DNAPCR2] [nvarchar](20) NULL,
	[DNAPCR3] [nvarchar](20) NULL,
	[ConfirmatoryPCR] [nvarchar](15) NULL,
	[BasellineVL] [nvarchar](50) NULL,
	[FinalyAntibody] [nvarchar](20) NULL,
	[HEIExitDate] [datetime2](7) NULL,
	[HEIHIVStatus] [nvarchar](20) NULL,
	[HEIExitCritearia] [nvarchar](30) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_Labs]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_Labs](
	[Id] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](30) NULL,
	[Project] [nvarchar](50) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](50) NULL,
	[PatientMNCH_ID] [nvarchar](15) NULL,
	[FacilityName] [nvarchar](100) NULL,
	[SatelliteName] [nvarchar](15) NULL,
	[VisitID] [int] NULL,
	[OrderedbyDate] [datetime2](7) NULL,
	[ReportedbyDate] [datetime2](7) NULL,
	[TestName] [nvarchar](30) NULL,
	[TestResult] [nvarchar](35) NULL,
	[LabReason] [nvarchar](30) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_MatVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_MatVisits](
	[Id] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](30) NULL,
	[Project] [nvarchar](30) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](50) NULL,
	[PatientMnchID] [nvarchar](50) NULL,
	[FacilityName] [nvarchar](100) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime2](7) NULL,
	[AdmissionNumber] [nvarchar](50) NULL,
	[ANCVisits] [int] NULL,
	[DateOfDelivery] [datetime2](7) NULL,
	[DurationOfDelivery] [int] NULL,
	[GestationAtBirth] [int] NULL,
	[ModeOfDelivery] [nvarchar](40) NULL,
	[PlacentaComplete] [nvarchar](5) NULL,
	[UterotonicGiven] [nvarchar](10) NULL,
	[VaginalExamination] [nvarchar](10) NULL,
	[BloodLoss] [int] NULL,
	[BloodLossVisual] [nvarchar](10) NULL,
	[ConditonAfterDelivery] [nvarchar](10) NULL,
	[MaternalDeath] [datetime2](7) NULL,
	[DeliveryComplications] [nvarchar](30) NULL,
	[NoBabiesDelivered] [int] NULL,
	[BabyBirthNumber] [int] NULL,
	[SexBaby] [nvarchar](5) NULL,
	[BirthWeight] [nvarchar](10) NULL,
	[BirthOutcome] [nvarchar](30) NULL,
	[BirthWithDeformity] [nvarchar](5) NULL,
	[TetracyclineGiven] [nvarchar](10) NULL,
	[InitiatedBF] [nvarchar](5) NULL,
	[ApgarScore1] [int] NULL,
	[ApgarScore5] [int] NULL,
	[ApgarScore10] [int] NULL,
	[KangarooCare] [nvarchar](5) NULL,
	[ChlorhexidineApplied] [nvarchar](5) NULL,
	[VitaminKGiven] [nvarchar](5) NULL,
	[StatusBabyDischarge] [nvarchar](50) NULL,
	[MotherDischargeDate] [nvarchar](50) NULL,
	[SyphilisTestResults] [nvarchar](50) NULL,
	[HIVStatusLastANC] [nvarchar](50) NULL,
	[HIVTestingDone] [nvarchar](5) NULL,
	[HIVTest1] [nvarchar](20) NULL,
	[HIV1Results] [nvarchar](20) NULL,
	[HIVTest2] [nvarchar](20) NULL,
	[HIV2Results] [nvarchar](30) NULL,
	[HIVTestFinalResult] [nvarchar](50) NULL,
	[OnARTANC] [nvarchar](30) NULL,
	[BabyGivenProphylaxis] [nvarchar](5) NULL,
	[MotherGivenCTX] [nvarchar](5) NULL,
	[PartnerHIVTestingMAT] [nvarchar](5) NULL,
	[PartnerHIVStatusMAT] [nvarchar](20) NULL,
	[CounselledOn] [nvarchar](20) NULL,
	[ReferredFrom] [nvarchar](10) NULL,
	[ReferredTo] [nvarchar](20) NULL,
	[ClinicalNotes] [nvarchar](max) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_MotherBabyPairs]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_MotherBabyPairs](
	[ID] [nvarchar](50) NULL,
	[PatientIDCCC] [nvarchar](50) NULL,
	[PatientPk] [int] NOT NULL,
	[BabyPatientPK] [int] NOT NULL,
	[MotherPatientPK] [int] NOT NULL,
	[BabyPatientMncHeiID] [nvarchar](50) NULL,
	[MotherPatientMncHeiID] [nvarchar](50) NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](120) NULL,
	[EMR] [nvarchar](30) NULL,
	[Project] [nvarchar](30) NULL,
	[DateExtracted] [date] NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL,
	[BabyPatientPKHash] [nvarchar](100) NULL,
	[MotherPatientPKHash] [nvarchar](100) NULL,
	[MotherPatientMncHeiIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_Patient]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_Patient](
	[Id] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](30) NULL,
	[Project] [nvarchar](30) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](30) NULL,
	[Status] [nvarchar](30) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityName] [nvarchar](100) NULL,
	[Pkv] [nvarchar](50) NULL,
	[PatientMnchID] [nvarchar](30) NULL,
	[PatientHeiID] [nvarchar](30) NULL,
	[Gender] [nvarchar](20) NULL,
	[DOB] [datetime2](7) NULL,
	[FirstEnrollmentAtMnch] [datetime2](7) NULL,
	[Occupation] [nvarchar](60) NULL,
	[MaritalStatus] [nvarchar](30) NULL,
	[EducationLevel] [nvarchar](50) NULL,
	[PatientResidentCounty] [nvarchar](50) NULL,
	[PatientResidentSubCounty] [nvarchar](50) NULL,
	[PatientResidentWard] [nvarchar](50) NULL,
	[InSchool] [nvarchar](10) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[NUPI] [nvarchar](20) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MNCH_PncVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MNCH_PncVisits](
	[ID] [nvarchar](50) NULL,
	[PatientMnchID] [nvarchar](50) NULL,
	[PatientPk] [int] NOT NULL,
	[PNCRegisterNumber] [nvarchar](50) NULL,
	[SiteCode] [int] NOT NULL,
	[EMR] [nvarchar](30) NULL,
	[FacilityName] [nvarchar](120) NULL,
	[Project] [nvarchar](50) NULL,
	[DateExtracted] [date] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [date] NULL,
	[PNCVisitNo] [int] NULL,
	[DeliveryDate] [date] NULL,
	[ModeOfDelivery] [nvarchar](50) NULL,
	[PlaceOfDelivery] [nvarchar](70) NULL,
	[Height] [decimal](18, 2) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[MUAC] [int] NULL,
	[BP] [int] NULL,
	[BreastExam] [nvarchar](20) NULL,
	[GeneralCondition] [nvarchar](10) NULL,
	[HasPallor] [nvarchar](10) NULL,
	[Pallor] [nvarchar](10) NULL,
	[Breast] [nvarchar](20) NULL,
	[PPH] [nvarchar](15) NULL,
	[CSScar] [nvarchar](50) NULL,
	[UterusInvolution] [nvarchar](50) NULL,
	[Episiotomy] [nvarchar](30) NULL,
	[Lochia] [nvarchar](30) NULL,
	[Fistula] [nvarchar](30) NULL,
	[MaternalComplications] [nvarchar](20) NULL,
	[TBScreening] [nvarchar](20) NULL,
	[ClientScreenedCACx] [nvarchar](5) NULL,
	[CACxScreenMethod] [nvarchar](20) NULL,
	[CACxScreenResults] [nvarchar](20) NULL,
	[PriorHIVStatus] [nvarchar](20) NULL,
	[HIVTestingDone] [nvarchar](5) NULL,
	[HIVTest1] [nvarchar](30) NULL,
	[HIVTest1Result] [nvarchar](20) NULL,
	[HIVTest2] [nvarchar](20) NULL,
	[HIVTest2Result] [nvarchar](20) NULL,
	[HIVTestFinalResult] [nvarchar](20) NULL,
	[InfantProphylaxisGiven] [nvarchar](5) NULL,
	[MotherProphylaxisGiven] [nvarchar](3) NULL,
	[CoupleCounselled] [nvarchar](5) NULL,
	[PartnerHIVTestingPNC] [nvarchar](5) NULL,
	[PartnerHIVResultPNC] [nvarchar](20) NULL,
	[CounselledOnFP] [nvarchar](5) NULL,
	[ReceivedFP] [nvarchar](50) NULL,
	[HaematinicsGiven] [nvarchar](5) NULL,
	[DeliveryOutcome] [nvarchar](20) NULL,
	[BabyConditon] [nvarchar](10) NULL,
	[BabyFeeding] [nvarchar](30) NULL,
	[UmbilicalCord] [nvarchar](30) NULL,
	[Immunization] [nvarchar](10) NULL,
	[InfantFeeding] [nvarchar](5) NULL,
	[PreventiveServices] [nvarchar](20) NULL,
	[ReferredFrom] [nvarchar](50) NULL,
	[ReferredTo] [nvarchar](50) NULL,
	[NextAppointmentPNC] [date] NULL,
	[ClinicalNotes] [nvarchar](max) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PatientMnchIDHash] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PregnancyAsATInitiation]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PregnancyAsATInitiation](
	[PatientID] [varchar](100) NULL,
	[PatientPK] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[PregnantARTStart] [int] NOT NULL,
	[PregnantAtEnrol] [int] NOT NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_AdverseEvent]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_AdverseEvent](
	[Id] [nvarchar](150) NULL,
	[RefId] [nvarchar](150) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NULL,
	[SiteCode] [int] NULL,
	[Emr] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](150) NULL,
	[Status] [nvarchar](100) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](150) NULL,
	[FacilityName] [nvarchar](150) NULL,
	[PrepNumber] [nvarchar](150) NULL,
	[AdverseEvent] [nvarchar](150) NULL,
	[AdverseEventStartDate] [datetime2](7) NULL,
	[AdverseEventEndDate] [datetime2](7) NULL,
	[Severity] [nvarchar](50) NULL,
	[VisitDate] [datetime2](7) NULL,
	[AdverseEventActionTaken] [nvarchar](100) NULL,
	[AdverseEventClinicalOutcome] [nvarchar](50) NULL,
	[AdverseEventIsPregnant] [nvarchar](10) NULL,
	[AdverseEventCause] [nvarchar](150) NULL,
	[AdverseEventRegimen] [nvarchar](50) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](50) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_BehaviourRisk]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_BehaviourRisk](
	[Id] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NULL,
	[SiteCode] [int] NULL,
	[Emr] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](50) NULL,
	[FacilityName] [nvarchar](100) NULL,
	[PrepNumber] [nvarchar](30) NULL,
	[HtsNumber] [nvarchar](50) NULL,
	[VisitDate] [datetime2](7) NULL,
	[VisitID] [int] NULL,
	[SexPartnerHIVStatus] [nvarchar](150) NULL,
	[IsHIVPositivePartnerCurrentonART] [nvarchar](150) NULL,
	[IsPartnerHighrisk] [nvarchar](150) NULL,
	[PartnerARTRisk] [nvarchar](150) NULL,
	[ClientAssessments] [nvarchar](300) NULL,
	[ClientRisk] [nvarchar](150) NULL,
	[ClientWillingToTakePrep] [nvarchar](150) NULL,
	[PrEPDeclineReason] [nvarchar](200) NULL,
	[RiskReductionEducationOffered] [nvarchar](150) NULL,
	[ReferralToOtherPrevServices] [nvarchar](max) NULL,
	[FirstEstablishPartnerStatus] [datetime2](7) NULL,
	[PartnerEnrolledtoCCC] [datetime2](7) NULL,
	[HIVPartnerCCCnumber] [nvarchar](30) NULL,
	[HIVPartnerARTStartDate] [datetime2](7) NULL,
	[MonthsknownHIVSerodiscordant] [nvarchar](10) NULL,
	[SexWithoutCondom] [nvarchar](5) NULL,
	[NumberofchildrenWithPartner] [nvarchar](5) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](150) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_CareTermination]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_CareTermination](
	[Id] [nvarchar](150) NULL,
	[RefId] [nvarchar](150) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NULL,
	[SiteCode] [int] NULL,
	[Emr] [nvarchar](150) NULL,
	[Project] [nvarchar](150) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](150) NULL,
	[Status] [nvarchar](150) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](150) NULL,
	[FacilityName] [nvarchar](150) NULL,
	[PrepNumber] [nvarchar](150) NULL,
	[HtsNumber] [nvarchar](150) NULL,
	[ExitDate] [datetime2](7) NULL,
	[ExitReason] [nvarchar](150) NULL,
	[DateOfLastPrepDose] [datetime2](7) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](150) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_Lab]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_Lab](
	[Id] [nvarchar](150) NULL,
	[RefId] [nvarchar](150) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NULL,
	[SiteCode] [int] NULL,
	[Emr] [nvarchar](150) NULL,
	[Project] [nvarchar](150) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](150) NULL,
	[Status] [nvarchar](150) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](150) NULL,
	[FacilityName] [nvarchar](150) NULL,
	[PrepNumber] [nvarchar](150) NULL,
	[HtsNumber] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[TestName] [nvarchar](150) NULL,
	[TestResult] [nvarchar](150) NULL,
	[SampleDate] [datetime2](7) NULL,
	[TestResultDate] [datetime2](7) NULL,
	[Reason] [nvarchar](150) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](150) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_Patient]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_Patient](
	[Id] [nvarchar](150) NULL,
	[RefId] [nvarchar](150) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NULL,
	[SiteCode] [int] NULL,
	[Emr] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](150) NULL,
	[Status] [nvarchar](50) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](150) NULL,
	[FacilityName] [nvarchar](150) NULL,
	[PrepNumber] [nvarchar](150) NULL,
	[HtsNumber] [nvarchar](150) NULL,
	[PrepEnrollmentDate] [datetime2](7) NULL,
	[Sex] [nvarchar](20) NULL,
	[DateofBirth] [datetime2](7) NULL,
	[CountyofBirth] [nvarchar](150) NULL,
	[County] [nvarchar](150) NULL,
	[SubCounty] [nvarchar](150) NULL,
	[Location] [nvarchar](150) NULL,
	[LandMark] [nvarchar](150) NULL,
	[Ward] [nvarchar](150) NULL,
	[ClientType] [nvarchar](50) NULL,
	[ReferralPoint] [nvarchar](50) NULL,
	[MaritalStatus] [nvarchar](100) NULL,
	[Inschool] [nvarchar](20) NULL,
	[PopulationType] [nvarchar](50) NULL,
	[KeyPopulationType] [nvarchar](100) NULL,
	[Refferedfrom] [nvarchar](50) NULL,
	[TransferIn] [nvarchar](50) NULL,
	[TransferInDate] [datetime2](7) NULL,
	[TransferFromFacility] [nvarchar](150) NULL,
	[DatefirstinitiatedinPrepCare] [datetime2](7) NULL,
	[DateStartedPrEPattransferringfacility] [datetime2](7) NULL,
	[ClientPreviouslyonPrep] [nvarchar](150) NULL,
	[PrevPrepReg] [nvarchar](100) NULL,
	[DateLastUsedPrev] [datetime2](7) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](100) NULL,
	[PatientPk_Hash] [nvarchar](150) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_Pharmacy]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_Pharmacy](
	[Id] [nvarchar](150) NULL,
	[RefId] [nvarchar](150) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](150) NULL,
	[Project] [nvarchar](150) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](150) NULL,
	[Status] [nvarchar](150) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [nvarchar](150) NULL,
	[FacilityName] [nvarchar](150) NULL,
	[PrepNumber] [nvarchar](150) NULL,
	[HtsNumber] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[RegimenPrescribed] [nvarchar](150) NULL,
	[DispenseDate] [datetime2](7) NULL,
	[Duration] [decimal](18, 2) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](150) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrEP_Visits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrEP_Visits](
	[Id] [nvarchar](150) NULL,
	[RefId] [nvarchar](150) NULL,
	[Created] [datetime2](7) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](150) NULL,
	[Processed] [bit] NULL,
	[QueueId] [nvarchar](150) NULL,
	[Status] [nvarchar](150) NULL,
	[StatusDate] [datetime2](7) NULL,
	[DateExtracted] [datetime2](7) NULL,
	[FacilityId] [uniqueidentifier] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[PrepNumber] [nvarchar](150) NULL,
	[HtsNumber] [nvarchar](50) NULL,
	[EncounterId] [nvarchar](50) NULL,
	[VisitID] [nvarchar](50) NULL,
	[VisitDate] [datetime2](7) NULL,
	[BloodPressure] [nvarchar](20) NULL,
	[Temperature] [nvarchar](20) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Height] [decimal](18, 2) NULL,
	[BMI] [decimal](18, 2) NULL,
	[STIScreening] [nvarchar](20) NULL,
	[STISymptoms] [nvarchar](50) NULL,
	[STITreated] [nvarchar](20) NULL,
	[Circumcised] [nvarchar](20) NULL,
	[VMMCReferral] [nvarchar](20) NULL,
	[LMP] [datetime2](7) NULL,
	[MenopausalStatus] [nvarchar](50) NULL,
	[PregnantAtThisVisit] [nvarchar](20) NULL,
	[EDD] [datetime2](7) NULL,
	[PlanningToGetPregnant] [nvarchar](20) NULL,
	[PregnancyPlanned] [nvarchar](20) NULL,
	[PregnancyEnded] [nvarchar](20) NULL,
	[PregnancyEndDate] [datetime2](7) NULL,
	[PregnancyOutcome] [nvarchar](20) NULL,
	[BirthDefects] [nvarchar](10) NULL,
	[Breastfeeding] [nvarchar](20) NULL,
	[FamilyPlanningStatus] [nvarchar](50) NULL,
	[FPMethods] [nvarchar](100) NULL,
	[AdherenceDone] [nvarchar](20) NULL,
	[AdherenceOutcome] [nvarchar](20) NULL,
	[AdherenceReasons] [nvarchar](20) NULL,
	[SymptomsAcuteHIV] [nvarchar](20) NULL,
	[ContraindicationsPrep] [nvarchar](100) NULL,
	[PrepTreatmentPlan] [nvarchar](20) NULL,
	[PrepPrescribed] [nvarchar](30) NULL,
	[RegimenPrescribed] [nvarchar](30) NULL,
	[MonthsPrescribed] [nvarchar](20) NULL,
	[CondomsIssued] [nvarchar](20) NULL,
	[Tobegivennextappointment] [nvarchar](30) NULL,
	[Reasonfornotgivingnextappointment] [nvarchar](50) NULL,
	[HepatitisBPositiveResult] [nvarchar](30) NULL,
	[HepatitisCPositiveResult] [nvarchar](10) NULL,
	[VaccinationForHepBStarted] [nvarchar](30) NULL,
	[TreatedForHepB] [nvarchar](30) NULL,
	[VaccinationForHepCStarted] [nvarchar](30) NULL,
	[TreatedForHepC] [nvarchar](20) NULL,
	[NextAppointment] [datetime2](7) NULL,
	[ClinicalNotes] [nvarchar](300) NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[CKV] [nvarchar](100) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL,
	[PrepNumberHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stg_MNCH_CwcVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stg_MNCH_CwcVisits](
	[PatientMnchID] [nvarchar](50) NULL,
	[PatientPk] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](100) NULL,
	[EMR] [nvarchar](30) NULL,
	[Project] [nvarchar](50) NULL,
	[DateExtracted] [date] NULL,
	[VisitDate] [date] NULL,
	[VisitID] [int] NULL,
	[Height] [decimal](18, 2) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[MUAC] [int] NULL,
	[WeightCategory] [nvarchar](20) NULL,
	[Stunted] [nvarchar](10) NULL,
	[InfantFeeding] [nvarchar](30) NULL,
	[MedicationGiven] [nvarchar](20) NULL,
	[TBAssessment] [nvarchar](15) NULL,
	[MNPsSupplementation] [nvarchar](30) NULL,
	[Immunization] [nvarchar](10) NULL,
	[DangerSigns] [nvarchar](10) NULL,
	[Milestones] [nvarchar](20) NULL,
	[VitaminA] [nvarchar](5) NULL,
	[Disability] [nvarchar](5) NULL,
	[ReceivedMosquitoNet] [nvarchar](10) NULL,
	[Dewormed] [nvarchar](30) NULL,
	[ReferredFrom] [nvarchar](50) NULL,
	[ReferredTo] [nvarchar](650) NULL,
	[ReferralReasons] [nvarchar](100) NULL,
	[FollowUP] [nvarchar](30) NULL,
	[NextAppointment] [date] NULL,
	[Date_Created] [datetime2](7) NULL,
	[Date_Last_Modified] [datetime2](7) NULL,
	[PatientPKHash] [nvarchar](100) NULL,
	[CKVHash] [nvarchar](100) NULL,
	[PatientIDHash] [nvarchar](100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[lkp_AdherenceCategoryMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_AdherenceMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_AdverseEventsMappings] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[Lkp_ContactRelation] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[Lkp_EducationLevel] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_ExitReasonMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_MaritalStatus] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_PatientSourceMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_PreARTVisitDates] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_PregnantMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_RegimenLineMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_RegimenMap] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_RegionMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_StartRegimenMap] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_ViralLoadMapping] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_VisitDates] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lkp_WHOStage] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
ALTER TABLE [dbo].[lpEncounter] ADD  DEFAULT (getdate()) FOR [DateImported]
GO
/****** Object:  StoredProcedure [dbo].[DataCleanUPAndstandardardization]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[DataCleanUPAndstandardardization]
AS
BEGIN
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
	UPDATE CT_PatientsWABWHOCD4
		SET bWHODate = CAST('1900-01-01' AS DATE)
	WHERE bWHODate < CAST('1980-01-01' AS DATE) OR bWHODate > GETDATE();

	-- clean bCD4
	UPDATE CT_PatientsWABWHOCD4
		SET bCD4 = 999
	WHERE bCD4 < 0 ;

	-- clean bCD4Date
	UPDATE CT_PatientsWABWHOCD4
		SET bCD4Date = CAST('1900-01-01' AS DATE)
	WHERE bCD4Date < CAST('1980-01-01' AS DATE) OR bCD4Date > GETDATE();

	------Update Date of Birth to missing where Year <1910------------------------------

	------Update Date of Birth to missing where Year <1910------------------------------
	UPDATE ODS.dbo.CT_Patients   SET DOB =CAST ('1900-01-01' as DATE) where (DOB) < CAST ('1910-01-01' AS DATE)
	;

	UPDATE ODS.dbo.CT_Patients   SET DOB =CAST ('1900-01-01' as DATE) where (DOB) > GETDATE()
	;
	-------------------Update MaritalStatus-------------------------------------------------------------
	UPDATE M SET MaritalStatus = T.Target_MaritalStatus
	from ODS.dbo.CT_Patients M
	inner JOIN ODS.[dbo].lkp_MaritalStatus T
	on M.MaritalStatus = T.Source_MaritalStatus;

	-------------------Update EducationLevel-------------------------------------------------------------
	UPDATE   M  SET  M.EducationLevel= T.TargetEducationLevel   from ODS.dbo.CT_Patients M 
	INNER JOIN Lkp_EducationLevel T  ON M.EducationLevel = T.SourceEducationLevel
	--WHERE M.DateImported = CAST(GETDATE() AS DATE) OR M.DateImported = CAST(GETDATE()-1 AS DATE)
	;

	-------------------Update RegistrationDates-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients   SET RegistrationDate =cast ('1900-01-01' as date) where Year (RegistrationDate) <1980
	;
	UPDATE ODS.dbo.CT_Patients   SET RegistrationDate =cast ('1900-01-01' as date) where Year (RegistrationDate) > GETDATE()
	;

	UPDATE ODS.dbo.CT_Patients   SET RegistrationAtCCC =cast ('1900-01-01' as date) where Year (RegistrationAtCCC) <1980
	;
	UPDATE ODS.dbo.CT_Patients   SET RegistrationAtCCC =cast ('1900-01-01' as date) where Year (RegistrationAtCCC) > GETDATE()
	;

	UPDATE ODS.dbo.CT_Patients   SET RegistrationAtPMTCT =cast ('1900-01-01' as date) where Year (RegistrationAtPMTCT) <1980
	;
	UPDATE ODS.dbo.CT_Patients   SET RegistrationAtPMTCT =cast ('1900-01-01' as date) where Year (RegistrationAtPMTCT) > GETDATE()
	;

	UPDATE ODS.dbo.CT_Patients   SET RegistrationAtTBClinic =cast ('1900-01-01' as date) where Year (RegistrationAtTBClinic) <1980
	;
	UPDATE ODS.dbo.CT_Patients   SET RegistrationAtTBClinic =cast ('1900-01-01' as date) where Year (RegistrationAtTBClinic) > GETDATE()
	;
	-------------------Update PreviousARTStartDates-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients   SET PreviousARTStartDate =cast ('1900-01-01' as date) where Year (PreviousARTStartDate) <1980
	;
	UPDATE ODS.dbo.CT_Patients   SET PreviousARTStartDate =cast ('1900-01-01' as date) where Year (PreviousARTStartDate) > GETDATE()
	;
	-------------------Update LastVisitDates-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients   SET LastVisit =cast ('1900-01-01' as date) where Year (LastVisit) <1980
	UPDATE ODS.dbo.CT_Patients   SET LastVisit =cast ('1900-01-01' as date) where Year (LastVisit) >GETDATE()
	;

	-------------------Update EMR-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients  SET Emr = CASE
					WHEN Emr = 'Open Medical Records System - OpenMRS' THEN  'OpenMRS'
					WHEN Emr = 'Ampath AMRS' THEN 'AMRS'
				END
	WHERE Emr IN ('Open Medical Records System - OpenMRS', 'Ampath AMRS')
	;
	-------------------Update Project-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients  SET Project = CASE
					WHEN Project  in ('AMPATH','Ampath Plus', 'Ampathplus') THEN  'AMPATH'
					 WHEN Project  in ('CHAP Uzima','EDARP','IRDO','UCSF Clinical Kisumu','Kenya HMIS II') THEN  'Kenya HMIS II'
				   ELSE Project
				END;
	-------------------Update Orphan-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients  SET Orphan = CASE
					WHEN Orphan  in ('NOT WORKING NOW', '') THEN  'NOT PROVIDED'
					WHEN orphan is null THEN 'NOT PROVIDED'
				END
				where Orphan in ('NOT WORKING NOW','');
	-------------------Update PatientType-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients  SET PatientType = CASE
					WHEN PatientType  in ('New', 'New client','Re-enroll') THEN  'New Client'
					WHEN PatientType in  ('Transfer in','Transfer-In') THEN 'Transfer in'
					WHEN PatientType='Transit' THEN 'Transit'
				END
				where PatientType in ('New', 'New client','Re-enroll','Transfer in','Transfer-In','Transit','')
	;

	-------------------Update Regimen-------------------------------------------------------------
	UPDATE   M  SET  M.PreviousARTExposure= T.Target_Regimen   from ODS.dbo.CT_Patients M 
	INNER JOIN lkp_RegimenMap T  ON M.PreviousARTExposure = T.Source_Regimen;

	-------------------Update Inschool-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients  SET Inschool = CASE
					WHEN  Inschool in ('New', 'New client','Re-enroll') THEN  'New Client'
					WHEN Inschool in  ('Transfer in','Transfer-In') THEN 'Transfer in'
					WHEN Inschool='Transit' THEN 'Transit'
				END
				where Inschool in ('New', 'New client','Re-enroll','Transfer in','Transfer-In','Transit','')
	;
	-------------------Update PopulationType-------------------------------------------------------------
	UPDATE ODS.dbo.CT_Patients  SET PopulationType = CASE
					WHEN  PopulationType in ('General Population', 'General Population','GeneralPopulation') THEN  ' General Population'
					WHEN PopulationType in  ('FSW','Female Having Sex With Female',' Key Population','Key population') THEN ' Key Population'			
				END
				where PopulationType in ('General Population', 'General Population','GeneralPopulation','FSW','Female Having Sex With Female',' Key Population','Key population','')
	;
	UPDATE ODS.dbo.CT_Patients  SET KeyPopulationType = CASE
					WHEN  KeyPopulationType in ('MSM', 'MSW') THEN  'MSM'
					WHEN KeyPopulationType ='FSW' THEN 'FSW'
					WHEN KeyPopulationType='PWID' THEN 'PWID'
					WHEN KeyPopulationType='Transgender' THEN 'Transgender'	
				END
				where KeyPopulationType in ('MSM','MSW','FSW','PWID','N/A','Transgender','')
	;
-------------------Update PatientResidentCounty-------------------------------------------------------------

	UPDATE   CT_Patients  SET  CT_Patients.PatientResidentCounty=NULL;

	---------------------------------UpdatePatientSource--------------------------------------------------
	UPDATE   M  SET  M.PatientSource= T.target_name  from ODS.dbo.CT_Patients M 
	INNER JOIN lkp_patient_source T  ON M.PatientSource = T.source_name
	;

	UPDATE ODS.dbo.CT_Patients   SET DateConfirmedHIVPositive =cast ('1900-01-01' as date) where Year (DateConfirmedHIVPositive) >GETDATE()
	;

	UPDATE ODS.dbo.CT_Patients   SET DateConfirmedHIVPositive =cast ('1900-01-01' as date) where Year (DateConfirmedHIVPositive) < 1980
	;

	UPDATE ODS.dbo.CT_Patients   SET TransferInDate =cast ('1900-01-01' as date) where Year (TransferInDate) >GETDATE()
	;

	UPDATE ODS.dbo.CT_Patients   SET TransferInDate =cast ('1900-01-01' as date) where Year (TransferInDate) < 1980
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
END

GO
/****** Object:  StoredProcedure [dbo].[Load_CT_AdverseEvents]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_AdverseEvents]   
AS 
	BEGIN
			CREATE INDEX CT_AdverseEvents  ON [ODS].[dbo].[CT_AdverseEvents] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_AdverseEvents]
			MERGE [ODS].[dbo].[CT_AdverseEvents] AS a
				USING(SELECT 
							P.[PatientCccNumber] AS PatientID, 
							P.[PatientPID] AS PatientPK,
							F.Name AS FacilityName, 
							F.Code AS SiteCode,
							[AdverseEvent], [AdverseEventStartDate], [AdverseEventEndDate], 
							CASE [Severity]
								WHEN '1' THEN 'Mild'
								WHEN '2' THEN 'Moderate'
								WHEN '3' THEN 'Severe' 
								ELSE [Severity] 
							END AS [Severity] , 
							[VisitDate], 
							PA.[EMR], PA.[Project], [AdverseEventCause], [AdverseEventRegimen],
							[AdverseEventActionTaken],[AdverseEventClinicalOutcome], [AdverseEventIsPregnant], 
							LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV,
							GETDATE() AS dateimported
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					INNER JOIN [DWAPICentral].[dbo].PatientAdverseEventExtract(NoLock) PA ON PA.[PatientId]= P.ID AND PA.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0 ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
							a.PatientID						=b.PatientID,
							a.Patientpk						=b.Patientpk,
							a.SiteCode						=b.SiteCode,
							a.AdverseEvent					=b.AdverseEvent,
							a.AdverseEventStartDate			=b.AdverseEventStartDate,
							a.AdverseEventEndDate			=b.AdverseEventEndDate,
							a.Severity						=b.Severity,
							a.VisitDate						=b.VisitDate,
							a.EMR							=b.EMR,
							a.Project						=b.Project,
							a.AdverseEventCause				=b.AdverseEventCause,
							a.AdverseEventRegimen			=b.AdverseEventRegimen,
							a.AdverseEventActionTaken		=b.AdverseEventActionTaken,
							a.AdverseEventClinicalOutcome	=b.AdverseEventClinicalOutcome,
							a.AdverseEventIsPregnant		=b.AdverseEventIsPregnant,
							a.CKV							=b.CKV														
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,Patientpk,SiteCode,AdverseEvent,AdverseEventStartDate,AdverseEventEndDate,Severity,VisitDate,EMR,Project,AdverseEventCause,AdverseEventRegimen,AdverseEventActionTaken,AdverseEventClinicalOutcome,dateimported,AdverseEventIsPregnant,CKV) 
						VALUES(PatientID,Patientpk,SiteCode,AdverseEvent,AdverseEventStartDate,AdverseEventEndDate,Severity,VisitDate,EMR,Project,AdverseEventCause,AdverseEventRegimen,AdverseEventActionTaken,AdverseEventClinicalOutcome,dateimported,AdverseEventIsPregnant,CKV);
				
					DROP INDEX CT_Patient ON [ODS].[dbo].[CT_AdverseEvents];
					---Remove any duplicate from [ODS].[dbo].[CT_Patient]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode] 
							ORDER BY [PatientPK],[SiteCode]) AS dump_ 
							FROM [ODS].[dbo].[CT_AdverseEvents] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_AdverseEvents_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_AdverseEvents_Optimized] 
AS 
	BEGIN
	       DECLARE @MaxAdverseEventStartDate_Hist			DATETIME,
				   @AdverseEventStartDate					DATETIME
				
		SELECT @MaxAdverseEventStartDate_Hist =  MAX(MaxAdverseEventStartDate) FROM [ODS].[dbo].[CT_AdverseEvent_Log]  (NoLock)
		SELECT @AdverseEventStartDate = MAX(AdverseEventStartDate) FROM [DWAPICentral].[dbo].PatientAdverseEventExtract	WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_AdverseEvent_Log](NoLock) WHERE MaxAdverseEventStartDate = @AdverseEventStartDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_AdverseEvent_Log](MaxAdverseEventStartDate,LoadStartDateTime)
					VALUES(@AdverseEventStartDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_AdverseEvents](PatientID,Patientpk,SiteCode,AdverseEvent,AdverseEventStartDate,AdverseEventEndDate,Severity,VisitDate,EMR,Project,AdverseEventCause,AdverseEventRegimen,AdverseEventActionTaken,AdverseEventClinicalOutcome,dateimported,AdverseEventIsPregnant,CKV)
					SELECT 
							P.[PatientCccNumber] AS PatientID, 
							P.[PatientPID] AS PatientPK,
							F.Name AS FacilityName, 
							F.Code AS SiteCode,
							[AdverseEvent], [AdverseEventStartDate], [AdverseEventEndDate], 
							CASE [Severity]
								WHEN '1' THEN 'Mild'
								WHEN '2' THEN 'Moderate'
								WHEN '3' THEN 'Severe' 
								ELSE [Severity] 
							END AS [Severity] , 
							[VisitDate], 
							PA.[EMR], PA.[Project], [AdverseEventCause], [AdverseEventRegimen],
							[AdverseEventActionTaken],[AdverseEventClinicalOutcome], [AdverseEventIsPregnant], 
							LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV

					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					INNER JOIN [DWAPICentral].[dbo].PatientAdverseEventExtract(NoLock) PA ON PA.[PatientId]= P.ID AND PA.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE AdverseEventStartDate > @MaxAdverseEventStartDate_Hist
					

					UPDATE [ODS].[dbo].[CT_AdverseEvent_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxAdverseEventStartDate = @AdverseEventStartDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_AdverseEvents] 
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_AdverseEvents] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END

GO
/****** Object:  StoredProcedure [dbo].[Load_CT_All_EMRSites]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_All_EMRSites]    
AS 
	BEGIN
	       ---- Refresh [ODS].[dbo].[ALL_EMRSites]
			MERGE [ODS].[dbo].[ALL_EMRSites] AS a
				USING(SELECT  [MFL_Code] MFL_Code
							  ,[Facility Name] Facility_Name
							  ,[County] County
							  ,[SubCounty]   SubCounty
							  ,[Owner]   Owner
							  ,[Latitude]   Latitude
							  ,[Longitude]   Longitude
							  ,[SDP]   SDP
							  ,[SDP Agency]   SDP_Agency
							  ,[Implementation]   Implementation
							  ,[EMR]   EMR
							  ,[EMR Status]   EMR_Status
							  ,[HTS Use]   HTS_Use
							  ,[HTS Deployment]   HTS_Deployment
							  ,[HTS Status]   HTS_Status
							  ,[IL Status]   IL_Status
							  ,[Registration IE]   Registration_IE
							  ,[Phamarmacy IE]   Phamarmacy_IE
							  ,[mlab]   mlab
							  ,[Ushauri]   Ushauri
							  ,[Nishauri]   Nishauri
							  ,[Appointment Management IE]   Appointment_Management_IE
							  ,[OVC]   OVC
							  ,[OTZ]   OTZ
							  ,[PrEP]   PrEP
							  ,[3PM]   _3PM
							  ,[AIR]   AIR
							  ,[KP]   KP
							  ,[MCH]   MCH
							  ,[TB]   TB
							  ,[Lab Manifest]   Lab_Manifest
							  ,[Comments]   Comments
							  ,[Project]   Project

						  FROM [197.248.44.225].[HIS_Implementation].[DBO].[ALL_EMRSites] ) AS b 
						ON(a.[MFL_Code] COLLATE SQL_Latin1_General_CP1_CI_AS = b.[MFL_Code] COLLATE SQL_Latin1_General_CP1_CI_AS
								)
			--WHEN MATCHED THEN
			--UPDATE SET 
			--a.FacilityName = B.FacilityName
			WHEN NOT MATCHED THEN 
			INSERT(MFL_Code,[Facility Name],County,SubCounty,[Owner],Latitude,Longitude,SDP,[SDP Agency],Implementation,EMR,[EMR Status],[HTS Use],[HTS Deployment],[HTS Status],[IL Status],[Registration IE],[Phamarmacy IE],mlab,Ushauri,Nishauri,[Appointment Management IE],OVC,OTZ,PrEP,[3PM],AIR,KP,MCH,TB,[Lab Manifest],[Comments],[Project]) 
			VALUES(MFL_Code,Facility_Name,County,SubCounty,[Owner],Latitude,Longitude,SDP,SDP_Agency,Implementation,EMR
			,EMR_Status,HTS_Use,HTS_Deployment,HTS_Status,IL_Status,Registration_IE,Phamarmacy_IE,mlab,Ushauri,Nishauri,Appointment_Management_IE,OVC,OTZ,PrEP,_3PM,AIR,KP,MCH,TB,Lab_Manifest,[Comments],[Project]);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			--WITH CTE AS   
			--	(  
			--		SELECT [PatientID],[PatientPK],[SiteCode],ROW_NUMBER() 
			--		OVER (PARTITION BY [PatientID],[PatientPK],[SiteCode] 
			--		ORDER BY [PatientID],[PatientPK],[SiteCode]) AS dump_ 
			--		FROM [ODS].[dbo].[ALL_EMRSites]
			--		)  
			
			--DELETE FROM CTE WHERE dump_ >1;

END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_AllergiesChronicIllness]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_AllergiesChronicIllness]    
AS 
	BEGIN
			CREATE INDEX CT_AllergiesChronicIllness ON [ODS].[dbo].[CT_AllergiesChronicIllness] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_AllergiesChronicIllness]
			MERGE [ODS].[dbo].[CT_AllergiesChronicIllness] AS a
				USING(SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,
						F.Name AS FacilityName,ACI.[VisitId] AS VisitID,ACI.[VisitDate] AS VisitDate, P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						ACI.[ChronicIllness] AS ChronicIllness,ACI.[ChronicOnsetDate] AS ChronicOnsetDate,ACI.[knownAllergies] AS knownAllergies,
						ACI.[AllergyCausativeAgent] AS AllergyCausativeAgent,ACI.[AllergicReaction] AS AllergicReaction,ACI.[AllergySeverity] AS AllergySeverity,
						ACI.[AllergyOnsetDate] AS AllergyOnsetDate,ACI.[Skin] AS Skin,ACI.[Eyes] AS Eyes,ACI.[ENT] AS ENT,ACI.[Chest] AS Chest,ACI.[CVS] AS CVS,
						ACI.[Abdomen] AS Abdomen,ACI.[CNS] AS CNS,ACI.[Genitourinary] AS Genitourinary,GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[AllergiesChronicIllnessExtract](NoLock) ACI ON ACI.[PatientId] = P.ID AND ACI.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
							a.PatientID				=b.PatientID,
							a.PatientPK				=b.PatientPK,
							a.SiteCode				=b.SiteCode,
							a.FacilityName			=b.FacilityName,
							a.VisitID				=b.VisitID,
							a.VisitDate				=b.VisitDate,
							a.Emr					=b.Emr,
							a.Project				=b.Project,
							a.ChronicIllness		=b.ChronicIllness,
							a.ChronicOnsetDate		=b.ChronicOnsetDate,
							a.knownAllergies		=b.knownAllergies,
							a.AllergyCausativeAgent	=b.AllergyCausativeAgent,
							a.AllergicReaction		=b.AllergicReaction,
							a.AllergySeverity		=b.AllergySeverity,
							a.AllergyOnsetDate		=b.AllergyOnsetDate,
							a.Skin					=b.Skin,
							a.Eyes					=b.Eyes,
							a.ENT					=b.ENT,
							a.Chest					=b.Chest,
							a.CVS					=b.CVS,
							a.Abdomen				=b.Abdomen,
							a.CNS					=b.CNS,
							a.Genitourinary			=b.Genitourinary,
							a.DateImported			=b.DateImported,
							a.CKV					=b.CKV

				
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,ChronicIllness,ChronicOnsetDate,knownAllergies,AllergyCausativeAgent,AllergicReaction,AllergySeverity,AllergyOnsetDate,Skin,Eyes,ENT,Chest,CVS,Abdomen,CNS,Genitourinary,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,ChronicIllness,ChronicOnsetDate,knownAllergies,AllergyCausativeAgent,AllergicReaction,AllergySeverity,AllergyOnsetDate,Skin,Eyes,ENT,Chest,CVS,Abdomen,CNS,Genitourinary,DateImported,CKV);
				
					DROP INDEX CT_AllergiesChronicIllness ON [ODS].[dbo].[CT_AllergiesChronicIllness];
					---Remove any duplicate from [ODS].[dbo].[CT_AllergiesChronicIllness]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode] 
							ORDER BY [PatientPK],[SiteCode]) AS dump_ 
							FROM [ODS].[dbo].[CT_AllergiesChronicIllness] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_AllergiesChronicIllness_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_AllergiesChronicIllness_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_AllergiesChronicIllness_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[AllergiesChronicIllnessExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_AllergiesChronicIllness_Log](NoLock) WHERE MaxVisitDate = @VisitDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_AllergiesChronicIllness_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@VisitDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_AllergiesChronicIllness](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,
					ChronicIllness,ChronicOnsetDate,knownAllergies,AllergyCausativeAgent,AllergicReaction,AllergySeverity,
					AllergyOnsetDate,Skin,Eyes,ENT,Chest,CVS,Abdomen,CNS,Genitourinary,DateImported,CKV)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,
						F.Name AS FacilityName,ACI.[VisitId] AS VisitID,ACI.[VisitDate] AS VisitDate, P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						ACI.[ChronicIllness] AS ChronicIllness,ACI.[ChronicOnsetDate] AS ChronicOnsetDate,ACI.[knownAllergies] AS knownAllergies,
						ACI.[AllergyCausativeAgent] AS AllergyCausativeAgent,ACI.[AllergicReaction] AS AllergicReaction,ACI.[AllergySeverity] AS AllergySeverity,
						ACI.[AllergyOnsetDate] AS AllergyOnsetDate,ACI.[Skin] AS Skin,ACI.[Eyes] AS Eyes,ACI.[ENT] AS ENT,ACI.[Chest] AS Chest,ACI.[CVS] AS CVS,
						ACI.[Abdomen] AS Abdomen,ACI.[CNS] AS CNS,ACI.[Genitourinary] AS Genitourinary,GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[AllergiesChronicIllnessExtract](NoLock) ACI ON ACI.[PatientId] = P.ID AND ACI.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown' and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_AllergiesChronicIllness_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @VisitDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_AllergiesChronicIllness]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],VisitDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],VisitDate
					ORDER BY [PatientPK],[SiteCode],VisitDate) AS dump_ 
					FROM [ODS].[dbo].[CT_AllergiesChronicIllness]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_ARTPatient]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_ARTPatient]    
AS 
	BEGIN
			INSERT into [ODS].[dbo].[CT_ARTPatients] (PatientID,PatientPK,SiteCode,FacilityName,AgeEnrollment,
								AgeARTStart,AgeLastVisit,RegistrationDate,PatientSource,Gender,StartARTDate,PreviousARTStartDate,
								PreviousARTRegimen,StartARTAtThisFacility,StartRegimen,StartRegimenLine,LastARTDate,LastRegimen,
								LastRegimenLine,Duration,ExpectedReturn,Provider,LastVisit,ExitReason,ExitDate,Emr,
								Project,[DOB],CKV,PreviousARTUse,PreviousARTPurpose,DateLastUsed,DateAsOf) 
			SELECT  
				P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName, PA.[AgeEnrollment]
				,PA.[AgeARTStart],PA.[AgeLastVisit],PA.[RegistrationDate],PA.[PatientSource],PA.[Gender],PA.[StartARTDate],PA.[PreviousARTStartDate]
				,PA.[PreviousARTRegimen],PA.[StartARTAtThisFacility],PA.[StartRegimen],PA.[StartRegimenLine],PA.[LastARTDate],PA.[LastRegimen]
				,PA.[LastRegimenLine],PA.[Duration],PA.[ExpectedReturn],PA.[Provider],PA.[LastVisit],PA.[ExitReason],PA.[ExitDate],P.[Emr]
						,CASE P.[Project] 
							WHEN 'I-TECH' THEN 'Kenya HMIS II' 
							WHEN 'HMIS' THEN 'Kenya HMIS II'
						ELSE P.[Project] 
						END AS [Project]
						,PA.[DOB]
						,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						--,PA.[Processed]

						--,PA.[Created]
				,PA.[PreviousARTUse]
				,PA.[PreviousARTPurpose]
				,PA.[DateLastUsed]
				,GETDATE () AS DateAsOf
				FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
				INNER JOIN [DWAPICentral].[dbo].[PatientArtExtract](NoLock) PA ON PA.[PatientId]= P.ID AND PA.Voided=0
				INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0 
				WHERE p.gender!='Unknown';
				
				---Remove any duplicate from [ODS].[dbo].[CT_ARTPatients]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_ARTPatients] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_ARTPatients_Old]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_ARTPatients_Old]  
AS 
	BEGIN
	       ---- Refresh [ODS].[dbo].[CT_ARTPatients]
			MERGE [ODS].[dbo].[CT_ARTPatients] AS a
				USING(SELECT  P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK,F.Name AS FacilityName, F.Code AS SiteCode,PA.[AgeEnrollment] AgeEnrollment
					  ,PA.[AgeARTStart] AgeARTStart,PA.[AgeLastVisit] AgeLastVisit,PA.[RegistrationDate] RegistrationDate,PA.[PatientSource] PatientSource
					  ,PA.[StartARTDate] StartARTDate,PA.[PreviousARTStartDate] PreviousARTStartDate,PA.[PreviousARTRegimen] PreviousARTRegimen,PA.[StartARTAtThisFacility] StartARTAtThisFacility
					  ,PA.[StartRegimen] StartRegimen,PA.[StartRegimenLine] StartRegimenLine,PA.[LastARTDate] LastARTDate,PA.[LastRegimen] LastRegimen
					  ,PA.[LastRegimenLine] LastRegimenLine,PA.[Duration] Duration,PA.[ExpectedReturn] ExpectedReturn,PA.[LastVisit] LastVisit
					  ,PA.[ExitReason] ExitReason,PA.[ExitDate] ExitDate,P.[Emr] Emr
					  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project] 
					   END AS [Project] 
					  --,PA.[PatientId]
					  ,PA.[Voided] Voided
					  ,PA.[Processed] Processed
					  ,PA.[DOB] DOB
					  ,PA.[Gender] Gender
					  ,PA.[Provider] [Provider]
					  ,PA.[Created] Created
					  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV
					  , NULL AS [PatientUID]
					  ,PA.[PreviousARTUse] PreviousARTUse
					  ,PA.[PreviousARTPurpose] PreviousARTPurpose
					  ,PA.[DateLastUsed] DateLastUsed

					FROM [DWAPICentral].[dbo].[PatientExtract] P with(NoLock) 
					INNER JOIN [DWAPICentral].[dbo].[PatientArtExtract] PA with(NoLock) ON PA.[PatientId]= P.ID AND PA.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility] F with(NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0 
					--INNER JOIN FacilityManifest_MaxDateRecieved(NoLock) a ON F.Code = a.SiteCode
					---LEFT JOIN All_Staging_2016_2.dbo.stg_Patients TPat ON TPat.PKV=LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID])))
					--GROUP BY  F.Name , YEAR([StartARTDate])
					WHERE p.gender!='Unknown' ) AS b 
						ON(a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS
						and a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)  ----add more checks to uniquely Identify a ARTPatient
						----lastArtDate,Duration,ExpectedReturn,LastRegimen,LastRegimenLine all the possible columns
			--WHEN MATCHED THEN
			--UPDATE SET 
			--a.FacilityName = B.FacilityName
			WHEN NOT MATCHED THEN 
			INSERT(PatientPK,PatientID,DOB,AgeEnrollment,AgeARTStart,AgeLastVisit,SiteCode,FacilityName,RegistrationDate,PatientSource,Gender,StartARTDate,PreviousARTStartDate,PreviousARTRegimen,StartARTAtThisFacility,StartRegimen,StartRegimenLine,LastARTDate,LastRegimen,LastRegimenLine,Duration,ExpectedReturn,Provider,LastVisit,ExitReason,ExitDate,Emr,Project,PKV,PatientUID,PreviousARTUse,PreviousARTPurpose,DateLastUsed) 
			VALUES(PatientPK,PatientID,DOB,AgeEnrollment,AgeARTStart,AgeLastVisit,SiteCode,FacilityName,RegistrationDate,PatientSource,Gender,StartARTDate,PreviousARTStartDate,PreviousARTRegimen,StartARTAtThisFacility,StartRegimen,StartRegimenLine,LastARTDate,LastRegimen,LastRegimenLine,Duration,ExpectedReturn,Provider,LastVisit,ExitReason,ExitDate,Emr,Project,PKV,PatientUID,PreviousARTUse,PreviousARTPurpose,DateLastUsed);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER()  ----PARTITION by the columns
					OVER (PARTITION BY [PatientPK],[SiteCode] 
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_ARTPatients] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			------- Rrefresh DimFacility

			--MERGE [NDWH_DB].[dbo].[DimFacility] AS a
			--	USING(SELECT  P.[PatientCccNumber] as PatientID,P.[PatientPID] as PatientPK,F.Code as SiteCode,F.[Name] as FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,P.Emr,P.Project,PKV,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI
			--			FROM [DWAPICentral].[dbo].[PatientExtract]  P  with (NoLock)
			--			INNER JOIN [DWAPICentral].[dbo].[Facility] F with (NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0 
			--			---INNER JOIN FacilityManifest_MaxDateRecieved(NoLock) a ON F.Code = a.SiteCode
			--			WHERE P.Voided=0 and P.[Gender] is NOT NULL and p.gender!='Unknown' ) AS b 
			--			ON(a.PatientID=b.PatientID and a.PatientPK = b.PatientPK and a.SiteCode = b.SiteCode)
			--WHEN MATCHED THEN
			--UPDATE SET 
			--a.FacilityName = B.FacilityName
			--WHEN NOT MATCHED THEN 
			--INSERT(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI) 
			--VALUES(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI);
			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_ARTPatients_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_ARTPatients_Optimized]  
AS 
BEGIN
			DECLARE @MaxLastVisitDate_Hist			DATETIME,
				    @LastVisitDate					DATETIME
				
		SELECT @MaxLastVisitDate_Hist =  MAX(MaxLastVisitDate) FROM [ODS].[dbo].[CT_ARTPatient_Log]  (NoLock)
		SELECT @LastVisitDate = MAX(LastVisit) FROM [DWAPICentral].[dbo].[PatientArtExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_ARTPatient_Log](NoLock) WHERE MaxLastVisitDate = @LastVisitDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_ARTPatient_Log](MaxLastVisitDate,LoadStartDateTime)
					VALUES(@LastVisitDate,GETDATE());

					INSERT INTO [ODS].[dbo].[CT_ARTPatients](PatientPK,PatientID,FacilityName,SiteCode,
					DOB,AgeEnrollment,AgeARTStart,AgeLastVisit,RegistrationDate,PatientSource,Gender,StartARTDate,PreviousARTStartDate,PreviousARTRegimen,StartARTAtThisFacility,
					StartRegimen,StartRegimenLine,LastARTDate,LastRegimen,LastRegimenLine,Duration,ExpectedReturn,[Provider],LastVisit,ExitReason,ExitDate,Emr,Project,
					CKV,PreviousARTUse,PreviousARTPurpose,DateLastUsed)
					SELECT  P.[PatientPID] AS PatientPK,P.[PatientCccNumber] AS PatientID, F.Name AS FacilityName, F.Code AS SiteCode
						,PA.[DOB],PA.[AgeEnrollment],PA.[AgeARTStart],PA.[AgeLastVisit],PA.[RegistrationDate],PA.[PatientSource],PA.[Gender]
						,PA.[StartARTDate],PA.[PreviousARTStartDate],PA.[PreviousARTRegimen],PA.[StartARTAtThisFacility]
						  ,PA.[StartRegimen],PA.[StartRegimenLine],PA.[LastARTDate],PA.[LastRegimen],PA.[LastRegimenLine],PA.[Duration],PA.[ExpectedReturn]
						 ,PA.[Provider],PA.[LastVisit],PA.[ExitReason],PA.[ExitDate],P.[Emr]
						  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
						   ELSE P.[Project] 
						   END AS [Project] 
						   ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						 
					,PA.[PreviousARTUse]
					,PA.[PreviousARTPurpose]
					,PA.[DateLastUsed]

					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					INNER JOIN [DWAPICentral].[dbo].[PatientArtExtract](NoLock) PA ON PA.[PatientId]= P.ID AND PA.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0 
					WHERE p.gender!='Unknown' AND pa.LastVisit > @MaxLastVisitDate_Hist;

					UPDATE [ODS].[dbo].[CT_ARTPatient_Log]
				SET LoadEndDateTime = GETDATE()
				WHERE MaxLastVisitDate = @LastVisitDate;
			END
			---Remove any duplicate from [ODS].[dbo].[CT_ARTPatients] 
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode] 
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_ARTPatients] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_ContactListing]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_ContactListing]  
AS 
	BEGIN
			CREATE INDEX CT_ContactListing ON [ODS].[dbo].[CT_ContactListing] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_ContactListing]
			MERGE [ODS].[dbo].[CT_ContactListing] AS a
				USING(SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,
						F.Name AS FacilityName,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						CL.[PartnerPersonID] AS PartnerPersonID,CL.[ContactAge] AS ContactAge,CL.[ContactSex] AS ContactSex,
						CL.[ContactMaritalStatus] AS ContactMaritalStatus,CL.[RelationshipWithPatient] AS RelationshipWithPatient,
						CL.[ScreenedForIpv] AS ScreenedForIpv,CL.[IpvScreening] AS IpvScreening,
						CL.[IPVScreeningOutcome] AS IPVScreeningOutcome,
						CL.[CurrentlyLivingWithIndexClient] AS CurrentlyLivingWithIndexClient,
						CL.[KnowledgeOfHivStatus] AS KnowledgeOfHivStatus,CL.[PnsApproach] AS PnsApproach,
						GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV, 
					  ContactPatientPK,
					  CL.Created as DateCreated
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[ContactListingExtract](NoLock) CL ON CL.[PatientId] = P.ID AND CL.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID						=b.PatientID,						
						a.FacilityName					=b.FacilityName,
						a.Emr							=b.Emr,
						a.Project						=b.Project,
						a.PartnerPersonID				=b.PartnerPersonID,
						a.ContactAge					=b.ContactAge,
						a.ContactSex					=b.ContactSex,
						a.ContactMaritalStatus			=b.ContactMaritalStatus,
						a.RelationshipWithPatient		=b.RelationshipWithPatient,
						a.ScreenedForIpv				=b.ScreenedForIpv,
						a.IpvScreening					=b.IpvScreening,
						a.IPVScreeningOutcome			=b.IPVScreeningOutcome,
						a.CurrentlyLivingWithIndexClient=b.CurrentlyLivingWithIndexClient,
						a.KnowledgeOfHivStatus			=b.KnowledgeOfHivStatus,
						a.PnsApproach					=b.PnsApproach,
						a.DateImported					=b.DateImported	,
						a.CKV							=b.CKV,
						a.ContactPatientPK				=b.ContactPatientPK	,
						a.DateCreated					=b.DateCreated

							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,Emr,Project,PartnerPersonID,ContactAge,ContactSex,ContactMaritalStatus,RelationshipWithPatient,ScreenedForIpv,IpvScreening,IPVScreeningOutcome,CurrentlyLivingWithIndexClient,KnowledgeOfHivStatus,PnsApproach,DateImported,CKV,ContactPatientPK,DateCreated) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,Emr,Project,PartnerPersonID,ContactAge,ContactSex,ContactMaritalStatus,RelationshipWithPatient,ScreenedForIpv,IpvScreening,IPVScreeningOutcome,CurrentlyLivingWithIndexClient,KnowledgeOfHivStatus,PnsApproach,DateImported,CKV,ContactPatientPK,DateCreated);
				
				DROP INDEX CT_ContactListing ON [ODS].[dbo].[CT_ContactListing];
				---Remove any duplicate from [ODS].[dbo].[CT_ContactListing]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_ContactListing] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END



GO
/****** Object:  StoredProcedure [dbo].[Load_CT_ContactListing_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_ContactListing_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxDateCreated_Hist			DATETIME,
				   @DateCreated					DATETIME
				
		SELECT @MaxDateCreated_Hist =  MAX(MaxDateCreated) FROM [ODS].[dbo].[CT_ContactListing_Log]  (NoLock)
		SELECT @MaxDateCreated_Hist = MAX(Created) FROM [DWAPICentral].[dbo].[ContactListingExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_ContactListing_Log](NoLock) WHERE MaxDateCreated = @MaxDateCreated_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_ContactListing_Log](MaxDateCreated,LoadStartDateTime)
					VALUES(@MaxDateCreated_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_ContactListing](PatientID,PatientPK,SiteCode,FacilityName,Emr,Project,
					PartnerPersonID,ContactAge,ContactSex,ContactMaritalStatus,RelationshipWithPatient,ScreenedForIpv,IpvScreening,
					IPVScreeningOutcome,CurrentlyLivingWithIndexClient,KnowledgeOfHivStatus,PnsApproach,DateImported,CKV,ContactPatientPK,DateCreated)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,
						F.Name AS FacilityName,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						CL.[PartnerPersonID] AS PartnerPersonID,CL.[ContactAge] AS ContactAge,CL.[ContactSex] AS ContactSex,
						CL.[ContactMaritalStatus] AS ContactMaritalStatus,CL.[RelationshipWithPatient] AS RelationshipWithPatient,
						CL.[ScreenedForIpv] AS ScreenedForIpv,CL.[IpvScreening] AS IpvScreening,
						CL.[IPVScreeningOutcome] AS IPVScreeningOutcome,
						CL.[CurrentlyLivingWithIndexClient] AS CurrentlyLivingWithIndexClient,
						CL.[KnowledgeOfHivStatus] AS KnowledgeOfHivStatus,CL.[PnsApproach] AS PnsApproach,
						GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV, 
					  ContactPatientPK,
					  CL.Created as DateCreated
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[ContactListingExtract](NoLock) CL ON CL.[PatientId] = P.ID AND CL.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown' and CL.Created > @MaxDateCreated_Hist					

					UPDATE [ODS].[dbo].[CT_ContactListing_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxDateCreated = @MaxDateCreated_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_ContactListing]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_ContactListing]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Covid]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_Covid]    
AS 
	BEGIN
			CREATE INDEX CT_Covid ON [ODS].[dbo].[CT_Covid] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_Covid]
			MERGE [ODS].[dbo].[CT_Covid] AS a
				USING(SELECT P.[PatientPID] AS PatientPK
							,P.[PatientCccNumber] AS PatientID
							,P.[Emr]
							,P.[Project]
							,F.Code AS SiteCode
							,F.Name AS FacilityName ,[VisitID]
							,Cast([Covid19AssessmentDate] as Date)[Covid19AssessmentDate]
							,[ReceivedCOVID19Vaccine]
							,Cast([DateGivenFirstDose] as date) [DateGivenFirstDose]
							,[FirstDoseVaccineAdministered]
							,Cast([DateGivenSecondDose] as Date)[DateGivenSecondDose]
							,[SecondDoseVaccineAdministered]
							,[VaccinationStatus],[VaccineVerification],[BoosterGiven],[BoosterDose]
							,Cast([BoosterDoseDate] as Date)[BoosterDoseDate]
							,[EverCOVID19Positive]
							,Cast([COVID19TestDate] as Date) [COVID19TestDate],[PatientStatus],[AdmissionStatus],[AdmissionUnit],[MissedAppointmentDueToCOVID19]
							,[COVID19PositiveSinceLasVisit]
							,Cast([COVID19TestDateSinceLastVisit] as Date)[COVID19TestDateSinceLastVisit]
							,[PatientStatusSinceLastVisit]
							,[AdmissionStatusSinceLastVisit]
							,Cast([AdmissionStartDate] as Date)[AdmissionStartDate]
							,Cast([AdmissionEndDate] as Date)[AdmissionEndDate]
							,[AdmissionUnitSinceLastVisit]
							,[SupplementalOxygenReceived]
							,[PatientVentilated]
							,[TracingFinalOutcome]
							,[CauseOfDeath]
							,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						,getdate() as [DateImported]
						,BoosterDoseVerified
						,[Sequence]
						,COVID19TestResult
						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
						INNER JOIN [DWAPICentral].[dbo].[CovidExtract](NoLock) C  ON C.[PatientId]= P.ID AND C.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id  AND F.Voided=0
					WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						AND a.Covid19AssessmentDate = b.Covid19AssessmentDate
						)
					WHEN MATCHED THEN
						UPDATE SET 						
						a.Emr								=b.Emr,
						a.Project							=b.Project,
						a.SiteCode							=b.SiteCode,
						a.FacilityName						=b.FacilityName,
						a.VisitID							=b.VisitID,
						a.Covid19AssessmentDate				=b.Covid19AssessmentDate,
						a.ReceivedCOVID19Vaccine			=b.ReceivedCOVID19Vaccine,
						a.DateGivenFirstDose				=b.DateGivenFirstDose,
						a.FirstDoseVaccineAdministered		=b.FirstDoseVaccineAdministered,
						a.DateGivenSecondDose				=b.DateGivenSecondDose,
						a.SecondDoseVaccineAdministered		=b.SecondDoseVaccineAdministered,
						a.VaccinationStatus					=b.VaccinationStatus,
						a.VaccineVerification				=b.VaccineVerification,
						a.BoosterGiven						=b.BoosterGiven,
						a.BoosterDose						=b.BoosterDose,
						a.BoosterDoseDate					=b.BoosterDoseDate,
						a.EverCOVID19Positive				=b.EverCOVID19Positive,
						a.COVID19TestDate					=b.COVID19TestDate,
						a.PatientStatus						=b.PatientStatus,
						a.AdmissionStatus					=b.AdmissionStatus,
						a.AdmissionUnit						=b.AdmissionUnit,
						a.MissedAppointmentDueToCOVID19		=b.MissedAppointmentDueToCOVID19,
						a.COVID19PositiveSinceLasVisit		=b.COVID19PositiveSinceLasVisit,
						a.COVID19TestDateSinceLastVisit		=b.COVID19TestDateSinceLastVisit,
						a.PatientStatusSinceLastVisit		=b.PatientStatusSinceLastVisit,
						a.AdmissionStatusSinceLastVisit		=b.AdmissionStatusSinceLastVisit,
						a.AdmissionStartDate				=b.AdmissionStartDate,
						a.AdmissionEndDate					=b.AdmissionEndDate,
						a.AdmissionUnitSinceLastVisit		=b.AdmissionUnitSinceLastVisit,
						a.SupplementalOxygenReceived		=b.SupplementalOxygenReceived,
						a.PatientVentilated					=b.PatientVentilated,
						a.TracingFinalOutcome				=b.TracingFinalOutcome,
						a.CauseOfDeath						=b.CauseOfDeath,
						a.CKV								=b.CKV,
						a.DateImported						=b.DateImported,
						a.BoosterDoseVerified				=b.BoosterDoseVerified,
						a.[Sequence]						=b.[Sequence],
						a.COVID19TestResult					=b.COVID19TestResult
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientPK,PatientID,Emr,Project,SiteCode,FacilityName,VisitID,Covid19AssessmentDate,ReceivedCOVID19Vaccine,DateGivenFirstDose,FirstDoseVaccineAdministered,DateGivenSecondDose,SecondDoseVaccineAdministered,VaccinationStatus,VaccineVerification,BoosterGiven,BoosterDose,BoosterDoseDate,EverCOVID19Positive,COVID19TestDate,PatientStatus,AdmissionStatus,AdmissionUnit,MissedAppointmentDueToCOVID19,COVID19PositiveSinceLasVisit,COVID19TestDateSinceLastVisit,PatientStatusSinceLastVisit,AdmissionStatusSinceLastVisit,AdmissionStartDate,AdmissionEndDate,AdmissionUnitSinceLastVisit,SupplementalOxygenReceived,PatientVentilated,TracingFinalOutcome,CauseOfDeath,CKV,DateImported,BoosterDoseVerified,Sequence,COVID19TestResult) 
						VALUES(PatientPK,PatientID,Emr,Project,SiteCode,FacilityName,VisitID,Covid19AssessmentDate,ReceivedCOVID19Vaccine,DateGivenFirstDose,FirstDoseVaccineAdministered,DateGivenSecondDose,SecondDoseVaccineAdministered,VaccinationStatus,VaccineVerification,BoosterGiven,BoosterDose,BoosterDoseDate,EverCOVID19Positive,COVID19TestDate,PatientStatus,AdmissionStatus,AdmissionUnit,MissedAppointmentDueToCOVID19,COVID19PositiveSinceLasVisit,COVID19TestDateSinceLastVisit,PatientStatusSinceLastVisit,AdmissionStatusSinceLastVisit,AdmissionStartDate,AdmissionEndDate,AdmissionUnitSinceLastVisit,SupplementalOxygenReceived,PatientVentilated,TracingFinalOutcome,CauseOfDeath,CKV,DateImported,BoosterDoseVerified,Sequence,COVID19TestResult);
				
				DROP INDEX CT_Covid ON [ODS].[dbo].[CT_Covid];
				---Remove any duplicate from [ODS].[dbo].[CT_Covid]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_Covid] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Covid_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_Covid_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxCovid19AssessmentDate_Hist			DATETIME,
				   @Covid19AssessmentDate					DATETIME
				
		SELECT @MaxCovid19AssessmentDate_Hist =  MAX(MaxCovid19AssessmentDate) FROM [ODS].[dbo].[CT_Covid_Log]  (NoLock)
		SELECT @Covid19AssessmentDate = MAX(Covid19AssessmentDate) FROM [DWAPICentral].[dbo].[CovidExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Covid_Log](NoLock) WHERE MaxCovid19AssessmentDate = @MaxCovid19AssessmentDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_Covid_Log](MaxCovid19AssessmentDate,LoadStartDateTime)
					VALUES(@MaxCovid19AssessmentDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_Covid](PatientPK,PatientID,Emr,Project,SiteCode,FacilityName,VisitID,
					Covid19AssessmentDate,ReceivedCOVID19Vaccine,DateGivenFirstDose,FirstDoseVaccineAdministered,DateGivenSecondDose,
					SecondDoseVaccineAdministered,VaccinationStatus,VaccineVerification,BoosterGiven,BoosterDose,BoosterDoseDate,
					EverCOVID19Positive,COVID19TestDate,PatientStatus,AdmissionStatus,AdmissionUnit,MissedAppointmentDueToCOVID19,
					COVID19PositiveSinceLasVisit,COVID19TestDateSinceLastVisit,PatientStatusSinceLastVisit,AdmissionStatusSinceLastVisit,AdmissionStartDate,AdmissionEndDate,AdmissionUnitSinceLastVisit,SupplementalOxygenReceived,PatientVentilated,TracingFinalOutcome,CauseOfDeath,CKV,DateImported,BoosterDoseVerified
						,[Sequence]
						,COVID19TestResult)
					SELECT P.[PatientPID] AS PatientPK
							,P.[PatientCccNumber] AS PatientID
							,P.[Emr]
							,P.[Project]
							,F.Code AS SiteCode
							,F.Name AS FacilityName ,[VisitID]
							,Cast([Covid19AssessmentDate] as Date)[Covid19AssessmentDate]
							,[ReceivedCOVID19Vaccine]
							,Cast([DateGivenFirstDose] as date) [DateGivenFirstDose]
							,[FirstDoseVaccineAdministered]
							,Cast([DateGivenSecondDose] as Date)[DateGivenSecondDose]
							,[SecondDoseVaccineAdministered]
							,[VaccinationStatus],[VaccineVerification],[BoosterGiven],[BoosterDose]
							,Cast([BoosterDoseDate] as Date)[BoosterDoseDate]
							,[EverCOVID19Positive]
							,Cast([COVID19TestDate] as Date) [COVID19TestDate],[PatientStatus],[AdmissionStatus],[AdmissionUnit],[MissedAppointmentDueToCOVID19]
							,[COVID19PositiveSinceLasVisit]
							,Cast([COVID19TestDateSinceLastVisit] as Date)[COVID19TestDateSinceLastVisit]
							,[PatientStatusSinceLastVisit]
							,[AdmissionStatusSinceLastVisit]
							,Cast([AdmissionStartDate] as Date)[AdmissionStartDate]
							,Cast([AdmissionEndDate] as Date)[AdmissionEndDate]
							,[AdmissionUnitSinceLastVisit]
							,[SupplementalOxygenReceived]
							,[PatientVentilated]
							,[TracingFinalOutcome]
							,[CauseOfDeath]
							,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						,getdate() as [DateImported]
						,BoosterDoseVerified
						,[Sequence]
						,COVID19TestResult
						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
						INNER JOIN [DWAPICentral].[dbo].[CovidExtract](NoLock) C  ON C.[PatientId]= P.ID AND C.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id  AND F.Voided=0
					WHERE P.gender != 'Unknown'    and Covid19AssessmentDate > @MaxCovid19AssessmentDate_Hist					

					UPDATE [ODS].[dbo].[CT_Covid_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxCovid19AssessmentDate = @MaxCovid19AssessmentDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_ContactListing]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_Covid]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_DefaulterTracing]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_DefaulterTracing]    
AS 
	BEGIN
			CREATE INDEX CT_DefaulterTracing ON [ODS].[dbo].[CT_DefaulterTracing] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_DefaulterTracing]
			MERGE [ODS].[dbo].[CT_DefaulterTracing] AS a
				USING(SELECT P.[PatientPID] AS PatientPK
						  ,P.[PatientCccNumber] AS PatientID
						  ,P.[Emr]
						  ,P.[Project]
						  ,F.Code AS SiteCode
						  ,F.Name AS FacilityName 
						  ,[VisitID]
						  ,Cast([VisitDate] As Date)[VisitDate]
						  ,[EncounterId]
						  ,[TracingType]
						  ,[TracingOutcome]
						  ,[AttemptNumber]
						  ,[IsFinalTrace]
						  ,[TrueStatus]
						  ,[CauseOfDeath]
						  ,[Comments]
						  ,Cast([BookingDate] As Date)[BookingDate]
						  ,LTRIM(RTRIM(STR(F.[Code])))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					 ,getdate() as [DateImported] 
					  FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					  INNER JOIN [DWAPICentral].[dbo].[DefaulterTracingExtract](NoLock) C ON C.[PatientId]= P.ID AND C.Voided=0
					  INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE P.gender != 'Unknown' ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						and a.VisitID = b.VisitID
						and a.VisitDate = b.VisitDate)
					WHEN MATCHED THEN
						UPDATE SET 						
						a.Emr			=b.Emr,
						a.Project		=b.Project,
						a.SiteCode		=b.SiteCode,
						a.FacilityName	=b.FacilityName,
						a.EncounterId	=b.EncounterId,
						a.TracingType	=b.TracingType,
						a.TracingOutcome=b.TracingOutcome,
						a.AttemptNumber	=b.AttemptNumber,
						a.IsFinalTrace	=b.IsFinalTrace,
						a.TrueStatus	=b.TrueStatus,
						a.CauseOfDeath	=b.CauseOfDeath,
						a.Comments		=b.Comments,
						a.BookingDate	=b.BookingDate,
						a.CKV			=b.CKV,
						a.DateImported	=b.DateImported
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientPK,PatientID,Emr,Project,SiteCode,FacilityName,VisitID,VisitDate,EncounterId,TracingType,TracingOutcome,AttemptNumber,IsFinalTrace,TrueStatus,CauseOfDeath,Comments,BookingDate,CKV,DateImported) 
						VALUES(PatientPK,PatientID,Emr,Project,SiteCode,FacilityName,VisitID,VisitDate,EncounterId,TracingType,TracingOutcome,AttemptNumber,IsFinalTrace,TrueStatus,CauseOfDeath,Comments,BookingDate,CKV,DateImported);
				
				DROP INDEX CT_DefaulterTracing ON [ODS].[dbo].[CT_DefaulterTracing];
				---Remove any duplicate from [ODS].[dbo].[CT_DefaulterTracing]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_DefaulterTracing] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_DefaulterTracing_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_DefaulterTracing_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_DefaulterTracing_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[DefaulterTracingExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_DefaulterTracing_Log](NoLock) WHERE MaxVisitDate = @MaxVisitDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_DefaulterTracing_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@MaxVisitDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_DefaulterTracing](PatientPK,PatientID,Emr,Project,SiteCode,FacilityName,VisitID,VisitDate,EncounterId,TracingType,TracingOutcome,AttemptNumber,IsFinalTrace,TrueStatus,CauseOfDeath,Comments,BookingDate,CKV,DateImported)
					SELECT P.[PatientPID] AS PatientPK
						  ,P.[PatientCccNumber] AS PatientID
						  ,P.[Emr]
						  ,P.[Project]
						  ,F.Code AS SiteCode
						  ,F.Name AS FacilityName 
						  ,[VisitID]
						  ,Cast([VisitDate] As Date)[VisitDate]
						  ,[EncounterId]
						  ,[TracingType]
						  ,[TracingOutcome]
						  ,[AttemptNumber]
						  ,[IsFinalTrace]
						  ,[TrueStatus]
						  ,[CauseOfDeath]
						  ,[Comments]
						  ,Cast([BookingDate] As Date)[BookingDate]
						  ,LTRIM(RTRIM(STR(F.[Code])))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					 ,getdate() as [DateImported] 
					  FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					  INNER JOIN [DWAPICentral].[dbo].[DefaulterTracingExtract](NoLock) C ON C.[PatientId]= P.ID AND C.Voided=0
					  INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE P.gender != 'Unknown'    and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_DefaulterTracing_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @MaxVisitDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_ContactListing]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_DefaulterTracing]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_DepressionScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_DepressionScreening]    
AS 
	BEGIN
			CREATE INDEX CT_DepressionScreening ON [ODS].[dbo].[CT_DepressionScreening](sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_DepressionScreening]
			MERGE [ODS].[dbo].[CT_DepressionScreening]AS a
				USING(SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
						DS.[VisitId] AS VisitID,DS.[VisitDate] AS VisitDate,P.[Emr],
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						DS.[PHQ9_1],DS.[PHQ9_2],DS.[PHQ9_3],DS.[PHQ9_4],DS.[PHQ9_5],DS.[PHQ9_6],DS.[PHQ9_7],
						DS.[PHQ9_8],DS.[PHQ9_9],DS.[PHQ_9_rating],DS.[DepressionAssesmentScore],
						GETDATE() AS DateImported,
						-- DS.[Voided],
						-- DS.[Processed],
						-- DS.[Created],
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[DepressionScreeningExtract](NoLock) DS ON DS.[PatientId] = P.ID AND DS.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID					=b.PatientID,
						a.PatientPK					=b.PatientPK,
						a.SiteCode					=b.SiteCode,
						a.FacilityName				=b.FacilityName,
						a.VisitID					=b.VisitID,
						a.VisitDate					=b.VisitDate,
						a.Emr						=b.Emr,
						a.Project					=b.Project,
						a.PHQ9_1					=b.PHQ9_1,
						a.PHQ9_2					=b.PHQ9_2,
						a.PHQ9_3					=b.PHQ9_3,
						a.PHQ9_4					=b.PHQ9_4,
						a.PHQ9_5					=b.PHQ9_5,
						a.PHQ9_6					=b.PHQ9_6,
						a.PHQ9_7					=b.PHQ9_7,
						a.PHQ9_8					=b.PHQ9_8,
						a.PHQ9_9					=b.PHQ9_9,
						a.PHQ_9_rating				=b.PHQ_9_rating,
						a.DepressionAssesmentScore	=b.DepressionAssesmentScore,
						a.DateImported				=b.DateImported,
						a.CKV						=b.CKV
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,PHQ9_1,PHQ9_2,PHQ9_3,PHQ9_4,PHQ9_5,PHQ9_6,PHQ9_7,PHQ9_8,PHQ9_9,PHQ_9_rating,DepressionAssesmentScore,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,PHQ9_1,PHQ9_2,PHQ9_3,PHQ9_4,PHQ9_5,PHQ9_6,PHQ9_7,PHQ9_8,PHQ9_9,PHQ_9_rating,DepressionAssesmentScore,DateImported,CKV);
				
				DROP INDEX CT_DepressionScreening ON [ODS].[dbo].[CT_DepressionScreening];
				---Remove any duplicate from [ODS].[dbo].[CT_DepressionScreening]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_DepressionScreening]
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_DepressionScreening_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_DepressionScreening_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_DepressionScreening_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[DepressionScreeningExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_DepressionScreening_Log](NoLock) WHERE MaxVisitDate = @MaxVisitDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_DepressionScreening_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@MaxVisitDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_DepressionScreening](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,PHQ9_1,PHQ9_2,PHQ9_3,PHQ9_4,PHQ9_5,PHQ9_6,PHQ9_7,PHQ9_8,PHQ9_9,PHQ_9_rating,DepressionAssesmentScore,DateImported,CKV)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
						DS.[VisitId] AS VisitID,DS.[VisitDate] AS VisitDate,P.[Emr],
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						DS.[PHQ9_1],DS.[PHQ9_2],DS.[PHQ9_3],DS.[PHQ9_4],DS.[PHQ9_5],DS.[PHQ9_6],DS.[PHQ9_7],
						DS.[PHQ9_8],DS.[PHQ9_9],DS.[PHQ_9_rating],DS.[DepressionAssesmentScore],
						GETDATE() AS DateImported,
						-- DS.[Voided],
						-- DS.[Processed],
						-- DS.[Created],
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[DepressionScreeningExtract](NoLock) DS ON DS.[PatientId] = P.ID AND DS.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown'  and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_DepressionScreening_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @MaxVisitDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_DepressionScreening]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_DepressionScreening]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_DrugAlcoholScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_DrugAlcoholScreening]    
AS 
	BEGIN
			CREATE INDEX CT_DrugAlcoholScreening ON [ODS].[dbo].[CT_DrugAlcoholScreening] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_DrugAlcoholScreening]
			MERGE [ODS].[dbo].[CT_DrugAlcoholScreening] AS a
				USING(SELECT
							P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
							DAS.[VisitId] AS VisitID,DAS.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
							CASE
								P.[Project]
								WHEN 'I-TECH' THEN 'Kenya HMIS II'
								WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project]
							END AS Project,
							DAS.[DrinkingAlcohol] AS DrinkingAlcohol,DAS.[Smoking] AS Smoking,DAS.[DrugUse] AS DrugUse,
							GETDATE() AS DateImported,
							LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV

						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
						INNER JOIN [DWAPICentral].[dbo].[DrugAlcoholScreeningExtract](NoLock) DAS ON DAS.[PatientId] = P.ID AND DAS.Voided = 0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
						WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID			=b.PatientID,
						a.PatientPK			=b.PatientPK,
						a.SiteCode			=b.SiteCode,
						a.FacilityName		=b.FacilityName,
						a.VisitID			=b.VisitID,
						a.VisitDate			=b.VisitDate,
						a.Emr				=b.Emr,
						a.Project			=b.Project,
						a.DrinkingAlcohol	=b.DrinkingAlcohol,
						a.Smoking			=b.Smoking,
						a.DrugUse			=b.DrugUse,
						a.DateImported		=b.DateImported,
						a.CKV				=b.CKV
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,DrinkingAlcohol,Smoking,DrugUse,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,DrinkingAlcohol,Smoking,DrugUse,DateImported,CKV);
				
					DROP INDEX CT_DrugAlcoholScreening ON [ODS].[dbo].[CT_DrugAlcoholScreening];
					---Remove any duplicate from [ODS].[dbo].[CT_DrugAlcoholScreening]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode] 
							ORDER BY [PatientPK],[SiteCode]) AS dump_ 
							FROM [ODS].[dbo].[CT_DrugAlcoholScreening] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_DrugAlcoholScreening_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_DrugAlcoholScreening_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_DrugAlcoholScreening_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[DrugAlcoholScreeningExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_DrugAlcoholScreening_Log](NoLock) WHERE MaxVisitDate = @VisitDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_DrugAlcoholScreening_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@VisitDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_DrugAlcoholScreening](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,
					Project,DrinkingAlcohol,Smoking,DrugUse,DateImported,CKV)
					SELECT
							P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
							DAS.[VisitId] AS VisitID,DAS.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
							CASE
								P.[Project]
								WHEN 'I-TECH' THEN 'Kenya HMIS II'
								WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project]
							END AS Project,
							DAS.[DrinkingAlcohol] AS DrinkingAlcohol,DAS.[Smoking] AS Smoking,DAS.[DrugUse] AS DrugUse,
							GETDATE() AS DateImported,
							LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV

						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
						INNER JOIN [DWAPICentral].[dbo].[DrugAlcoholScreeningExtract](NoLock) DAS ON DAS.[PatientId] = P.ID AND DAS.Voided = 0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
						WHERE P.gender != 'Unknown' and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_DrugAlcoholScreening_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @VisitDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_DrugAlcoholScreening]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],VisitDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],VisitDate
					ORDER BY [PatientPK],[SiteCode],VisitDate) AS dump_ 
					FROM [ODS].[dbo].[CT_DrugAlcoholScreening]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END

GO
/****** Object:  StoredProcedure [dbo].[Load_CT_EnhancedAdherenceCounselling]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_EnhancedAdherenceCounselling]    
AS 
	BEGIN
			CREATE INDEX CT_EnhancedAdherenceCounselling ON [ODS].[dbo].[CT_EnhancedAdherenceCounselling] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_EnhancedAdherenceCounselling]
			MERGE [ODS].[dbo].[CT_EnhancedAdherenceCounselling] AS a
				USING(SELECT
							P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
							EAC.[VisitId] AS VisitID,EAC.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
							CASE
								P.[Project]
								WHEN 'I-TECH' THEN 'Kenya HMIS II'
								WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project]
							END AS Project,
							EAC.[SessionNumber],EAC.[DateOfFirstSession],EAC.[PillCountAdherence],EAC.[MMAS4_1],
							EAC.[MMAS4_2],EAC.[MMAS4_3],EAC.[MMAS4_4],EAC.[MMSA8_1],EAC.[MMSA8_2],EAC.[MMSA8_3],EAC.[MMSA8_4],
							EAC.[MMSAScore],EAC.[EACRecievedVL],EAC.[EACVL],EAC.[EACVLConcerns],EAC.[EACVLThoughts],EAC.[EACWayForward],
							EAC.[EACCognitiveBarrier],EAC.[EACBehaviouralBarrier_1],EAC.[EACBehaviouralBarrier_2],EAC.[EACBehaviouralBarrier_3],
							EAC.[EACBehaviouralBarrier_4],EAC.[EACBehaviouralBarrier_5],EAC.[EACEmotionalBarriers_1],EAC.[EACEmotionalBarriers_2],
							EAC.[EACEconBarrier_1],EAC.[EACEconBarrier_2],EAC.[EACEconBarrier_3],EAC.[EACEconBarrier_4],EAC.[EACEconBarrier_5],
							EAC.[EACEconBarrier_6],EAC.[EACEconBarrier_7],EAC.[EACEconBarrier_8],EAC.[EACReviewImprovement],EAC.[EACReviewMissedDoses],
							EAC.[EACReviewStrategy],EAC.[EACReferral],EAC.[EACReferralApp],EAC.[EACReferralExperience],EAC.[EACHomevisit],
							EAC.[EACAdherencePlan],EAC.[EACFollowupDate],GETDATE() AS DateImported,   
							LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
						INNER JOIN [DWAPICentral].[dbo].[EnhancedAdherenceCounsellingExtract](NoLock) EAC ON EAC.[PatientId] = P.ID AND EAC.Voided = 0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
						WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID					=b.PatientID,
						a.PatientPK					=b.PatientPK,
						a.SiteCode					=b.SiteCode,
						a.FacilityName				=b.FacilityName,
						a.VisitID					=b.VisitID,
						a.VisitDate					=b.VisitDate,
						a.Emr						=b.Emr,
						a.Project					=b.Project,
						a.SessionNumber				=b.SessionNumber,
						a.DateOfFirstSession		=b.DateOfFirstSession,
						a.PillCountAdherence		=b.PillCountAdherence,
						a.MMAS4_1					=b.MMAS4_1,
						a.MMAS4_2					=b.MMAS4_2,
						a.MMAS4_3					=b.MMAS4_3,
						a.MMAS4_4					=b.MMAS4_4,
						a.MMSA8_1					=b.MMSA8_1,
						a.MMSA8_2					=b.MMSA8_2,
						a.MMSA8_3					=b.MMSA8_3,
						a.MMSA8_4					=b.MMSA8_4,
						a.MMSAScore					=b.MMSAScore	,
						a.EACRecievedVL				=b.EACRecievedVL,
						a.EACVL						=b.EACVL,
						a.EACVLConcerns				=b.EACVLConcerns,
						a.EACVLThoughts				=b.EACVLThoughts,
						a.EACWayForward				=b.EACWayForward,
						a.EACCognitiveBarrier		=b.EACCognitiveBarrier,
						a.EACBehaviouralBarrier_1	=b.EACBehaviouralBarrier_1,
						a.EACBehaviouralBarrier_2	=b.EACBehaviouralBarrier_2,
						a.EACBehaviouralBarrier_3	=b.EACBehaviouralBarrier_3,
						a.EACBehaviouralBarrier_4	=b.EACBehaviouralBarrier_4,
						a.EACBehaviouralBarrier_5	=b.EACBehaviouralBarrier_5,
						a.EACEmotionalBarriers_1	=b.EACEmotionalBarriers_1,
						a.EACEmotionalBarriers_2	=b.EACEmotionalBarriers_2,
						a.EACEconBarrier_1			=b.EACEconBarrier_1,
						a.EACEconBarrier_2			=b.EACEconBarrier_2,
						a.EACEconBarrier_3			=b.EACEconBarrier_3,
						a.EACEconBarrier_4			=b.EACEconBarrier_4,
						a.EACEconBarrier_5			=b.EACEconBarrier_5,
						a.EACEconBarrier_6			=b.EACEconBarrier_6,
						a.EACEconBarrier_7			=b.EACEconBarrier_7,
						a.EACEconBarrier_8			=b.EACEconBarrier_8,
						a.EACReviewImprovement		=b.EACReviewImprovement,
						a.EACReviewMissedDoses		=b.EACReviewMissedDoses,
						a.EACReviewStrategy			=b.EACReviewStrategy,
						a.EACReferral				=b.EACReferral,
						a.EACReferralApp			=b.EACReferralApp,
						a.EACReferralExperience		=b.EACReferralExperience,
						a.EACHomevisit				=b.EACHomevisit	,
						a.EACAdherencePlan			=b.EACAdherencePlan,
						a.EACFollowupDate			=b.EACFollowupDate,
						a.DateImported				=b.DateImported	,
						a.CKV						=b.CKV

					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,SessionNumber,DateOfFirstSession,PillCountAdherence,MMAS4_1,MMAS4_2,MMAS4_3,MMAS4_4,MMSA8_1,MMSA8_2,MMSA8_3,MMSA8_4,MMSAScore,EACRecievedVL,EACVL,EACVLConcerns,EACVLThoughts,EACWayForward,EACCognitiveBarrier,EACBehaviouralBarrier_1,EACBehaviouralBarrier_2,EACBehaviouralBarrier_3,EACBehaviouralBarrier_4,EACBehaviouralBarrier_5,EACEmotionalBarriers_1,EACEmotionalBarriers_2,EACEconBarrier_1,EACEconBarrier_2,EACEconBarrier_3,EACEconBarrier_4,EACEconBarrier_5,EACEconBarrier_6,EACEconBarrier_7,EACEconBarrier_8,EACReviewImprovement,EACReviewMissedDoses,EACReviewStrategy,EACReferral,EACReferralApp,EACReferralExperience,EACHomevisit,EACAdherencePlan,EACFollowupDate,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,SessionNumber,DateOfFirstSession,PillCountAdherence,MMAS4_1,MMAS4_2,MMAS4_3,MMAS4_4,MMSA8_1,MMSA8_2,MMSA8_3,MMSA8_4,MMSAScore,EACRecievedVL,EACVL,EACVLConcerns,EACVLThoughts,EACWayForward,EACCognitiveBarrier,EACBehaviouralBarrier_1,EACBehaviouralBarrier_2,EACBehaviouralBarrier_3,EACBehaviouralBarrier_4,EACBehaviouralBarrier_5,EACEmotionalBarriers_1,EACEmotionalBarriers_2,EACEconBarrier_1,EACEconBarrier_2,EACEconBarrier_3,EACEconBarrier_4,EACEconBarrier_5,EACEconBarrier_6,EACEconBarrier_7,EACEconBarrier_8,EACReviewImprovement,EACReviewMissedDoses,EACReviewStrategy,EACReferral,EACReferralApp,EACReferralExperience,EACHomevisit,EACAdherencePlan,EACFollowupDate,DateImported,CKV);
				
					DROP INDEX CT_EnhancedAdherenceCounselling ON [ODS].[dbo].[CT_EnhancedAdherenceCounselling];
					---Remove any duplicate from [ODS].[dbo].[CT_EnhancedAdherenceCounselling]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode] 
							ORDER BY [PatientPK],[SiteCode]) AS dump_ 
							FROM [ODS].[dbo].[CT_EnhancedAdherenceCounselling] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_EnhancedAdherenceCounselling_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_EnhancedAdherenceCounselling_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_EnhancedAdherenceCounselling_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[EnhancedAdherenceCounsellingExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_EnhancedAdherenceCounselling_Log](NoLock) WHERE MaxVisitDate = @MaxVisitDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_EnhancedAdherenceCounselling_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@MaxVisitDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_EnhancedAdherenceCounselling](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,
					SessionNumber,DateOfFirstSession,PillCountAdherence,MMAS4_1,MMAS4_2,MMAS4_3,MMAS4_4,
					MMSA8_1,MMSA8_2,MMSA8_3,MMSA8_4,MMSAScore,EACRecievedVL,EACVL,EACVLConcerns,EACVLThoughts,EACWayForward,
					EACCognitiveBarrier,EACBehaviouralBarrier_1,EACBehaviouralBarrier_2,EACBehaviouralBarrier_3,EACBehaviouralBarrier_4,EACBehaviouralBarrier_5,
					EACEmotionalBarriers_1,EACEmotionalBarriers_2,EACEconBarrier_1,EACEconBarrier_2,EACEconBarrier_3,EACEconBarrier_4,EACEconBarrier_5,EACEconBarrier_6,EACEconBarrier_7,EACEconBarrier_8,
					EACReviewImprovement,EACReviewMissedDoses,EACReviewStrategy,EACReferral,EACReferralApp,EACReferralExperience,EACHomevisit,
					EACAdherencePlan,EACFollowupDate,DateImported,CKV)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
						EAC.[VisitId] AS VisitID,EAC.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						EAC.[SessionNumber],EAC.[DateOfFirstSession],EAC.[PillCountAdherence],EAC.[MMAS4_1],
						EAC.[MMAS4_2],EAC.[MMAS4_3],EAC.[MMAS4_4],EAC.[MMSA8_1],EAC.[MMSA8_2],EAC.[MMSA8_3],EAC.[MMSA8_4],
						EAC.[MMSAScore],EAC.[EACRecievedVL],EAC.[EACVL],EAC.[EACVLConcerns],EAC.[EACVLThoughts],EAC.[EACWayForward],
						EAC.[EACCognitiveBarrier],EAC.[EACBehaviouralBarrier_1],EAC.[EACBehaviouralBarrier_2],EAC.[EACBehaviouralBarrier_3],
						EAC.[EACBehaviouralBarrier_4],EAC.[EACBehaviouralBarrier_5],EAC.[EACEmotionalBarriers_1],EAC.[EACEmotionalBarriers_2],
						EAC.[EACEconBarrier_1],EAC.[EACEconBarrier_2],EAC.[EACEconBarrier_3],EAC.[EACEconBarrier_4],EAC.[EACEconBarrier_5],
						EAC.[EACEconBarrier_6],EAC.[EACEconBarrier_7],EAC.[EACEconBarrier_8],EAC.[EACReviewImprovement],EAC.[EACReviewMissedDoses],
						EAC.[EACReviewStrategy],EAC.[EACReferral],EAC.[EACReferralApp],EAC.[EACReferralExperience],EAC.[EACHomevisit],
						EAC.[EACAdherencePlan],EAC.[EACFollowupDate],GETDATE() AS DateImported,   
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[EnhancedAdherenceCounsellingExtract](NoLock) EAC ON EAC.[PatientId] = P.ID AND EAC.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown'  and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_EnhancedAdherenceCounselling_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @MaxVisitDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_EnhancedAdherenceCounselling]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_EnhancedAdherenceCounselling]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END

GO
/****** Object:  StoredProcedure [dbo].[Load_CT_GbvScreening]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_GbvScreening]    
AS 
	BEGIN
			CREATE INDEX CT_GbvScreening ON [ODS].[dbo].[CT_GbvScreening] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_GbvScreening]
			MERGE [ODS].[dbo].[CT_GbvScreening] AS a
				USING(SELECT
							P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
							GSE.[VisitId] AS VisitID,GSE.[VisitDate] AS VisitDate,P.[Emr],
							CASE
								P.[Project]
								WHEN 'I-TECH' THEN 'Kenya HMIS II'
								WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project]
							END AS Project,
							GSE.[IPV] AS IPV,GSE.[PhysicalIPV],GSE.[EmotionalIPV],GSE.[SexualIPV],GSE.[IPVRelationship],
							GETDATE() AS DateImported,
							LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
						INNER JOIN [DWAPICentral].[dbo].[GbvScreeningExtract](NoLock) GSE ON GSE.[PatientId] = P.ID AND GSE.Voided = 0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
						WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID			=b.PatientID,
						a.PatientPK			=b.PatientPK,
						a.SiteCode			=b.SiteCode,
						a.FacilityName		=b.FacilityName,
						a.VisitID			=b.VisitID,
						a.VisitDate			=b.VisitDate,
						a.Emr				=b.Emr,
						a.Project			=b.Project,
						a.IPV				=b.IPV,
						a.PhysicalIPV		=b.PhysicalIPV,
						a.EmotionalIPV		=b.EmotionalIPV,
						a.SexualIPV			=b.SexualIPV,
						a.IPVRelationship	=b.IPVRelationship,
						a.DateImported		=b.DateImported,
						a.CKV				=b.CKV
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,IPV,PhysicalIPV,EmotionalIPV,SexualIPV,IPVRelationship,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,IPV,PhysicalIPV,EmotionalIPV,SexualIPV,IPVRelationship,DateImported,CKV);
				
				DROP INDEX CT_GbvScreening ON [ODS].[dbo].[CT_GbvScreening];
				---Remove any duplicate from [ODS].[dbo].[CT_GbvScreening]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_GbvScreening] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_GbvScreening_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_GbvScreening_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_GbvScreening_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[GbvScreeningExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_GbvScreening_Log](NoLock) WHERE MaxVisitDate = @MaxVisitDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_GbvScreening_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@MaxVisitDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_GbvScreening](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,IPV,PhysicalIPV,EmotionalIPV,SexualIPV,IPVRelationship,DateImported,CKV)
					SELECT
							P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
							GSE.[VisitId] AS VisitID,GSE.[VisitDate] AS VisitDate,P.[Emr],
							CASE
								P.[Project]
								WHEN 'I-TECH' THEN 'Kenya HMIS II'
								WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project]
							END AS Project,
							GSE.[IPV] AS IPV,GSE.[PhysicalIPV],GSE.[EmotionalIPV],GSE.[SexualIPV],GSE.[IPVRelationship],
							GETDATE() AS DateImported,
							LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
						INNER JOIN [DWAPICentral].[dbo].[GbvScreeningExtract](NoLock) GSE ON GSE.[PatientId] = P.ID AND GSE.Voided = 0
						INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
						WHERE P.gender != 'Unknown'    and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_GbvScreening_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @MaxVisitDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_GbvScreening]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_GbvScreening]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Ipt]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_Ipt]    
AS 
	BEGIN
			CREATE INDEX CT_Patient ON [ODS].[dbo].[CT_Ipt] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_Ipt]
			MERGE [ODS].[dbo].[CT_Ipt] AS a
				USING(SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
						IE.[VisitId] AS VisitID,IE.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						IE.[OnTBDrugs] AS OnTBDrugs,IE.[OnIPT] AS OnIPT,IE.[EverOnIPT] AS EverOnIPT,IE.[Cough] AS Cough,
						IE.[Fever] AS Fever,IE.[NoticeableWeightLoss] AS NoticeableWeightLoss,IE.[NightSweats] AS NightSweats,
						IE.[Lethargy] AS Lethargy,IE.[ICFActionTaken] AS ICFActionTaken,IE.[TestResult] AS TestResult,
						IE.[TBClinicalDiagnosis] AS TBClinicalDiagnosis,IE.[ContactsInvited] AS ContactsInvited,
						IE.[EvaluatedForIPT] AS EvaluatedForIPT,IE.[StartAntiTBs] AS StartAntiTBs,IE.[TBRxStartDate] AS TBRxStartDate,
						IE.[TBScreening] AS TBScreening,IE.[IPTClientWorkUp] AS IPTClientWorkUp,IE.[StartIPT] AS StartIPT,
						IE.[IndicationForIPT] AS IndicationForIPT,GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[IptExtract](NoLock) IE ON IE.[PatientId] = P.ID AND IE.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID				=b.PatientID,
						a.PatientPK				=b.PatientPK,
						a.SiteCode				=b.SiteCode,
						a.FacilityName			=b.FacilityName,
						a.VisitID				=b.VisitID,
						a.VisitDate				=b.VisitDate,
						a.Emr					=b.Emr,
						a.Project				=b.Project,
						a.OnTBDrugs				=b.OnTBDrugs,
						a.OnIPT					=b.OnIPT,
						a.EverOnIPT				=b.EverOnIPT,
						a.Cough					=b.Cough,
						a.Fever					=b.Fever,
						a.NoticeableWeightLoss	=b.NoticeableWeightLoss,
						a.NightSweats			=b.NightSweats,
						a.Lethargy				=b.Lethargy,
						a.ICFActionTaken		=b.ICFActionTaken,
						a.TestResult			=b.TestResult,
						a.TBClinicalDiagnosis	=b.TBClinicalDiagnosis,
						a.ContactsInvited		=b.ContactsInvited,
						a.EvaluatedForIPT		=b.EvaluatedForIPT,
						a.StartAntiTBs			=b.StartAntiTBs,
						a.TBRxStartDate			=b.TBRxStartDate,
						a.TBScreening			=b.TBScreening,
						a.IPTClientWorkUp		=b.IPTClientWorkUp,
						a.StartIPT				=b.StartIPT,
						a.IndicationForIPT		=b.IndicationForIPT,
						a.DateImported			=b.DateImported,
						a.CKV					=b.CKV
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,OnTBDrugs,OnIPT,EverOnIPT,Cough,Fever,NoticeableWeightLoss,NightSweats,Lethargy,ICFActionTaken,TestResult,TBClinicalDiagnosis,ContactsInvited,EvaluatedForIPT,StartAntiTBs,TBRxStartDate,TBScreening,IPTClientWorkUp,StartIPT,IndicationForIPT,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,OnTBDrugs,OnIPT,EverOnIPT,Cough,Fever,NoticeableWeightLoss,NightSweats,Lethargy,ICFActionTaken,TestResult,TBClinicalDiagnosis,ContactsInvited,EvaluatedForIPT,StartAntiTBs,TBRxStartDate,TBScreening,IPTClientWorkUp,StartIPT,IndicationForIPT,DateImported,CKV);
				
					DROP INDEX CT_Patient ON [ODS].[dbo].[CT_Ipt];
					---Remove any duplicate from [ODS].[dbo].[CT_Ipt]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode] 
							ORDER BY [PatientPK],[SiteCode]) AS dump_ 
							FROM [ODS].[dbo].[CT_Ipt] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Ipt_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_Ipt_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_Ipt_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[IptExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Ipt_Log](NoLock) WHERE MaxVisitDate = @VisitDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_Ipt_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@VisitDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_Ipt](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,OnTBDrugs,OnIPT,EverOnIPT,Cough,Fever,NoticeableWeightLoss,NightSweats,Lethargy,ICFActionTaken,TestResult,TBClinicalDiagnosis,ContactsInvited,EvaluatedForIPT,StartAntiTBs,TBRxStartDate,TBScreening,IPTClientWorkUp,StartIPT,IndicationForIPT,DateImported,CKV)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
						IE.[VisitId] AS VisitID,IE.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						IE.[OnTBDrugs] AS OnTBDrugs,IE.[OnIPT] AS OnIPT,IE.[EverOnIPT] AS EverOnIPT,IE.[Cough] AS Cough,
						IE.[Fever] AS Fever,IE.[NoticeableWeightLoss] AS NoticeableWeightLoss,IE.[NightSweats] AS NightSweats,
						IE.[Lethargy] AS Lethargy,IE.[ICFActionTaken] AS ICFActionTaken,IE.[TestResult] AS TestResult,
						IE.[TBClinicalDiagnosis] AS TBClinicalDiagnosis,IE.[ContactsInvited] AS ContactsInvited,
						IE.[EvaluatedForIPT] AS EvaluatedForIPT,IE.[StartAntiTBs] AS StartAntiTBs,IE.[TBRxStartDate] AS TBRxStartDate,
						IE.[TBScreening] AS TBScreening,IE.[IPTClientWorkUp] AS IPTClientWorkUp,IE.[StartIPT] AS StartIPT,
						IE.[IndicationForIPT] AS IndicationForIPT,GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[IptExtract](NoLock) IE ON IE.[PatientId] = P.ID AND IE.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown' and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_Ipt_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @VisitDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_Ipt]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],VisitDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],VisitDate
					ORDER BY [PatientPK],[SiteCode],VisitDate) AS dump_ 
					FROM [ODS].[dbo].[CT_Ipt]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END

GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Otz]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_Otz]    
AS 
	BEGIN
			CREATE INDEX CT_Otz ON [ODS].[dbo].[CT_Otz] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_Otz]
			MERGE [ODS].[dbo].[CT_Otz] AS a
				USING(SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,OE.[VisitId] AS VisitID,
						OE.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						OE.[OTZEnrollmentDate],OE.[TransferInStatus],OE.[ModulesPreviouslyCovered],OE.[ModulesCompletedToday],OE.[SupportGroupInvolvement],OE.[Remarks],
						OE.[TransitionAttritionReason],
						OE.[OutcomeDate],
						GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[OtzExtract](NoLock) OE ON OE.[PatientId] = P.ID AND OE.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown' ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 						
						a.VisitID					=b.VisitID,
						a.VisitDate					=b.VisitDate,
						a.Emr						=b.Emr,
						a.Project					=b.Project,
						a.OTZEnrollmentDate			=b.OTZEnrollmentDate,
						a.TransferInStatus			=b.TransferInStatus,
						a.ModulesPreviouslyCovered	=b.ModulesPreviouslyCovered,
						a.ModulesCompletedToday		=b.ModulesCompletedToday,
						a.SupportGroupInvolvement	=b.SupportGroupInvolvement,
						a.Remarks					=b.Remarks,
						a.TransitionAttritionReason	=b.TransitionAttritionReason,
						a.OutcomeDate				=b.OutcomeDate,
						a.DateImported				=b.DateImported,
						a.CKV						=b.CKV
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,OTZEnrollmentDate,TransferInStatus,ModulesPreviouslyCovered,ModulesCompletedToday,SupportGroupInvolvement,Remarks,TransitionAttritionReason,OutcomeDate,DateImported,CKV) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,OTZEnrollmentDate,TransferInStatus,ModulesPreviouslyCovered,ModulesCompletedToday,SupportGroupInvolvement,Remarks,TransitionAttritionReason,OutcomeDate,DateImported,CKV);
				
					DROP INDEX CT_Otz ON [ODS].[dbo].[CT_Otz];
					---Remove any duplicate from [ODS].[dbo].[CT_Otz]
					WITH CTE AS   
						(  
							SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
							OVER (PARTITION BY [PatientPK],[SiteCode] 
							ORDER BY [PatientPK],[SiteCode]) AS dump_ 
							FROM [ODS].[dbo].[CT_Otz] 
							)  
			
					DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Otz_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_Otz_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_Otz_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[OtzExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Otz_Log](NoLock) WHERE MaxVisitDate = @MaxVisitDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_Otz_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@MaxVisitDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_Otz](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,
					OTZEnrollmentDate,TransferInStatus,ModulesPreviouslyCovered,ModulesCompletedToday,SupportGroupInvolvement,Remarks,TransitionAttritionReason,OutcomeDate,DateImported,CKV)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,OE.[VisitId] AS VisitID,
						OE.[VisitDate] AS VisitDate,P.[Emr] AS Emr,
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						OE.[OTZEnrollmentDate],OE.[TransferInStatus],OE.[ModulesPreviouslyCovered],OE.[ModulesCompletedToday],OE.[SupportGroupInvolvement],OE.[Remarks],
						OE.[TransitionAttritionReason],
						OE.[OutcomeDate],
						GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[OtzExtract](NoLock) OE ON OE.[PatientId] = P.ID AND OE.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown'   and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_Otz_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @MaxVisitDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_Otz]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_Otz]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Ovz_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_Ovz_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxVisitDate_Hist			DATETIME,
				   @VisitDate					DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_Ovc_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[OvcExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Ovc_Log](NoLock) WHERE MaxVisitDate = @MaxVisitDate_Hist) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_Ovc_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@MaxVisitDate_Hist,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_Ovc](PatientID,PatientPK,SiteCode,FacilityName,VisitID,VisitDate,Emr,Project,OVCEnrollmentDate,RelationshipToClient,EnrolledinCPIMS,CPIMSUniqueIdentifier,PartnerOfferingOVCServices,OVCExitReason,ExitDate,DateImported,CKV)
					SELECT
						P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName,
						OE.[VisitId] AS VisitID,OE.[VisitDate] AS VisitDate,P.[Emr],
						CASE
							P.[Project]
							WHEN 'I-TECH' THEN 'Kenya HMIS II'
							WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project]
						END AS Project,
						OE.[OVCEnrollmentDate],OE.[RelationshipToClient],OE.[EnrolledinCPIMS],OE.[CPIMSUniqueIdentifier],
						OE.[PartnerOfferingOVCServices],OE.[OVCExitReason],OE.[ExitDate],
						GETDATE() AS DateImported,
						LTRIM(RTRIM(STR(F.Code))) + '-' + LTRIM(RTRIM(P.[PatientCccNumber])) + '-' + LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P
					INNER JOIN [DWAPICentral].[dbo].[OvcExtract](NoLock) OE ON OE.[PatientId] = P.ID AND OE.Voided = 0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided = 0
					WHERE P.gender != 'Unknown'    and VisitDate > @MaxVisitDate_Hist					

					UPDATE [ODS].[dbo].[CT_Ovc_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxVisitDate = @MaxVisitDate_Hist;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_Ovc]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_Ovc]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Patient]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_Patient]    
AS 
	BEGIN
			CREATE INDEX CT_Patient ON [ODS].[dbo].[CT_Patient] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_Patient]
			MERGE [ODS].[dbo].[CT_Patient] AS a
				USING(SELECT  P.[PatientCccNumber] as PatientID,P.[PatientPID] as PatientPK,F.Code as SiteCode,F.[Name] as FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,P.Emr,P.Project,PKV,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI
						FROM [DWAPICentral].[dbo].[PatientExtract]  P  with (NoLock)
						INNER JOIN [DWAPICentral].[dbo].[Facility] F with (NoLock)  
						ON P.[FacilityId]  = F.Id  AND F.Voided=0 						
						WHERE P.Voided=0 and P.[Gender] is NOT NULL and p.gender!='Unknown' ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID					=b.PatientID,
						a.PatientPK					=b.PatientPK,
						a.SiteCode					=b.SiteCode	,
						a.FacilityName				=b.FacilityName	,
						a.Gender					=b.Gender,
						a.DOB						=b.DOB,
						a.RegistrationDate			=b.RegistrationDate,
						a.RegistrationAtCCC			=b.RegistrationAtCCC,
						a.RegistrationAtPMTCT		=b.RegistrationAtPMTCT,
						a.RegistrationAtTBClinic	=b.RegistrationAtTBClinic,
						a.PatientSource				=b.PatientSource,
						a.Region					=b.Region,
						a.District					=b.District,
						a.Village					=b.Village,
						a.ContactRelation			=b.ContactRelation,
						a.LastVisit					=b.LastVisit,
						a.MaritalStatus				=b.MaritalStatus,
						a.EducationLevel			=b.EducationLevel,
						a.DateConfirmedHIVPositive	=b.DateConfirmedHIVPositive	,
						a.PreviousARTExposure		=b.PreviousARTExposure,
						a.PreviousARTStartDate		=b.PreviousARTStartDate,
						a.Emr						=b.Emr,
						a.Project					=b.Project,
						a.Orphan					=b.Orphan,
						a.Inschool					=b.Inschool	,
						a.PatientType				=b.PatientType,
						a.PopulationType			=b.PopulationType,
						a.KeyPopulationType			=b.KeyPopulationType,
						a.PatientResidentCounty		=b.PatientResidentCounty,
						a.PatientResidentSubCounty	=b.PatientResidentSubCounty,
						a.PatientResidentLocation	=b.PatientResidentLocation,
						a.PatientResidentSubLocation=b.PatientResidentSubLocation,
						a.PatientResidentWard		=b.PatientResidentWard	,
						a.PatientResidentVillage	=b.PatientResidentVillage,
						a.TransferInDate			=b.TransferInDate,
						a.Occupation				=b.Occupation,
						a.NUPI						=b.NUPI
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI) 
						VALUES(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI);
				
				DROP INDEX CT_Patient ON [ODS].[dbo].[CT_Patient];
				---Remove any duplicate from [ODS].[dbo].[CT_Patient]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_Patient] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Patient_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_Patient_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxRegistrationDate_Hist			DATETIME,
				   @RegistrationDate					DATETIME
				
		SELECT @MaxRegistrationDate_Hist =  MAX(MaxRegistrationDate) FROM [ODS].[dbo].[CT_Patient_Log]  (NoLock)
		SELECT @RegistrationDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[IptExtract](NoLock)
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Patient_Log](NoLock) WHERE MaxRegistrationDate = @RegistrationDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_Patient_Log](MaxRegistrationDate,LoadStartDateTime)
					VALUES(@RegistrationDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_Patients](Id,PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,
					RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,
					EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,DateImported,CKV,
					Processed,StatusAtCCC,StatusAtPMTCT,StatusAtTBClinic,Created,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,
					PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI)
					SELECT 
						  P.[Id],P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.[Code] AS SiteCode,F.[Name] AS FacilityName,P.[Gender],P.[DOB],P.[RegistrationDate],P.[RegistrationAtCCC],P.[RegistrationATPMTCT]
						  ,P.[RegistrationAtTBClinic],P.[PatientSource],P.[Region],P.[District],ISNULL(P.[Village],'') AS [Village],P.[ContactRelation],P.[LastVisit],P.[MaritalStatus]
						  ,P.[EducationLevel],P.[DateConfirmedHIVPositive],P.[PreviousARTExposure],P.[PreviousARTStartDate],P.[Emr]
						  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
						   ELSE P.[Project] 
						   END AS [Project] 
						   ,GETDATE() AS DateImported
						   ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						  ,P.[Processed],P.[StatusAtCCC],P.[StatusAtPMTCT],P.[StatusAtTBClinic],P.[Created],
						P.Orphan,P.Inschool,P.PatientType,P.PopulationType,P.KeyPopulationType,P.PatientResidentCounty,P.PatientResidentSubCounty,
						P.PatientResidentLocation,P.PatientResidentSubLocation,P.PatientResidentWard,P.PatientResidentVillage,P.TransferInDate, 
						P.Occupation,P.NUPI
					  FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0 
					WHERE P.Voided=0 and P.[Gender] is NOT NULL and p.gender!='Unknown' and RegistrationDate > @MaxRegistrationDate_Hist	
					ORDER BY F.Code,P.[PatientCccNumber], P.[PatientPID] 				

					UPDATE [ODS].[dbo].[CT_Patient_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxRegistrationDate = @RegistrationDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_Patients]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode]
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_Patients]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientLabs]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_PatientLabs]    
AS 
	BEGIN
			CREATE INDEX CT_PatientLabs ON [ODS].[dbo].[CT_PatientLabs] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_PatientLabs]
			MERGE [ODS].[dbo].[CT_PatientLabs] AS a
				USING(SELECT 
						  P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName, 
						  PL.[VisitId],PL.[OrderedByDate],PL.[ReportedByDate],PL.[TestName],
						  PL.[EnrollmentTest],PL.[TestResult],P.[Emr]
						  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
						   ELSE P.[Project] 
						   END AS [Project] ,
						   Getdate() as DateImported,
						   null as Reason,
						   null as Created,
						   LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						  
					-------------------- Added by Dennis as missing columns
						,PL.DateSampleTaken,
						PL.SampleType

					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					INNER JOIN [DWAPICentral].[dbo].[PatientLaboratoryExtract](NoLock) PL ON PL.[PatientId]= P.ID AND PL.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE p.gender!='Unknown' ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
							a.PatientID			=b.PatientID		,
							a.SiteCode			=b.SiteCode			,
							a.FacilityName		=b.FacilityName		,
							a.VisitID			=b.VisitID			,
							a.OrderedbyDate		=b.OrderedbyDate	,
							a.ReportedbyDate	=b.ReportedbyDate	,
							a.TestName			=b.TestName			,
							a.EnrollmentTest	=b.EnrollmentTest	,
							a.TestResult		=b.TestResult		,
							a.Emr				=b.Emr				,
							a.Project			=b.Project			,
							a.DateImported		=b.DateImported		,
							a.Reason			=b.Reason			,
							a.DateSampleTaken	=b.DateSampleTaken	,
							a.SampleType		=b.SampleType		,
							a.Created			=b.Created			,
							a.CKV				=b.CKV				
							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,PatientPk,SiteCode,FacilityName,VisitID,OrderedbyDate,ReportedbyDate,TestName,EnrollmentTest,TestResult,Emr,Project,DateImported,CKV,Reason,DateSampleTaken,SampleType,Created) 
						VALUES(PatientID,PatientPk,SiteCode,FacilityName,VisitID,OrderedbyDate,ReportedbyDate,TestName,EnrollmentTest,TestResult,Emr,Project,DateImported,CKV,Reason,DateSampleTaken,SampleType,Created);
				
				DROP INDEX CT_PatientLabs ON [ODS].[dbo].[CT_PatientLabs];
				---Remove any duplicate from [ODS].[dbo].[CT_PatientLabs]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_PatientLabs] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientLabs_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientLabs_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxOrderedbyDate_Hist			DATETIME,
				   @OrderedbyDate					DATETIME
				
		SELECT @MaxOrderedbyDate_Hist =  MAX(MaxOrderedbyDate) FROM [dbo].[CT_PatientLabs_Log]  (NoLock)
		SELECT  @OrderedbyDate = MAX(OrderedbyDate) FROM [DWAPICentral].[dbo].[PatientLaboratoryExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [dbo].[CT_PatientLabs_Log](NoLock) WHERE MaxOrderedbyDate =  @OrderedbyDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [dbo].[CT_PatientLabs_Log](MaxOrderedbyDate,LoadStartDateTime)
					VALUES( @OrderedbyDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_PatientLabs](PatientID,PatientPk,SiteCode,FacilityName,VisitID,OrderedbyDate,ReportedbyDate,TestName,
					EnrollmentTest,TestResult,Emr,Project,DateImported,Reason,Created,CKV,DateSampleTaken,SampleType
															)
					SELECT 
						  P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Code AS SiteCode,F.Name AS FacilityName, 
						  PL.[VisitId],PL.[OrderedByDate],PL.[ReportedByDate],PL.[TestName],
						  PL.[EnrollmentTest],PL.[TestResult],P.[Emr]
						  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
						   ELSE P.[Project] 
						   END AS [Project] ,
						   Getdate() as DateImported,
						   null as Reason,
						   null as Created,
						   LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV
						  
					-------------------- Added by Dennis as missing columns
						,PL.DateSampleTaken,
						PL.SampleType

					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					INNER JOIN [DWAPICentral].[dbo].[PatientLaboratoryExtract](NoLock) PL ON PL.[PatientId]= P.ID AND PL.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE p.gender!='Unknown'  AND OrderedByDate > @MaxOrderedbyDate_Hist;

					UPDATE [dbo].[CT_PatientLabs_Log]
					SET LoadEndDateTime = GETDATE()
					WHERE MaxOrderedbyDate =  @OrderedbyDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_PatientLabs]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],OrderedbyDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],OrderedbyDate
					ORDER BY [PatientPK],[SiteCode],OrderedbyDate) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientLabs]
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientPharmacy]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientPharmacy]    
AS 
	BEGIN
	       ---- Refresh [ODS].[dbo].[CT_PatientPharmacy]
		   CREATE INDEX CT_PatientPharmacy ON [ODS].[dbo].[CT_PatientPharmacy] (sitecode,PatientPK,DispenseDate);

			MERGE [ODS].[dbo].[CT_PatientPharmacy] AS a
				USING(SELECT 
					  P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK,F.[Name] AS FacilityName, F.Code AS SiteCode,PP.[VisitID] VisitID,PP.[Drug] Drug
					  ,PP.[DispenseDate] DispenseDate,PP.[Duration] Duration,PP.[ExpectedReturn] ExpectedReturn,PP.[TreatmentType] TreatmentType
					  ,PP.[PeriodTaken] PeriodTaken,PP.[ProphylaxisType] ProphylaxisType,P.[Emr] Emr
					  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project] 
					   END AS [Project] 
					  ,PP.[Voided] Voided
					  ,PP.[Processed] Processed
					  ,PP.[Provider] [Provider]
					  ,PP.[RegimenLine] RegimenLine
					  ,PP.[Created] Created
					  ,PP.RegimenChangedSwitched RegimenChangedSwitched
					  ,PP.RegimenChangeSwitchReason RegimenChangeSwitchReason
					  ,PP.StopRegimenReason StopRegimenReason
					  ,PP.StopRegimenDate StopRegimenDate
					  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV, 
					  0 AS IsRegimenFlag, 
					  0 AS KnockOutDrug,
					  NULL AS PatientUID
					FROM [DWAPICentral].[dbo].[PatientExtract] P 
						INNER JOIN [DWAPICentral].[dbo].[PatientArtExtract] PA ON PA.[PatientId]= P.ID
						INNER JOIN [DWAPICentral].[dbo].[PatientPharmacyExtract] PP ON PP.[PatientId]= P.ID AND PP.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility] F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE p.gender!='Unknown' ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						and a.visitID = b.visitID
						and a.DispenseDate = b.DispenseDate
						)
				WHEN MATCHED THEN
				UPDATE SET 
					a.PatientID					=b.PatientID,
					a.FacilityName				=b.FacilityName,
					a.VisitID					=b.VisitID,
					a.Drug						=b.Drug,
					a.DispenseDate				=b.DispenseDate,
					a.Duration					=b.Duration,
					a.ExpectedReturn			=b.ExpectedReturn,
					a.TreatmentType				=b.TreatmentType,
					a.PeriodTaken				=b.PeriodTaken,
					a.ProphylaxisType			=b.ProphylaxisType,
					a.Emr						=b.Emr,
					a.Project					=b.Project,
					a.PatientUID				=b.PatientUID,
					a.RegimenLine				=b.RegimenLine,
					a.RegimenChangedSwitched	=b.RegimenChangedSwitched,
					a.RegimenChangeSwitchReason	=b.RegimenChangeSwitchReason,
					a.StopRegimenReason			=b.StopRegimenReason,
					a.StopRegimenDate			=b.StopRegimenDate
			
			WHEN NOT MATCHED THEN 
				INSERT(PatientID,SiteCode,FacilityName,PatientPK,VisitID,Drug,DispenseDate,Duration,ExpectedReturn,TreatmentType,PeriodTaken,ProphylaxisType,Emr,Project,CKV,RegimenLine,RegimenChangedSwitched,RegimenChangeSwitchReason,StopRegimenReason,StopRegimenDate) 
				VALUES(PatientID,SiteCode,FacilityName,PatientPK,VisitID,Drug,DispenseDate,Duration,ExpectedReturn,TreatmentType,PeriodTaken,ProphylaxisType,Emr,Project,PKV,RegimenLine,RegimenChangedSwitched,RegimenChangeSwitchReason,StopRegimenReason,StopRegimenDate);
			
			DROP INDEX CT_PatientPharmacy ON [ODS].[dbo].[CT_PatientPharmacy] ;
			---Remove any duplicate from [ODS].[dbo].[CT_PatientPharmacy] 
			WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],DispenseDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],DispenseDate
					ORDER BY [PatientPK],[SiteCode],DispenseDate) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientPharmacy] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientPharmacy_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientPharmacy_Optimized]  
AS 
	BEGIN
	       DECLARE @MaxDispenseDate_Hist			DATETIME,
				   @DispenseDate					DATETIME
				
		SELECT @MaxDispenseDate_Hist =  MAX(MaxDispenseDate) FROM [ODS].[dbo].[CT_PharmacyVisit_Log]  (NoLock)
		SELECT @DispenseDate = MAX(DispenseDate) FROM [DWAPICentral].[dbo].[PatientPharmacyExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_PharmacyVisit_Log](NoLock) WHERE MaxDispenseDate = @DispenseDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_PharmacyVisit_Log](MaxDispenseDate,LoadStartDateTime)
					VALUES(@DispenseDate,GETDATE())

					INSERT INTO [ODS].[dbo].[CT_PatientPharmacy](PatientID,PatientPK,FacilityName,SiteCode,VisitID,Drug,DispenseDate,Duration,
					ExpectedReturn,TreatmentType,PeriodTaken,ProphylaxisType,Emr,Project,DateImported,CKV,RegimenLine,RegimenChangedSwitched,RegimenChangeSwitchReason,StopRegimenReason,StopRegimenDate)

					SELECT 
					  P.[PatientCccNumber] AS PatientID,P.[PatientPID] AS PatientPK,F.Name AS FacilityName,F.Code AS SiteCode,PP.[VisitID],PP.[Drug],PP.[DispenseDate],PP.[Duration]
					  ,PP.[ExpectedReturn],PP.[TreatmentType],PP.[PeriodTaken],PP.[ProphylaxisType],P.[Emr]
					  ,CASE P.[Project] 
							WHEN 'I-TECH' THEN 'Kenya HMIS II' 
							WHEN 'HMIS' THEN 'Kenya HMIS II'
					   ELSE P.[Project] 
					   END AS [Project]
					  ,CAST(GETDATE() AS DATE) AS DateImported
					  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV 
					  --,PP.[Provider]
					  ,PP.[RegimenLine]
					 -- ,PP.[Created]
					   ,PP.RegimenChangedSwitched,PP.RegimenChangeSwitchReason,PP.StopRegimenReason,PP.StopRegimenDate

				FROM [DWAPICentral].[dbo].[PatientExtract] P 
				INNER JOIN [DWAPICentral].[dbo].[PatientArtExtract] PA ON PA.[PatientId]= P.ID
				INNER JOIN [DWAPICentral].[dbo].[PatientPharmacyExtract] PP ON PP.[PatientId]= P.ID AND PP.Voided=0
				INNER JOIN [DWAPICentral].[dbo].[Facility] F ON P.[FacilityId] = F.Id AND F.Voided=0
				WHERE p.gender!='Unknown'  AND DispenseDate > @MaxDispenseDate_Hist;

				UPDATE [ODS].[dbo].[CT_PharmacyVisit_Log]
				SET LoadEndDateTime = GETDATE()
				WHERE MaxDispenseDate = @DispenseDate;

			END
			---Remove any duplicate from [ODS].[dbo].[CT_PatientPharmacy] 
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],DispenseDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],DispenseDate
					ORDER BY [PatientPK],[SiteCode],DispenseDate) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientPharmacy] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientStatus]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientStatus]    
AS 
	BEGIN
	       ---- Refresh [ODS].[dbo].[CT_PatientStatus]
			CREATE INDEX CT_PatientStatus ON [ODS].[dbo].[CT_PatientStatus] (sitecode,PatientPK,exitdate);
			MERGE [ODS].[dbo].[CT_PatientStatus] AS a
				USING(SELECT 
							P.[PatientCccNumber] AS PatientID, 
							P.[PatientPID] AS PatientPK,
							F.Name AS FacilityName, 
							F.Code AS SiteCode
							,PS.[ExitDescription] ExitDescription
							,PS.[ExitDate] ExitDate
							,PS.[ExitReason] ExitReason
							,P.[Emr] Emr
							,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project] 
							END AS [Project] 

						  ,PS.[Voided] Voided
						  ,PS.[Processed] Processed
						  ,PS.[Created] Created
						  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV,
						NULL AS PatientUID,
						[ReasonForDeath],
						[SpecificDeathReason],
						Cast([DeathDate] as Date)[DeathDate],
						EffectiveDiscontinuationDate,
						PS.TOVerified TOVerified,
						PS.TOVerifiedDate TOVerifiedDate,
						PS.ReEnrollmentDate ReEnrollmentDate
						FROM [DWAPICentral].[dbo].[PatientExtract] P WITH (NoLock)  
						INNER JOIN [DWAPICentral].[dbo].[PatientStatusExtract]PS WITH (NoLock)  ON PS.[PatientId]= P.ID AND PS.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility] F (NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0
						---INNER JOIN FacilityManifest_MaxDateRecieved(NoLock) a ON F.Code = a.SiteCode and a.[End] is not null and a.[Session] is not null
						WHERE p.gender!='Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode
						and a.exitdate = b.exitdate
						and a.EffectiveDiscontinuationDate = b.EffectiveDiscontinuationDate
						)
						WHEN MATCHED THEN
							UPDATE SET 
								a.PatientID						=b.PatientID,
								a.SiteCode						=b.SiteCode,
								a.FacilityName					=b.FacilityName,
								a.ExitDescription				=b.ExitDescription,
								a.ExitDate						=b.ExitDate,
								a.ExitReason					=b.ExitReason,
								a.PatientPK						=b.PatientPK,
								a.Emr							=b.Emr,
								a.Project						=b.Project,
								a.TOVerified					=b.TOVerified	,
								a.TOVerifiedDate				=b.TOVerifiedDate,
								a.ReEnrollmentDate				=b.ReEnrollmentDate,
								a.ReasonForDeath				=b.ReasonForDeath,
								a.SpecificDeathReason			=b.SpecificDeathReason,
								a.DeathDate						=b.DeathDate,
								a.EffectiveDiscontinuationDate	=b.EffectiveDiscontinuationDate
						WHEN NOT MATCHED THEN 
							INSERT(PatientID,SiteCode,FacilityName,ExitDescription,ExitDate,ExitReason,PatientPK,Emr,Project,CKV,TOVerified,TOVerifiedDate,ReEnrollmentDate,DeathDate)--/*,SpecificDeathReason,DeathDate,EffectiveDiscontinuationDate */) 
							VALUES(PatientID,SiteCode,FacilityName,ExitDescription,ExitDate,ExitReason,PatientPK,Emr,Project,PKV,TOVerified,TOVerifiedDate,ReEnrollmentDate,DeathDate); --/*ReasonForDeath,SpecificDeathReason,DeathDate /*EffectiveDiscontinuationDate/*);
			
						DROP INDEX CT_PatientStatus ON [ODS].[dbo].[CT_PatientStatus] ;
						---Remove any duplicate from [ODS].[dbo].[CT_PatientStatus] 
						WITH CTE AS   
							(  
								SELECT [PatientPK],[SiteCode],ExitDate,EffectiveDiscontinuationDate,ROW_NUMBER() 
								OVER (PARTITION BY [PatientPK],[SiteCode],ExitDate ,EffectiveDiscontinuationDate
								ORDER BY [PatientPK],[SiteCode],ExitDate,EffectiveDiscontinuationDate) AS dump_ 
								FROM [ODS].[dbo].[CT_PatientStatus] 
								)  
			
					DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientStatus_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientStatus_Optimized]    
AS 
	BEGIN
		DECLARE		@MaxExitDate_Hist			DATETIME,
					@ExitDate					DATETIME
				
		SELECT @MaxExitDate_Hist =  MAX(MaxExitDate) FROM [ODS].[dbo].[CT_patientStatus_Log]  (NoLock);
		SELECT @ExitDate = MAX(ExitDate) FROM [DWAPICentral].[dbo].[PatientStatusExtract] WITH (NOLOCK) ;
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_patientStatus_Log] (NoLock) WHERE MaxExitDate = @ExitDate) > 0
		RETURN

			ELSE
				BEGIN
					
					INSERT INTO  [ODS].[dbo].[CT_patientStatus_Log] (MaxExitDate,LoadStartDateTime)
					VALUES(@ExitDate,GETDATE());
	       ---- Refresh [ODS].[dbo].[CT_PatientStatus]
		   INSERT INTO [ODS].[dbo].[CT_PatientStatus](PatientID,PatientPK,FacilityName,SiteCode,ExitDescription,ExitDate,ExitReason,Emr,Project,
		   CKV,TOVerified,TOVerifiedDate,ReEnrollmentDate,ReasonForDeath,SpecificDeathReason,DeathDate,EffectiveDiscontinuationDate)
			SELECT P.[PatientCccNumber] AS PatientID, 
							P.[PatientPID] AS PatientPK,
							F.Name AS FacilityName, 
							F.Code AS SiteCode
							,PS.[ExitDescription] ExitDescription
							,PS.[ExitDate] ExitDate
							,PS.[ExitReason] ExitReason
							,P.[Emr] Emr
							,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
							ELSE P.[Project] 
							END AS [Project] 
							,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV--Previously PKV
						  --,PS.[Voided] Voided
						  --,PS.[Processed] Processed
						  --,PS.[Created] Created
						  ,PS.TOVerified TOVerified
						,PS.TOVerifiedDate TOVerifiedDate
						,PS.ReEnrollmentDate ReEnrollmentDate

						,[ReasonForDeath]
						,[SpecificDeathReason]
						,Cast([DeathDate] as Date)[DeathDate]
						,EffectiveDiscontinuationDate
						
						FROM [DWAPICentral].[dbo].[PatientExtract] P WITH (NoLock)  
						INNER JOIN [DWAPICentral].[dbo].[PatientStatusExtract]PS WITH (NoLock)  ON PS.[PatientId]= P.ID AND PS.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility] F (NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0
						---INNER JOIN FacilityManifest_MaxDateRecieved(NoLock) a ON F.Code = a.SiteCode and a.[End] is not null and a.[Session] is not null
						WHERE p.gender!='Unknown' AND ExitDate > @MaxExitDate_Hist;

						UPDATE [ODS].[dbo].[CT_patientStatus_Log]
						SET LoadEndDateTime = GETDATE()
						WHERE MaxExitDate = @ExitDate;
				END
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			;WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ExitDate,EffectiveDiscontinuationDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],ExitDate ,EffectiveDiscontinuationDate
					ORDER BY [PatientPK],[SiteCode],ExitDate,EffectiveDiscontinuationDate) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientStatus] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			
	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientsWABWHOCD4]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_PatientsWABWHOCD4]    
AS 
	BEGIN
			CREATE INDEX CT_PatientsWABWHOCD4 ON [ODS].[dbo].[CT_PatientsWABWHOCD4] (sitecode,PatientPK);
	       ---- Refresh [ODS].[dbo].[CT_PatientsWABWHOCD4]
			MERGE [ODS].[dbo].[CT_PatientsWABWHOCD4] AS a
				USING(SELECT  P.[PatientCccNumber] AS PatientID, 
								  P.[PatientPID] AS PatientPK,
								  F.Name AS FacilityName, 
								  F.Code AS SiteCode,
								  PB.[eCD4]
								  ,PB.[eCD4Date]
								  ,PB.[eWHO]
								  ,PB.[eWHODate]
								  ,PB.[bCD4]
								  ,PB.[bCD4Date]
								  ,PB.[bWHO]
								  ,PB.[bWHODate]
								  ,PB.[lastWHO]
								  ,PB.[lastWHODate]
								  ,PB.[lastCD4]
								  ,PB.[lastCD4Date]
								  ,PB.[m12CD4]
								  ,PB.[m12CD4Date]
								  ,PB.[m6CD4]
								  ,PB.[m6CD4Date]
								  ,P.[Emr]
								  ,CASE P.[Project] 
										WHEN 'I-TECH' THEN 'Kenya HMIS II' 
										WHEN 'HMIS' THEN 'Kenya HMIS II'
								   ELSE P.[Project] 
								   END AS [Project] 
								  ,PB.[Voided]
								  ,PB.[Processed]
								  ,PB.[bWAB]
								  ,PB.[bWABDate]
								  ,PB.[eWAB]
								  ,PB.[eWABDate]
								  ,PB.[lastWAB]
								  ,PB.[lastWABDate]
								  ,PB.[Created]
								  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber])) +'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV
							,NULL AS PatientUID
							FROM [Dwapicentral].[dbo].[PatientExtract](NoLock) P 
							INNER JOIN [Dwapicentral].[dbo].[PatientArtExtract](NoLock) PA ON PA.[PatientId]= P.ID
							INNER JOIN [Dwapicentral].[dbo].[PatientBaselinesExtract](NoLock) PB ON PB.[PatientId]= P.ID AND PB.Voided=0
							INNER JOIN [Dwapicentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
							WHERE p.gender!='Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
					WHEN MATCHED THEN
						UPDATE SET 
						a.PatientID									=b.PatientID,
						a.SiteCode									=b.SiteCode,
						a.bCD4										=b.bCD4,
						a.bCD4Date									=b.bCD4Date,
						a.bWHO										=b.bWHO,
						a.bWHODate									=b.bWHODate,
						a.eCD4										=b.eCD4,
						a.eCD4Date									=b.eCD4Date,
						a.eWHO										=b.eWHO,
						a.eWHODate									=b.eWHODate,
						a.lastWHO									=b.lastWHO,
						a.lastWHODate								=b.lastWHODate,
						a.lastCD4									=b.lastCD4,
						a.lastCD4Date								=b.lastCD4Date,
						a.m12CD4									=b.m12CD4,
						a.m12CD4Date								=b.m12CD4Date,
						a.m6CD4										=b.m6CD4,
						a.m6CD4Date									=b.m6CD4Date,
						a.PatientPK									=b.PatientPK,
						a.Emr										=b.Emr,
						a.Project									=b.Project
						--a.CD4atEnrollment							=b.CD4atEnrollment,
						--a.CD4atEnrollment_Date						=b.CD4atEnrollment_Date,
						--a.CD4BeforeARTStart							=b.CD4BeforeARTStart,
						--a.CD4BeforeARTStart_Date					=b.CD4BeforeARTStart_Date,
						--a.LastCD4AfterARTStart						=b.LastCD4AfterARTStart,
						--a.LastCD4AfterARTStart_Date					=b.LastCD4AfterARTStart_Date,
						--a.CD4atEnrollmentPercent					=b.CD4atEnrollmentPercent,
						--a.CD4atEnrollmentPercent_Date				=b.CD4atEnrollmentPercent_Date,
						--a.CD4BeforeARTStartPercent					=b.CD4BeforeARTStartPercent,
						--a.CD4BeforeARTStartPercent_Date				=b.CD4BeforeARTStartPercent_Date,
						--a.LastCD4AfterARTStartPercent				=b.LastCD4AfterARTStartPercent,
						--a.LastCD4AfterARTStartPercent_Date			=b.LastCD4AfterARTStartPercent_Date,
						--a.[6MonthCD4]								=b.[6MonthCD4],
						--a.[6MonthCD4_Date]							=b.[6MonthCD4_Date],
						--a.[12MonthCD4]								=b.[12MonthCD4],
						--a.[12MonthCD4_Date]							=b.[12MonthCD4_Date],
						--a.[6MonthCD4Percent]						=b.[6MonthCD4Percent],
						--a.[6MonthCD4Percent_Date]					=b.[6MonthCD4Percent_Date],
						--a.[12MonthCD4Percent]						=b.[12MonthCD4Percent],
						--a.[12MonthCD4Percent_Date]					=b.[12MonthCD4Percent_Date],
						--a.[FirstCD4AfterARTStart]					=b.[FirstCD4AfterARTStart],
						--a.[FirstCD4AfterARTStart_Date]				=b.[FirstCD4AfterARTStart_Date],
						--a.[FirtsCD4AfterARTStartPercent]			=b.[FirtsCD4AfterARTStartPercent],
						--a.[FirtsCD4AfterARTStartPercent_date]		=b.[FirtsCD4AfterARTStartPercent_date],
						--a.[DateImported]							=b.[DateImported],
						--a.[6MonthVL]								=b.[6MonthVL],
						--a.[6MonthVlDate]							=b.[6MonthVlDate],
						--a.[12MonthVL]								=b.[12MonthVL],
						--a.[12MonthVLDate]							=b.[12MonthVLDate],
						--a.[LstickBaselineCD4]						=b.[LstickBaselineCD4],
						--a.[LstickBaselineCD4_Date]					=b.[LstickBaselineCD4_Date],
						--a.[CKV]										=b.[CKV],
						--a.[18MonthVL]								=b.[18MonthVL],
						--a.[18MonthVlDate]							=b.[18MonthVlDate],
						--a.[24MonthVL]								=b.[24MonthVL],
						--a.[24MonthVLDate]							=b.[24MonthVLDate]

							
					WHEN NOT MATCHED THEN 
						INSERT(PatientID,SiteCode,bCD4,bCD4Date,bWHO,bWHODate,eCD4,eCD4Date,eWHO,eWHODate,lastWHO,lastWHODate,lastCD4,lastCD4Date,m12CD4,m12CD4Date,m6CD4,m6CD4Date,PatientPK,Emr,Project /*,CD4atEnrollment,CD4atEnrollment_Date,CD4BeforeARTStart,CD4BeforeARTStart_Date,LastCD4AfterARTStart,LastCD4AfterARTStart_Date,CD4atEnrollmentPercent,CD4atEnrollmentPercent_Date,CD4BeforeARTStartPercent,CD4BeforeARTStartPercent_Date,LastCD4AfterARTStartPercent,LastCD4AfterARTStartPercent_Date,[6MonthCD4],[6MonthCD4_Date],[12MonthCD4],[12MonthCD4_Date],[6MonthCD4Percent],[6MonthCD4Percent_Date],[12MonthCD4Percent],[12MonthCD4Percent_Date],FirstCD4AfterARTStart,FirstCD4AfterARTStart_Date,FirtsCD4AfterARTStartPercent,FirtsCD4AfterARTStartPercent_date,DateImported,[6MonthVL],[6MonthVlDate],[12MonthVL],[12MonthVLDate],LstickBaselineCD4,LstickBaselineCD4_Date,CKV,[18MonthVL],[18MonthVlDate],[24MonthVL],[24MonthVLDate]*/) 
						VALUES(PatientID,SiteCode,bCD4,bCD4Date,bWHO,bWHODate,eCD4,eCD4Date,eWHO,eWHODate,lastWHO,lastWHODate,lastCD4,lastCD4Date,m12CD4,m12CD4Date,m6CD4,m6CD4Date,PatientPK,Emr,Project /*,CD4atEnrollment,CD4atEnrollment_Date,CD4BeforeARTStart,CD4BeforeARTStart_Date,LastCD4AfterARTStart,LastCD4AfterARTStart_Date,CD4atEnrollmentPercent,CD4atEnrollmentPercent_Date,CD4BeforeARTStartPercent,CD4BeforeARTStartPercent_Date,LastCD4AfterARTStartPercent,LastCD4AfterARTStartPercent_Date,[6MonthCD4],[6MonthCD4_Date],[12MonthCD4],[12MonthCD4_Date],[6MonthCD4Percent],[6MonthCD4Percent_Date],[12MonthCD4Percent],[12MonthCD4Percent_Date],FirstCD4AfterARTStart,FirstCD4AfterARTStart_Date,FirtsCD4AfterARTStartPercent,FirtsCD4AfterARTStartPercent_date,DateImported,[6MonthVL],[6MonthVlDate],[12MonthVL],[12MonthVLDate],LstickBaselineCD4,LstickBaselineCD4_Date,CKV,[18MonthVL],[18MonthVlDate],[24MonthVL],[24MonthVLDate]*/);
				
				DROP INDEX CT_PatientsWABWHOCD4 ON [ODS].[dbo].[CT_PatientsWABWHOCD4];
				---Remove any duplicate from [ODS].[dbo].[CT_PatientsWABWHOCD4]
				WITH CTE AS   
					(  
						SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
						OVER (PARTITION BY [PatientPK],[SiteCode] 
						ORDER BY [PatientPK],[SiteCode]) AS dump_ 
						FROM [ODS].[dbo].[CT_PatientsWABWHOCD4] 
						)  
			
				DELETE FROM CTE WHERE dump_ >1;

	END


GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientVisits]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientVisits]    
AS 
	BEGIN
	 
			CREATE INDEX CT_PatientVisits ON [ODS].[dbo].[CT_PatientVisits] (sitecode,PatientPK,visitID,visitDate);

	       ---- Refresh [ODS].[dbo].[CT_PatientVisits]
			MERGE [ODS].[dbo].[CT_PatientVisits] AS a
				USING(SELECT  P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK,F.[Name] AS FacilityName, F.Code AS SiteCode,PV.[VisitId] VisitID,PV.[VisitDate] VisitDate
						  ,PV.[Service] [SERVICE],PV.[VisitType] VisitType,PV.[WHOStage] WHOStage,PV.[WABStage] WABStage,PV.[Pregnant] Pregnant,PV.[LMP] LMP,PV.[EDD] EDD,PV.[Height] [Height],PV.[Weight] [Weight],PV.[BP] [BP],PV.[OI] [OI],PV.[OIDate] [OIDate]
						  ,PV.[SubstitutionFirstlineRegimenDate] SubstitutionFirstlineRegimenDate,PV.[SubstitutionFirstlineRegimenReason] SubstitutionFirstlineRegimenReason,PV.[SubstitutionSecondlineRegimenDate] SubstitutionSecondlineRegimenDate,PV.[SubstitutionSecondlineRegimenReason] SubstitutionSecondlineRegimenReason
						  ,PV.[SecondlineRegimenChangeDate] SecondlineRegimenChangeDate,PV.[SecondlineRegimenChangeReason] SecondlineRegimenChangeReason,PV.[Adherence] Adherence,PV.[AdherenceCategory] AdherenceCategory,PV.[FamilyPlanningMethod] FamilyPlanningMethod
						  ,PV.[PwP] PwP,PV.[GestationAge] GestationAge,PV.[NextAppointmentDate] NextAppointmentDate,P.[Emr] Emr
						  ,CASE P.[Project]
									WHEN 'I-TECH' THEN 'Kenya HMIS II' 
									WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project] 
							END AS [Project] 
						  ,PV.[Voided] Voided,pv.[StabilityAssessment] StabilityAssessment,pv.[DifferentiatedCare] DifferentiatedCare,pv.[PopulationType] PopulationType,pv.[KeyPopulationType] KeyPopulationType,PV.[Processed] Processed
						  ,PV.[Created] Created
						  ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV, 
						  0 AS knockout,[GeneralExamination],[SystemExamination],[Skin],[Eyes],[ENT],[Chest],[CVS],[Abdomen],[CNS],[Genitourinary]
							-----Missing columns Added later by Dennis
						  ,PV.VisitBy VisitBy,PV.Temp Temp,PV.PulseRate PulseRate,PV.RespiratoryRate RespiratoryRate,PV.OxygenSaturation OxygenSaturation,PV.Muac Muac,PV.NutritionalStatus NutritionalStatus,PV.EverHadMenses EverHadMenses,PV.Menopausal Menopausal
						  ,PV.Breastfeeding Breastfeeding,PV.NoFPReason NoFPReason,PV.ProphylaxisUsed ProphylaxisUsed,PV.CTXAdherence CTXAdherence,PV.CurrentRegimen CurrentRegimen,PV.HCWConcern HCWConcern,PV.TCAReason TCAReason,PV.ClinicalNotes ClinicalNotes
						FROM [DWAPICentral].[dbo].[PatientExtract] P WITH (NoLock)  
						LEFT JOIN [DWAPICentral].[dbo].[PatientArtExtract] PA WITH(NoLock)  ON PA.[PatientId]= P.ID
						INNER JOIN [DWAPICentral].[dbo].[PatientVisitExtract] PV WITH(NoLock)  ON PV.[PatientId]= P.ID AND PV.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility] F WITH(NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0
						---INNER JOIN [DWAPICentral].[dbo].[FacilityManifest_MaxDateRecieved](NoLock) a ON F.Code = a.SiteCode
						----LEFT JOIN All_Staging_2016_2.dbo.stg_Patients TPat ON TPat.PKV=LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID])))
						--ORDER BY F.Id, PV.[PatientId],PV.[VisitDate],PV.[VisitId]
						WHERE p.gender!='Unknown') AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS AND
							 a.PatientPK  = b.PatientPK 
							AND a.SiteCode = b.SiteCode
							AND a.visitID = b.[VisitId]
							and a.visitDate = b.visitDate
							)
					WHEN MATCHED THEN
						UPDATE SET 
						a.FacilityName				= B.FacilityName,
						a.sitecode					= b.SiteCode,
						a.visitID					= b.visitID,
						a.VisitDate					= b.VisitDate,
						a.[SERVICE]					= b.[SERVICE],
						a.VisitType					= b.VisitType,
						a.WHOStage					= b.WHOStage,
						a.WABStage					= b.WABStage,
						a.Pregnant					= b.Pregnant,
						a.LMP						=b.LMP,
						a.EDD						=b.EDD,
						a.Height					=b.Height,
						a.[Weight]					=b.[Weight],
						a.BP						=b.BP,
						a.OI						=b.OI,
						a.OIDate					=b.OIDate,
						a.Adherence					=b.Adherence,
						a.AdherenceCategory			=b.AdherenceCategory,
						a.FamilyPlanningMethod		=b.FamilyPlanningMethod,
						a.PwP						=b.PwP,
						a.GestationAge				=b.GestationAge,
						a.NextAppointmentDate		=b.NextAppointmentDate,
						a.Emr						=b.Emr,
						a.Project					=b.Project,
						a.DifferentiatedCare		=b.DifferentiatedCare,
						a.StabilityAssessment		=b.StabilityAssessment,
						a.KeyPopulationType			=b.KeyPopulationType,
						a.PopulationType			=b.PopulationType	,
						a.VisitBy					=b.VisitBy			,
						a.Temp						=b.Temp				,
						a.PulseRate					=b.PulseRate		,
						a.RespiratoryRate			=b.RespiratoryRate	,
						a.OxygenSaturation			=b.OxygenSaturation	,
						a.Muac						=b.Muac				,
						a.NutritionalStatus			=b.NutritionalStatus	,
						a.EverHadMenses				=b.EverHadMenses		,
						a.Breastfeeding				=b.Breastfeeding		,
						a.Menopausal				=b.Menopausal		,
						a.NoFPReason				=b.NoFPReason		,
						a.ProphylaxisUsed			=b.ProphylaxisUsed	,
						a.CTXAdherence				=b.CTXAdherence		,
						a.CurrentRegimen			=b.CurrentRegimen	,
						a.HCWConcern				=b.HCWConcern		,
						a.TCAReason					=b.TCAReason,
						a.ClinicalNotes				=b.ClinicalNotes,
						a.GeneralExamination		=b.GeneralExamination,
						a.SystemExamination			=b.SystemExamination,
						a.Skin						=b.Skin	,
						a.Eyes						=b.Eyes	,
						a.ENT						=b.ENT	,
						a.Chest						=b.Chest,
						a.CVS						=b.CVS,
						a.Abdomen					=b.Abdomen,
						a.CNS						=b.CNS,
						a.Genitourinary				=b.Genitourinary

			WHEN NOT MATCHED THEN 
			INSERT(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,CKV,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes) 
			VALUES(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,PKV,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes);
			
			DROP INDEX CT_PatientVisits ON [ODS].[dbo].[CT_PatientVisits];
			---Remove any duplicate from [ODS].[dbo].[CT_PatientVisits] 
			WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],VisitID,visitDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],VisitID,visitDate
					ORDER BY [PatientPK],[SiteCode],VisitID,visitDate) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientVisits] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;
			
	END
 





GO
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientVisits_Optimized]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientVisits_Optimized] 
AS 
	BEGIN
		DECLARE @MaxVisitDate_Hist		DATETIME,
				@VisitDate				DATETIME
				
		SELECT @MaxVisitDate_Hist =  MAX(MaxVisitDate) FROM [ODS].[dbo].[CT_Visit_Log]  (NoLock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[PatientVisitExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Visit_Log](NoLock) WHERE MaxVisitDate = @VisitDate) > 0
		RETURN

			ELSE
				BEGIN
				
					INSERT INTO  [ODS].[dbo].[CT_Visit_Log](MaxVisitDate,LoadStartDateTime)
					VALUES(@VisitDate,GETDATE())

				  INSERT INTO [ODS].[dbo].[CT_PatientVisits](PatientID,PatientPK,FacilityName,SiteCode,VisitID,
						VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],
						BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,
						Emr,Project,CKV,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,
						RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,
						ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes,GeneralExamination,SystemExamination,Skin,Eyes,ENT,Chest,CVS,Abdomen,CNS,Genitourinary)
				   SELECT 
						  P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK, F.Name AS FacilityName,  F.Code AS SiteCode,PV.[VisitId]
						  ,PV.[VisitDate],PV.[Service],PV.[VisitType],PV.[WHOStage],PV.[WABStage],PV.[Pregnant],PV.[LMP],PV.[EDD],PV.[Height],PV.[Weight]
						  ,PV.[BP],PV.[OI],PV.[OIDate],PV.[Adherence],PV.[AdherenceCategory],PV.[FamilyPlanningMethod],PV.[PwP],PV.[GestationAge],PV.[NextAppointmentDate]
						  ,P.[Emr]
						  ,CASE P.[Project] 
								WHEN 'I-TECH' THEN 'Kenya HMIS II' 
								WHEN 'HMIS' THEN 'Kenya HMIS II'
						   ELSE P.[Project] 
						   END AS [Project] 
						   ,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS CKV 
						  ,pv.[DifferentiatedCare],pv.[StabilityAssessment],pv.[PopulationType],pv.[KeyPopulationType],PV.VisitBy ,PV.Temp ,PV.PulseRate 
						  ,PV.RespiratoryRate,PV.OxygenSaturation,PV.Muac,PV.NutritionalStatus,PV.EverHadMenses,PV.Breastfeeding,PV.Menopausal,PV.NoFPReason
						  ,PV.ProphylaxisUsed,PV.CTXAdherence,PV.CurrentRegimen,PV.HCWConcern,PV.TCAReason,PV.ClinicalNotes,[GeneralExamination]
						  ,[SystemExamination],[Skin],[Eyes],[ENT],[Chest],[CVS],[Abdomen],[CNS],[Genitourinary]
						  -----Missing columns Added later by Dennis
						  
					FROM [DWAPICentral].[dbo].[PatientExtract](NoLock) P 
					LEFT JOIN [DWAPICentral].[dbo].[PatientArtExtract](NoLock) PA ON PA.[PatientId]= P.ID
					INNER JOIN [DWAPICentral].[dbo].[PatientVisitExtract](NoLock) PV ON PV.[PatientId]= P.ID AND PV.Voided=0
					INNER JOIN [DWAPICentral].[dbo].[Facility](NoLock) F ON P.[FacilityId] = F.Id AND F.Voided=0
					WHERE p.gender!='Unknown' AND VisitDate >@MaxVisitDate_Hist  --and a.[End] is not null and a.[Session] is not null  AND VisitDate > @MaxVisitDate_Hist
				
				  UPDATE [ODS].[dbo].[CT_Visit_Log]
				  SET LoadEndDateTime = GETDATE()
				  WHERE MaxVisitDate = @VisitDate
				END
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			;WITH CTE AS   
				(  
					SELECT [PatientID],[PatientPK],[SiteCode],VisitID,ROW_NUMBER() 
					OVER (PARTITION BY [PatientID],[PatientPK],[SiteCode],VisitID 
					ORDER BY [PatientID],[PatientPK],[SiteCode],VisitID) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientVisits] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;			
	END





GO
/****** Object:  StoredProcedure [dbo].[Load_CT_Visit]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[Load_CT_Visit]
	AS

	DECLARE		@MaxVisit_Hist			DATETIME,
				@VisitDate				DATETIME
				
		SELECT @MaxVisit_Hist =  MAX(MaxVisitDate) from [ODS].[dbo].[CT_Visit_Log]  (nolock)
		SELECT @VisitDate = MAX(VisitDate) FROM [DWAPICentral].[dbo].[PatientVisitExtract] WITH (NOLOCK) 
		
		IF (SELECT COUNT(1) FROM [ODS].[dbo].[CT_Visit_Log](NoLock) WHERE MaxVisitDate = @VisitDate ) > 0
		RETURN

			ELSE
		BEGIN

			INSERT INTO [ODS].[dbo].[CT_Visit_Log](MaxVisitDate,[LoadStartDateTime])
			SELECT @VisitDate,GETDATE()

			
			INSERT INTO [ODS].[dbo].[CT_PatientVisits_Test](PatientID,PatientPK,FacilityName,SiteCode,VisitID,VisitDate,
			[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,
			GestationAge,NextAppointmentDate,Emr,Project,
			PKV,DifferentiatedCare,StabilityAssessment,PopulationType,KeyPopulationType,
			VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes,GeneralExamination,
			SystemExamination,Skin,Eyes,ENT,Chest,CVS,Abdomen,CNS,Genitourinary,Breastfeeding)
			SELECT  P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK,F.[Name] AS FacilityName, F.Code AS SiteCode,PV.[VisitId] VisitID,PV.[VisitDate]
						  ,PV.[Service],PV.[VisitType],PV.[WHOStage],PV.[WABStage],PV.[Pregnant],PV.[LMP],PV.[EDD],PV.[Height],PV.[Weight]
						  ,PV.[BP],PV.[OI],PV.[OIDate] 
						  ,PV.[Adherence] ,PV.[AdherenceCategory],PV.[FamilyPlanningMethod],PV.[PwP],
						  PV.[GestationAge],PV.[NextAppointmentDate],P.[Emr]
						  --,PV.[SubstitutionFirstlineRegimenDate] SubstitutionFirstlineRegimenDate,PV.[SubstitutionFirstlineRegimenReason] SubstitutionFirstlineRegimenReason,PV.[SubstitutionSecondlineRegimenDate] SubstitutionSecondlineRegimenDate,PV.[SubstitutionSecondlineRegimenReason] SubstitutionSecondlineRegimenReason
						  --,PV.[SecondlineRegimenChangeDate] SecondlineRegimenChangeDate,PV.[SecondlineRegimenChangeReason] SecondlineRegimenChangeReason,
						  ,CASE P.[Project]
									WHEN 'I-TECH' THEN 'Kenya HMIS II' 
									WHEN 'HMIS' THEN 'Kenya HMIS II'
								ELSE P.[Project] 
							END AS [Project] 
						,LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID]))) AS PKV
						  ,pv.[DifferentiatedCare] ,pv.[StabilityAssessment],pv.[PopulationType],PV.KeyPopulationType
						   ,PV.VisitBy,PV.Temp,PV.PulseRate,PV.RespiratoryRate,PV.OxygenSaturation,PV.Muac, PV.NutritionalStatus,PV.EverHadMenses,PV.Menopausal
						   ,PV.NoFPReason,PV.ProphylaxisUsed,PV.CTXAdherence,PV.CurrentRegimen,PV.HCWConcern,PV.TCAReason,PV.ClinicalNotes
						  ,[GeneralExamination],[SystemExamination],[Skin],[Eyes],[ENT],[Chest],[CVS],[Abdomen],[CNS],[Genitourinary]
							-----Missing columns Added later by Dennis
						  ,PV.Breastfeeding 
						FROM [DWAPICentral].[dbo].[PatientExtract] P WITH (NoLock)  
						LEFT JOIN [DWAPICentral].[dbo].[PatientArtExtract] PA WITH(NoLock)  ON PA.[PatientId]= P.ID
						INNER JOIN [DWAPICentral].[dbo].[PatientVisitExtract] PV WITH(NoLock)  ON PV.[PatientId]= P.ID AND PV.Voided=0
						INNER JOIN [DWAPICentral].[dbo].[Facility] F WITH(NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0
						WHERE p.gender!='Unknown' AND VisitDate > @MaxVisit_Hist
			


					UPDATE [ODS].[dbo].[CT_Visit_Log]
					SET [LoadEndDateTime]= GETDATE()
					WHERE MaxVisitDate = @VisitDate

	END

GO
/****** Object:  StoredProcedure [dbo].[Populate_ARTOutcome]    Script Date: 2/9/2023 3:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Populate_ARTOutcome]

AS
BEGIN

declare @as_of_date as date;
set @as_of_date = '2022-10-31';
		--declare @as_of_date as date;
		truncate table  ODS.dbo.HistoricalARTOutcomesBaseTable;

		select @as_of_date =EOMONTH(DATEADD(MONTH,-1,GETDATE()));


		with clinical_visits_as_of_date as (
			/* get visits as of date */
			select 
				PatientPK,
				PatientID,
				SiteCode,
				VisitDate,
				NextAppointmentDate,
				PopulationType,
				KeyPopulationType,
				CurrentRegimen,
				Emr
			from ODS.dbo.CT_PatientVisits
			where SiteCode > 0 and VisitDate <= @as_of_date
		),
		pharmacy_visits_as_of_date as (
			 /* get pharmacy dispensations as of date */
			select 
				PatientPK,
				PatientID,
				SiteCode,
				DispenseDate,
				ExpectedReturn,
				Emr
			from ODS.dbo.CT_PatientPharmacy
			where SiteCode > 0 and DispenseDate <= @as_of_date  
		),
		patient_art_and_enrollment_info as (
			 /* get patients' ART start date */
			select
				distinct CT_ARTPatients.PatientID,
				CT_ARTPatients.PatientPK,
				CT_ARTPatients.SiteCode,
				CT_ARTPatients.StartARTDate,
				CT_ARTPatients.StartRegimen,
				CT_ARTPatients.StartRegimenLine,
				CT_Patient.RegistrationAtCCC as EnrollmentDate,
				CT_Patient.DOB,
				CT_Patient.Gender,
				CT_Patient.DateConfirmedHIVPositive,
				datediff(yy, CT_Patient.DOB, CT_Patient.RegistrationAtCCC) as AgeEnrollment
			from ODS.dbo.CT_ARTPatients
			left join ODS.dbo.CT_Patient  on CT_Patient.PatientID = CT_ARTPatients.PatientID
			and CT_Patient.PatientPK = CT_ARTPatients.PatientPK
			and CT_Patient.SiteCode = CT_ARTPatients.SiteCode
		),
		visit_encounter_as_of_date_ordering as (
			 /* order visits as of date by the VisitDate */
			select 
				clinical_visits_as_of_date.*,
				row_number() over (partition by PatientPK, PatientID, SiteCode order by VisitDate desc) as rank
			from clinical_visits_as_of_date
		),
		pharmacy_dispense_as_of_date_ordering as (
			/* order pharmacy dispensations as of date by the VisitDate */
			select 
				pharmacy_visits_as_of_date.*,
				row_number() over (partition by PatientPK, PatientID, SiteCode order by DispenseDate desc) as rank
			from pharmacy_visits_as_of_date
		),
		last_visit_encounter_as_of_date as (
			/*get the latest visit record for patients for as of date */
			select 
				*
			from visit_encounter_as_of_date_ordering
			where rank = 1
		),
		last_pharmacy_dispense_as_of_date as (
			/*get the latest pharmacy dispensations record for patients for as of date */
			select
				*
			from pharmacy_dispense_as_of_date_ordering
			where rank = 1
		),
		effective_discontinuation_ordering as (
			/*order the effective discontinuation by the EffectiveDiscontinuationDate*/
			select 
				PatientID,
				PatientPK,
				SiteCode,
				EffectiveDiscontinuationDate,
				ExitDate,
				ExitReason,
				row_number() over (partition by PatientPK, PatientID, SiteCode order by EffectiveDiscontinuationDate desc) as rank
			from ODS.dbo.CT_PatientStatus
			where ExitDate is not null and EffectiveDiscontinuationDate is not null
		),
		latest_effective_discontinuation as (
			/*get the latest discontinuation record*/
			select 
				*
			from effective_discontinuation_ordering
			where rank = 1
		),
		exits_as_of_date as (
			/* get exits as of date */
			select 
				PatientID,
				PatientPK,
				SiteCode,
				ExitDate,
				ExitReason
			from ODS.dbo.CT_PatientStatus
			where ExitDate <= @as_of_date 
		),
		exits_as_of_date_ordering as (
			/* order the exits by the ExitDate*/
			select 
				PatientID,
				PatientPK,
				SiteCode,
				ExitDate,
				ExitReason,
				row_number() over (partition by PatientPK, PatientID, SiteCode order by ExitDate desc) as rank
			from exits_as_of_date
		),
		last_exit_as_of_date as (
			/* get latest exit_date as of date */
			select 
				*
			from exits_as_of_date_ordering
			where rank = 1
		),
		visits_and_dispense_encounters_combined_tbl as (
			/* combine latest visits and latest pharmacy dispensation records as of date - 'borrowed logic from the view vw_PatientLastEnconter*/
			/* we don't include the CT_ARTPatients table logic because this table has only the latest records of the patients (no history) */
			select  distinct coalesce (last_visit.PatientID, last_dispense.PatientID) as PatientID,
					coalesce(last_visit.SiteCode, last_dispense.SiteCode) as SiteCode,
					coalesce(last_visit.PatientPK, last_dispense.PatientPK) as PatientPK ,
					coalesce(last_visit.Emr, last_dispense.Emr) as Emr,
					case
						when last_visit.VisitDate >= last_dispense.DispenseDate then last_visit.VisitDate 
						else isnull(last_dispense.DispenseDate, last_visit.VisitDate)
					end as LastEncounterDate,
					case 
						when last_visit.NextAppointmentDate >= last_dispense.ExpectedReturn then last_visit.NextAppointmentDate 
						else isnull(last_dispense.ExpectedReturn, last_visit.NextAppointmentDate)  
					end as NextAppointmentDate
			from last_visit_encounter_as_of_date as last_visit
			full join last_pharmacy_dispense_as_of_date as last_dispense on last_visit.PatientID = last_dispense.PatientID 
				and last_visit.SiteCode = last_dispense.SiteCode 
				and last_visit.PatientPK = last_dispense.PatientPK
			where 
				case
					when last_visit.VisitDate >= last_dispense.DispenseDate then last_visit.VisitDate 
				else isnull(last_dispense.DispenseDate, last_visit.VisitDate)
				end is not null
		),
		last_encounter as (
			/* preparing the latest encounter records as of date */
			select
				visits_and_dispense_encounters_combined_tbl.PatientID,
				visits_and_dispense_encounters_combined_tbl.SiteCode,
				visits_and_dispense_encounters_combined_tbl.PatientPK,
				visits_and_dispense_encounters_combined_tbl.Emr,
				visits_and_dispense_encounters_combined_tbl.LastEncounterDate,
				case 
					when datediff(dd, @as_of_date, visits_and_dispense_encounters_combined_tbl.NextAppointmentDate) >= 365 then dateadd(day, 30, LastEncounterDate)
					else visits_and_dispense_encounters_combined_tbl.NextAppointmentDate 
				end As NextAppointmentDate    
			from visits_and_dispense_encounters_combined_tbl
		),
		ARTOutcomesCompuation as (
			/* computing the ART_Outcome as of date - 'borrowed logic from the view vw_ARTOutcomeX'*/
			select 
				last_encounter.*,
				patient_art_and_enrollment_info.startARTDate,
				last_exit_as_of_date.ExitDate,
				patient_art_and_enrollment_info.EnrollmentDate,
				patient_art_and_enrollment_info.AgeEnrollment,
				patient_art_and_enrollment_info.StartRegimen,
				patient_art_and_enrollment_info.StartRegimenLine,
				patient_art_and_enrollment_info.DateConfirmedHIVPositive,
				patient_art_and_enrollment_info.Gender,
				datediff(year, patient_art_and_enrollment_info.DOB, last_encounter.LastEncounterDate) as AgeLastVisit,
				case 
					when latest_effective_discontinuation.ExitDate is not null 
						and latest_effective_discontinuation.ExitReason <> 'DIED' 
						and latest_effective_discontinuation.EffectiveDiscontinuationDate > eomonth(@as_of_date) then 'V'
					when patient_art_and_enrollment_info.startARTDate > dateadd(s,-1,dateadd(mm, datediff(m,0, @as_of_date) + 1 ,0)) then 'NP'
					when last_exit_as_of_date.ExitDate is not null then substring(last_exit_as_of_date.ExitReason, 1, 1)
					when eomonth(@as_of_date) < last_encounter.NextAppointmentDate
					  or datediff(dd, last_encounter.NextAppointmentDate, eomonth(@as_of_date)) <= 30 then 'V'
					when datediff(dd, last_encounter.NextAppointmentDate, eomonth(@as_of_date)) > 30 then 'uL'
					when NextAppointmentDate is null then 'NV'
				end as ARTOutome,
				@as_of_date as AsOfDate
			from last_encounter
			left join latest_effective_discontinuation on latest_effective_discontinuation.PatientID = last_encounter.PatientID
				and latest_effective_discontinuation.PatientPK = last_encounter.PatientPK
				and latest_effective_discontinuation.SiteCode = last_encounter.SiteCode
			left join last_exit_as_of_date on last_exit_as_of_date.PatientID = last_encounter.PatientID
				and last_exit_as_of_date.PatientPK = last_encounter.PatientPK
				and last_exit_as_of_date.SiteCode = last_encounter.SiteCode
			left join patient_art_and_enrollment_info on patient_art_and_enrollment_info.PatientID = last_encounter.PatientID
				and patient_art_and_enrollment_info.PatientPK = last_encounter.PatientPK
				and patient_art_and_enrollment_info.SiteCode = last_encounter.SiteCode
		)
		select 
			distinct ARTOutcomesCompuation.PatientID,
			ARTOutcomesCompuation.PatientPK,
			ARTOutcomesCompuation.SiteCode as MFLCode,
			facility.[Facility Name] as FacilityName,
			partner.SDP as CTPartner,
			partner.[SDP Agency] as CTAgency,
			facility.County,
			facility.SubCounty as Subcounty,
			last_visit_encounter_as_of_date.PopulationType,
			last_visit_encounter_as_of_date.KeyPopulationType,
			last_visit_encounter_as_of_date.CurrentRegimen,
			ARTOutcomesCompuation.Gender,
			ARTOutcomesCompuation.AgeLastVisit,
			ARTOutcomesCompuation.EnrollmentDate,
			ARTOutcomesCompuation.AgeEnrollment,
			ARTOutcomesCompuation.StartRegimen,
			ARTOutcomesCompuation.StartRegimenLine,
			ARTOutcomesCompuation.ARTOutome,
			ARTOutcomesCompuation.AsOfDate,
			ARTOutcomesCompuation.LastEncounterDate as DateLastVisit,
			ARTOutcomesCompuation.NextAppointmentDate,
			ARTOutcomesCompuation.StartARTDate,
			ARTOutcomesCompuation.DateConfirmedHIVPositive
			Into #ArtOutomes
		from ARTOutcomesCompuation
		left join [ODS].dbo.ALL_EMRSites as partner ON ARTOutcomesCompuation.SiteCode = partner.SDP
		left join [ODS].dbo.ALL_EMRSites as facility ON ARTOutcomesCompuation.SiteCode = facility.MFL_Code
		left join last_visit_encounter_as_of_date  on last_visit_encounter_as_of_date.PatientID = ARTOutcomesCompuation.PatientID
			and last_visit_encounter_as_of_date.PatientPK = ARTOutcomesCompuation.PatientPK
			and last_visit_encounter_as_of_date.SiteCode = ARTOutcomesCompuation.SiteCode

			insert  into  [ODS].[dbo].[HistoricalARTOutcomesBaseTable](PatientID,PatientPK,MFLCode,AsOfDate)

			select * from #ArtOutomes

			drop table #ArtOutomes

END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -480
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CT_PatientPharmacy"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 343
            End
            DisplayFlags = 280
            TopColumn = 17
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCT_PatientPharmact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCT_PatientPharmact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CT_PatientVisits"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 372
            End
            DisplayFlags = 280
            TopColumn = 42
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCT_PatientVisits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCT_PatientVisits'
GO
