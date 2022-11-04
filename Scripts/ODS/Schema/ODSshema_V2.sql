USE [ODS]
GO
/****** Object:  Table [dbo].[ALL_EMRSites]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALL_EMRSites](
	[MFL_Code] [varchar](50) NULL,
	[Facility Name] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[Owner] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[SDP] [varchar](250) NULL,
	[SDP Agency] [varchar](50) NULL,
	[Implementation] [varchar](50) NULL,
	[EMR] [varchar](50) NULL,
	[EMR Status] [varchar](50) NULL,
	[HTS Use] [varchar](50) NULL,
	[HTS Deployment] [varchar](50) NULL,
	[HTS Status] [varchar](50) NULL,
	[IL Status] [varchar](50) NULL,
	[Registration IE] [varchar](50) NULL,
	[Phamarmacy IE] [varchar](50) NULL,
	[mlab] [varchar](50) NULL,
	[Ushauri] [varchar](50) NULL,
	[Nishauri] [varchar](50) NULL,
	[Appointment Management IE] [varchar](50) NULL,
	[OVC] [varchar](50) NULL,
	[OTZ] [varchar](50) NULL,
	[PrEP] [varchar](50) NULL,
	[3PM] [varchar](50) NULL,
	[AIR] [varchar](50) NULL,
	[KP] [varchar](50) NULL,
	[MCH] [varchar](50) NULL,
	[TB] [varchar](50) NULL,
	[Lab Manifest] [varchar](50) NULL,
	[Comments] [varchar](250) NULL,
	[Project] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AdverseEvent_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AdverseEvent_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxAdverseEventStartDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AdverseEvents]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AdverseEvents](
	[PatientID] [varchar](100) NULL,
	[Patientpk] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[AdverseEvent] [varchar](100) NULL,
	[AdverseEventStartDate] [date] NULL,
	[AdverseEventEndDate] [date] NULL,
	[Severity] [varchar](100) NULL,
	[VisitDate] [date] NULL,
	[EMR] [varchar](50) NULL,
	[Project] [varchar](50) NULL,
	[AdverseEventCause] [varchar](50) NULL,
	[AdverseEventRegimen] [varchar](50) NULL,
	[AdverseEventActionTaken] [varchar](50) NULL,
	[AdverseEventClinicalOutcome] [varchar](50) NULL,
	[dateimported] [date] NULL,
	[AdverseEventIsPregnant] [bit] NULL,
	[CKV] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AllergiesChronicIllness]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AllergiesChronicIllness](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[ChronicIllness] [nvarchar](150) NULL,
	[ChronicOnsetDate] [datetime2](7) NULL,
	[knownAllergies] [nvarchar](150) NULL,
	[AllergyCausativeAgent] [nvarchar](150) NULL,
	[AllergicReaction] [nvarchar](150) NULL,
	[AllergySeverity] [nvarchar](150) NULL,
	[AllergyOnsetDate] [datetime2](7) NULL,
	[Skin] [nvarchar](150) NULL,
	[Eyes] [nvarchar](150) NULL,
	[ENT] [nvarchar](150) NULL,
	[Chest] [nvarchar](150) NULL,
	[CVS] [nvarchar](150) NULL,
	[Abdomen] [nvarchar](150) NULL,
	[CNS] [nvarchar](150) NULL,
	[Genitourinary] [nvarchar](150) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_AllergiesChronicIllness_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_AllergiesChronicIllness_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ARTPatient_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ARTPatient_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxLastVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ARTPatients]    Script Date: 10/19/2022 3:04:02 PM ******/
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
	[PreviousARTUse] [nvarchar](150) NULL,
	[PreviousARTPurpose] [nvarchar](150) NULL,
	[DateLastUsed] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ContactListing]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ContactListing](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[PartnerPersonID] [int] NULL,
	[ContactAge] [nvarchar](150) NULL,
	[ContactSex] [nvarchar](150) NULL,
	[ContactMaritalStatus] [nvarchar](150) NULL,
	[RelationshipWithPatient] [nvarchar](150) NULL,
	[ScreenedForIpv] [nvarchar](150) NULL,
	[IpvScreening] [nvarchar](150) NULL,
	[IPVScreeningOutcome] [nvarchar](150) NULL,
	[CurrentlyLivingWithIndexClient] [nvarchar](150) NULL,
	[KnowledgeOfHivStatus] [nvarchar](150) NULL,
	[PnsApproach] [nvarchar](150) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL,
	[ContactPatientPK] [int] NULL,
	[DateCreated] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_ContactListing_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_ContactListing_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxDateCreated] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Covid]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Covid](
	[PatientPK] [int] NOT NULL,
	[PatientID] [nvarchar](100) NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[Covid19AssessmentDate] [date] NULL,
	[ReceivedCOVID19Vaccine] [nvarchar](150) NULL,
	[DateGivenFirstDose] [date] NULL,
	[FirstDoseVaccineAdministered] [nvarchar](150) NULL,
	[DateGivenSecondDose] [date] NULL,
	[SecondDoseVaccineAdministered] [nvarchar](150) NULL,
	[VaccinationStatus] [nvarchar](150) NULL,
	[VaccineVerification] [nvarchar](150) NULL,
	[BoosterGiven] [nvarchar](150) NULL,
	[BoosterDose] [nvarchar](150) NULL,
	[BoosterDoseDate] [date] NULL,
	[EverCOVID19Positive] [nvarchar](150) NULL,
	[COVID19TestDate] [date] NULL,
	[PatientStatus] [nvarchar](150) NULL,
	[AdmissionStatus] [nvarchar](150) NULL,
	[AdmissionUnit] [nvarchar](150) NULL,
	[MissedAppointmentDueToCOVID19] [nvarchar](150) NULL,
	[COVID19PositiveSinceLasVisit] [nvarchar](150) NULL,
	[COVID19TestDateSinceLastVisit] [date] NULL,
	[PatientStatusSinceLastVisit] [nvarchar](150) NULL,
	[AdmissionStatusSinceLastVisit] [nvarchar](150) NULL,
	[AdmissionStartDate] [date] NULL,
	[AdmissionEndDate] [date] NULL,
	[AdmissionUnitSinceLastVisit] [nvarchar](150) NULL,
	[SupplementalOxygenReceived] [nvarchar](150) NULL,
	[PatientVentilated] [nvarchar](150) NULL,
	[TracingFinalOutcome] [nvarchar](150) NULL,
	[CauseOfDeath] [nvarchar](150) NULL,
	[CKV] [nvarchar](122) NULL,
	[DateImported] [datetime] NOT NULL,
	[BoosterDoseVerified] [nvarchar](10) NULL,
	[Sequence] [nvarchar](10) NULL,
	[COVID19TestResult] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Covid_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Covid_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxCovid19AssessmentDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DefaulterTracing]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DefaulterTracing](
	[PatientPK] [int] NOT NULL,
	[PatientID] [nvarchar](100) NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [date] NULL,
	[EncounterId] [int] NULL,
	[TracingType] [nvarchar](150) NULL,
	[TracingOutcome] [nvarchar](150) NULL,
	[AttemptNumber] [int] NULL,
	[IsFinalTrace] [nvarchar](150) NULL,
	[TrueStatus] [nvarchar](150) NULL,
	[CauseOfDeath] [nvarchar](150) NULL,
	[Comments] [nvarchar](150) NULL,
	[BookingDate] [date] NULL,
	[CKV] [nvarchar](122) NULL,
	[DateImported] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DefaulterTracing_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DefaulterTracing_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DepressionScreening]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DepressionScreening](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[PHQ9_1] [nvarchar](150) NULL,
	[PHQ9_2] [nvarchar](150) NULL,
	[PHQ9_3] [nvarchar](150) NULL,
	[PHQ9_4] [nvarchar](150) NULL,
	[PHQ9_5] [nvarchar](150) NULL,
	[PHQ9_6] [nvarchar](150) NULL,
	[PHQ9_7] [nvarchar](150) NULL,
	[PHQ9_8] [nvarchar](150) NULL,
	[PHQ9_9] [nvarchar](150) NULL,
	[PHQ_9_rating] [nvarchar](150) NULL,
	[DepressionAssesmentScore] [int] NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DepressionScreening_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DepressionScreening_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DrugAlcoholScreening]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DrugAlcoholScreening](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[DrinkingAlcohol] [nvarchar](150) NULL,
	[Smoking] [nvarchar](150) NULL,
	[DrugUse] [nvarchar](150) NULL,
	[Ident] [int] NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DrugAlcoholScreening_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DrugAlcoholScreening_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_EnhancedAdherenceCounselling]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_EnhancedAdherenceCounselling](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[SessionNumber] [int] NULL,
	[DateOfFirstSession] [datetime2](7) NULL,
	[PillCountAdherence] [int] NULL,
	[MMAS4_1] [nvarchar](150) NULL,
	[MMAS4_2] [nvarchar](150) NULL,
	[MMAS4_3] [nvarchar](150) NULL,
	[MMAS4_4] [nvarchar](150) NULL,
	[MMSA8_1] [nvarchar](150) NULL,
	[MMSA8_2] [nvarchar](150) NULL,
	[MMSA8_3] [nvarchar](150) NULL,
	[MMSA8_4] [nvarchar](150) NULL,
	[MMSAScore] [nvarchar](150) NULL,
	[EACRecievedVL] [nvarchar](150) NULL,
	[EACVL] [nvarchar](150) NULL,
	[EACVLConcerns] [nvarchar](150) NULL,
	[EACVLThoughts] [nvarchar](150) NULL,
	[EACWayForward] [nvarchar](150) NULL,
	[EACCognitiveBarrier] [nvarchar](150) NULL,
	[EACBehaviouralBarrier_1] [nvarchar](150) NULL,
	[EACBehaviouralBarrier_2] [nvarchar](150) NULL,
	[EACBehaviouralBarrier_3] [nvarchar](150) NULL,
	[EACBehaviouralBarrier_4] [nvarchar](150) NULL,
	[EACBehaviouralBarrier_5] [nvarchar](150) NULL,
	[EACEmotionalBarriers_1] [nvarchar](150) NULL,
	[EACEmotionalBarriers_2] [nvarchar](150) NULL,
	[EACEconBarrier_1] [nvarchar](150) NULL,
	[EACEconBarrier_2] [nvarchar](150) NULL,
	[EACEconBarrier_3] [nvarchar](150) NULL,
	[EACEconBarrier_4] [nvarchar](150) NULL,
	[EACEconBarrier_5] [nvarchar](150) NULL,
	[EACEconBarrier_6] [nvarchar](150) NULL,
	[EACEconBarrier_7] [nvarchar](150) NULL,
	[EACEconBarrier_8] [nvarchar](150) NULL,
	[EACReviewImprovement] [nvarchar](150) NULL,
	[EACReviewMissedDoses] [nvarchar](150) NULL,
	[EACReviewStrategy] [nvarchar](150) NULL,
	[EACReferral] [nvarchar](150) NULL,
	[EACReferralApp] [nvarchar](150) NULL,
	[EACReferralExperience] [nvarchar](150) NULL,
	[EACHomevisit] [nvarchar](150) NULL,
	[EACAdherencePlan] [nvarchar](150) NULL,
	[EACFollowupDate] [datetime2](7) NULL,
	[Ident] [int] NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_EnhancedAdherenceCounselling_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_EnhancedAdherenceCounselling_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_GbvScreening]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_GbvScreening](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[IPV] [nvarchar](150) NULL,
	[PhysicalIPV] [nvarchar](150) NULL,
	[EmotionalIPV] [nvarchar](150) NULL,
	[SexualIPV] [nvarchar](150) NULL,
	[IPVRelationship] [nvarchar](150) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_GbvScreening_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_GbvScreening_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ipt]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ipt](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[OnTBDrugs] [nvarchar](150) NULL,
	[OnIPT] [nvarchar](150) NULL,
	[EverOnIPT] [nvarchar](150) NULL,
	[Cough] [nvarchar](150) NULL,
	[Fever] [nvarchar](150) NULL,
	[NoticeableWeightLoss] [nvarchar](150) NULL,
	[NightSweats] [nvarchar](150) NULL,
	[Lethargy] [nvarchar](150) NULL,
	[ICFActionTaken] [nvarchar](150) NULL,
	[TestResult] [nvarchar](150) NULL,
	[TBClinicalDiagnosis] [nvarchar](150) NULL,
	[ContactsInvited] [nvarchar](150) NULL,
	[EvaluatedForIPT] [nvarchar](150) NULL,
	[StartAntiTBs] [nvarchar](150) NULL,
	[TBRxStartDate] [datetime2](7) NULL,
	[TBScreening] [nvarchar](150) NULL,
	[IPTClientWorkUp] [nvarchar](150) NULL,
	[StartIPT] [nvarchar](150) NULL,
	[IndicationForIPT] [nvarchar](150) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ipt_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ipt_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Otz]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Otz](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[OTZEnrollmentDate] [datetime2](7) NULL,
	[TransferInStatus] [nvarchar](150) NULL,
	[ModulesPreviouslyCovered] [nvarchar](150) NULL,
	[ModulesCompletedToday] [nvarchar](150) NULL,
	[SupportGroupInvolvement] [nvarchar](150) NULL,
	[Remarks] [nvarchar](150) NULL,
	[TransitionAttritionReason] [nvarchar](150) NULL,
	[OutcomeDate] [datetime2](7) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Otz_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Otz_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ovc]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ovc](
	[PatientID] [nvarchar](100) NULL,
	[PatientPK] [int] NOT NULL,
	[FacilityID] [int] NULL,
	[SiteCode] [int] NOT NULL,
	[FacilityName] [nvarchar](150) NULL,
	[SatelliteName] [int] NULL,
	[VisitID] [int] NULL,
	[VisitDate] [datetime] NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[OVCEnrollmentDate] [datetime2](7) NULL,
	[RelationshipToClient] [nvarchar](150) NULL,
	[EnrolledinCPIMS] [nvarchar](150) NULL,
	[CPIMSUniqueIdentifier] [nvarchar](150) NULL,
	[PartnerOfferingOVCServices] [nvarchar](150) NULL,
	[OVCExitReason] [nvarchar](150) NULL,
	[ExitDate] [datetime2](7) NULL,
	[DateImported] [datetime] NOT NULL,
	[CKV] [nvarchar](122) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Ovc_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Ovc_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Patient]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Patient](
	[Id] [nvarchar](150) NULL,
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
	[Occupation] [nvarchar](150) NULL,
	[NUPI] [nvarchar](50) NULL,
	[Processed] [bit] NULL,
	[StatusAtCCC] [nvarchar](50) NULL,
	[StatusAtPMTCT] [nvarchar](50) NULL,
	[StatusAtTBClinic] [nvarchar](50) NULL,
	[Created] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Patient_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Patient_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxRegistrationDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientLabs]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientLabs](
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
	[SampleType] [nvarchar](150) NULL,
	[Processed] [bit] NULL,
	[Created] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientLabs_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientLabs_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxOrderedbyDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientPharmacy]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientPharmacy](
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
	[RegimenChangedSwitched] [nvarchar](150) NULL,
	[RegimenChangeSwitchReason] [nvarchar](150) NULL,
	[StopRegimenReason] [nvarchar](150) NULL,
	[StopRegimenDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientPharmacy_Old]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientPharmacy_Old](
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
	[PKV] [varchar](250) NULL,
	[PatientUID] [uniqueidentifier] NULL,
	[DeletedFlag] [bit] NULL,
	[RegimenLine] [varchar](250) NULL,
	[RegimenChangedSwitched] [nvarchar](150) NULL,
	[RegimenChangeSwitchReason] [nvarchar](150) NULL,
	[StopRegimenReason] [nvarchar](150) NULL,
	[StopRegimenDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientStatus]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientStatus](
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NOT NULL,
	[FacilityName] [varchar](250) NULL,
	[ExitDescription] [varchar](250) NULL,
	[ExitDate] [date] NULL,
	[ExitReason] [varchar](250) NULL,
	[PatientPK] [varchar](50) NOT NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[CKV] [varchar](250) NULL,
	[TOVerified] [nvarchar](150) NULL,
	[TOVerifiedDate] [datetime] NULL,
	[ReEnrollmentDate] [datetime] NULL,
	[ReasonForDeath] [varchar](150) NULL,
	[SpecificDeathReason] [varchar](150) NULL,
	[DeathDate] [date] NULL,
	[EffectiveDiscontinuationDate] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_patientStatus_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_patientStatus_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxExitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientStatus_Old]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientStatus_Old](
	[PatientID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NOT NULL,
	[FacilityName] [varchar](250) NULL,
	[ExitDescription] [varchar](250) NULL,
	[ExitDate] [date] NULL,
	[ExitReason] [varchar](250) NULL,
	[PatientPK] [varchar](50) NOT NULL,
	[Emr] [varchar](100) NULL,
	[Project] [varchar](100) NULL,
	[DateImported] [date] NULL,
	[PKV] [varchar](250) NULL,
	[PatientUID] [uniqueidentifier] NULL,
	[TOVerified] [nvarchar](150) NULL,
	[TOVerifiedDate] [datetime] NULL,
	[ReEnrollmentDate] [datetime] NULL,
	[ReasonForDeath] [varchar](150) NULL,
	[SpecificDeathReason] [varchar](150) NULL,
	[DeathDate] [date] NULL,
	[EffectiveDiscontinuationDate] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientsWABWHOCD4]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientsWABWHOCD4](
	[PatientID] [varchar](50) NULL,
	[FacilityID] [varchar](50) NULL,
	[SiteCode] [varchar](50) NULL,
	[bCD4] [float] NULL,
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
	[PatientPK] [varchar](50) NULL,
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
	[6MonthCD4] [float] NULL,
	[6MonthCD4_Date] [date] NULL,
	[12MonthCD4] [float] NULL,
	[12MonthCD4_Date] [date] NULL,
	[6MonthCD4Percent] [float] NULL,
	[6MonthCD4Percent_Date] [date] NULL,
	[12MonthCD4Percent] [float] NULL,
	[12MonthCD4Percent_Date] [date] NULL,
	[FirstCD4AfterARTStart] [float] NULL,
	[FirstCD4AfterARTStart_Date] [date] NULL,
	[FirtsCD4AfterARTStartPercent] [float] NULL,
	[FirtsCD4AfterARTStartPercent_date] [date] NULL,
	[DateImported] [date] NULL,
	[6MonthVL] [varchar](50) NULL,
	[6MonthVlDate] [date] NULL,
	[12MonthVL] [varchar](50) NULL,
	[12MonthVLDate] [date] NULL,
	[LstickBaselineCD4] [float] NULL,
	[LstickBaselineCD4_Date] [date] NULL,
	[CKV] [varchar](250) NULL,
	[18MonthVL] [varchar](50) NULL,
	[18MonthVlDate] [date] NULL,
	[24MonthVL] [varchar](50) NULL,
	[24MonthVLDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientsWABWHOCD4_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientsWABWHOCD4_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxbCD4Date] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientVisits]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientVisits](
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
	[DifferentiatedCare] [nvarchar](150) NULL,
	[StabilityAssessment] [nvarchar](150) NULL,
	[KeyPopulationType] [nvarchar](150) NULL,
	[PopulationType] [nvarchar](150) NULL,
	[VisitBy] [nvarchar](150) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[Muac] [int] NULL,
	[NutritionalStatus] [nvarchar](150) NULL,
	[EverHadMenses] [nvarchar](150) NULL,
	[Breastfeeding] [nvarchar](150) NULL,
	[Menopausal] [nvarchar](150) NULL,
	[NoFPReason] [nvarchar](150) NULL,
	[ProphylaxisUsed] [nvarchar](150) NULL,
	[CTXAdherence] [nvarchar](150) NULL,
	[CurrentRegimen] [nvarchar](150) NULL,
	[HCWConcern] [nvarchar](150) NULL,
	[TCAReason] [nvarchar](150) NULL,
	[ClinicalNotes] [nvarchar](150) NULL,
	[GeneralExamination] [nvarchar](150) NULL,
	[SystemExamination] [nvarchar](150) NULL,
	[Skin] [nvarchar](150) NULL,
	[Eyes] [nvarchar](150) NULL,
	[ENT] [nvarchar](150) NULL,
	[Chest] [nvarchar](150) NULL,
	[CVS] [nvarchar](150) NULL,
	[Abdomen] [nvarchar](150) NULL,
	[CNS] [nvarchar](150) NULL,
	[Genitourinary] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientVisits_Old]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientVisits_Old](
	[PatientID] [nvarchar](50) NULL,
	[FacilityName] [nvarchar](250) NULL,
	[SiteCode] [nvarchar](50) NULL,
	[PatientPK] [nvarchar](50) NULL,
	[VisitID] [nvarchar](50) NULL,
	[VisitDate] [date] NULL,
	[SERVICE] [nvarchar](250) NULL,
	[VisitType] [nvarchar](250) NULL,
	[WHOStage] [nvarchar](150) NULL,
	[WABStage] [nvarchar](250) NULL,
	[Pregnant] [nvarchar](250) NULL,
	[LMP] [nvarchar](150) NULL,
	[EDD] [nvarchar](150) NULL,
	[Height] [nvarchar](150) NULL,
	[Weight] [nvarchar](150) NULL,
	[BP] [nvarchar](250) NULL,
	[OI] [nvarchar](250) NULL,
	[OIDate] [date] NULL,
	[Adherence] [nvarchar](250) NULL,
	[AdherenceCategory] [nvarchar](250) NULL,
	[FamilyPlanningMethod] [nvarchar](250) NULL,
	[PwP] [nvarchar](250) NULL,
	[GestationAge] [nvarchar](150) NULL,
	[NextAppointmentDate] [date] NULL,
	[SubstitutionFirstlineReg] [nvarchar](100) NULL,
	[SubstitutionFirstLineRegReason] [nvarchar](250) NULL,
	[SubstitutionSecondLineReg] [nvarchar](100) NULL,
	[SubstitutionSecondLineRegReason] [nvarchar](250) NULL,
	[SecondLineRegChange] [nvarchar](100) NULL,
	[SecondLineRegChangeReason] [nvarchar](250) NULL,
	[Emr] [nvarchar](100) NULL,
	[Project] [nvarchar](100) NULL,
	[DateImported] [date] NULL,
	[PKV] [nvarchar](250) NULL,
	[PatientUID] [uniqueidentifier] NULL,
	[DeletedFlag] [bit] NULL,
	[DifferentiatedCare] [nvarchar](250) NULL,
	[StabilityAssessment] [nvarchar](250) NULL,
	[KeyPopulationType] [nvarchar](250) NULL,
	[PopulationType] [nvarchar](250) NULL,
	[VisitBy] [nvarchar](150) NULL,
	[Temp] [decimal](18, 2) NULL,
	[PulseRate] [int] NULL,
	[RespiratoryRate] [int] NULL,
	[OxygenSaturation] [decimal](18, 2) NULL,
	[Muac] [int] NULL,
	[NutritionalStatus] [nvarchar](150) NULL,
	[EverHadMenses] [nvarchar](150) NULL,
	[Breastfeeding] [nvarchar](150) NULL,
	[Menopausal] [nvarchar](150) NULL,
	[NoFPReason] [nvarchar](150) NULL,
	[ProphylaxisUsed] [nvarchar](150) NULL,
	[CTXAdherence] [nvarchar](150) NULL,
	[CurrentRegimen] [nvarchar](150) NULL,
	[HCWConcern] [nvarchar](150) NULL,
	[TCAReason] [nvarchar](150) NULL,
	[ClinicalNotes] [nvarchar](150) NULL,
	[GeneralExamination] [nvarchar](150) NULL,
	[SystemExamination] [nvarchar](150) NULL,
	[Skin] [nvarchar](150) NULL,
	[Eyes] [nvarchar](150) NULL,
	[ENT] [nvarchar](150) NULL,
	[Chest] [nvarchar](150) NULL,
	[CVS] [nvarchar](150) NULL,
	[Abdomen] [nvarchar](150) NULL,
	[CNS] [nvarchar](150) NULL,
	[Genitourinary] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PharmacyVisit_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PharmacyVisit_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxDispenseDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PrepLabs]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PrepLabs](
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
	[Date_Last_Modified] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Visit_Log]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Visit_Log](
	[SiteCode] [nvarchar](10) NULL,
	[MaxVisitDate] [date] NULL,
	[LoadStartDateTime] [datetime] NULL,
	[LoadEndDateTime] [datetime] NULL,
	[LoadCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Load_CT_AdverseEvents]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_AdverseEvents_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_All_EMRSites]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_AllergiesChronicIllness]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_AllergiesChronicIllness_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_ARTPatients_Old]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_ARTPatients_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_ContactListing]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_ContactListing_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Covid]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Covid_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_DefaulterTracing]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_DefaulterTracing_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_DepressionScreening]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_DepressionScreening_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_DrugAlcoholScreening]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_DrugAlcoholScreening_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_EnhancedAdherenceCounselling]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_EnhancedAdherenceCounselling_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_GbvScreening]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_GbvScreening_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Ipt]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Ipt_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Otz]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Otz_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Ovz_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Patient]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Patient_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientLabs]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientLabs_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientPharmacy]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientPharmacy_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientStatus]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientStatus_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientsWABWHOCD4]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientVisits]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientVisits_Optimized]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Visit]    Script Date: 10/19/2022 3:04:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Populate_ARTOutcome]    Script Date: 10/19/2022 3:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Populate_ARTOutcome]

AS
BEGIN

declare @as_of_date as date;
--set @as_of_date = '2022-06-30';
		--declare @as_of_date as date;
		truncate table  NDWH_DB.dbo.Landing_ARTOutcomeReport;

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

			insert  into  [NDWH_DB].[dbo].[Landing_ARTOutcomeReport](PatientID,PatientPK,MFLCode,FacilityName,CTPartner,CTAgency,County,Subcounty,PopulationType,KeyPopulationType,CurrentRegimen,Gender,AgeLastVisit,EnrollmentDate,AgeEnrollment,StartRegimen,StartRegimenLine,ARTOutome,AsOfDate,DateLastVisit,NextAppointmentDate,StartARTDate,DateConfirmedHIVPositive
)
			select * from #ArtOutomes

			drop table #ArtOutomes

END
GO
