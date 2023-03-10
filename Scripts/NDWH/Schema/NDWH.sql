USE [NDWH]
GO
/****** Object:  User [palladium_analytics_readonly]    Script Date: 2/9/2023 3:06:13 PM ******/
CREATE USER [palladium_analytics_readonly] FOR LOGIN [palladium_analytics_readonly] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [palladium_analytics_readonly]
GO
/****** Object:  Table [dbo].[DimAdverseEvent]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEvent](
	[AdverseEventKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventID] [nvarchar](4000) NULL,
	[AdverseEvent] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAdverseEventActionTaken]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEventActionTaken](
	[AdverseEventActionTakenKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventActionTakenID] [nvarchar](4000) NULL,
	[AdverseEventActionTaken] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAdverseEventCause]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEventCause](
	[AdverseEventCauseKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventCauseID] [nvarchar](4000) NULL,
	[AdverseEventCause] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAdverseEventRegimen]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEventRegimen](
	[AdverseEventRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventRegimenID] [nvarchar](4000) NULL,
	[AdverseEventRegimen] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAgeGroup]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAgeGroup](
	[AgeGroupKey] [int] IDENTITY(1,1) NOT NULL,
	[Age] [int] NOT NULL,
	[MOHAgeGroup] [varchar](8) NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[AgeGroupKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAgency]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAgency](
	[AgencyKey] [int] IDENTITY(1,1) NOT NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[AgencyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimArtDaysBand]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimArtDaysBand](
	[ArtDaysBandKey] [int] IDENTITY(1,1) NOT NULL,
	[LowerLimit] [nvarchar](4000) NULL,
	[UpperLimit] [nvarchar](4000) NULL,
	[ArtDaysBand] [nvarchar](4000) NULL,
	[Row_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimARTOutcome]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimARTOutcome](
	[ARTOutcomeKey] [int] IDENTITY(1,1) NOT NULL,
	[ARTOutcome] [varchar](2) NULL,
	[ARTOutcomeDescription] [varchar](17) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ARTOutcomeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimBooster]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimBooster](
	[BoosterKey] [int] IDENTITY(1,1) NOT NULL,
	[BoosterDescription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCovidPatient]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCovidPatient](
	[CovidPatientKey] [int] IDENTITY(1,1) NOT NULL,
	[CovidPatientID] [nvarchar](4000) NULL,
	[CovidPatientName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [nvarchar](4000) NOT NULL,
	[Date] [date] NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[CalendarQuarter] [int] NULL,
	[CDCFinancialQuarter] [int] NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDifferentiatedCare]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDifferentiatedCare](
	[DifferentiatedCareKey] [int] IDENTITY(1,1) NOT NULL,
	[DifferentiatedCare] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[DifferentiatedCareKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDrug]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDrug](
	[DrugKey] [int] IDENTITY(1,1) NOT NULL,
	[Drug] [varchar](250) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[DrugKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEMR]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEMR](
	[EMRKey] [int] IDENTITY(1,1) NOT NULL,
	[EMRID] [nvarchar](4000) NULL,
	[EMRDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimExitReason]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimExitReason](
	[ExitReasonKey] [int] IDENTITY(1,1) NOT NULL,
	[ExitReasonID] [nvarchar](4000) NULL,
	[ExitReason] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFacility]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFacility](
	[FacilityKey] [int] IDENTITY(1,1) NOT NULL,
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[EMR] [varchar](50) NULL,
	[Project] [nvarchar](4000) NULL,
	[Longitude] [varchar](50) NULL,
	[Latitude] [varchar](50) NULL,
	[DateSiteAbstractionKey] [int] NULL,
	[LatestDateUploadedKey] [int] NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[FacilityKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFamilyPlanning]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFamilyPlanning](
	[FamilyPlanningKey] [int] IDENTITY(1,1) NOT NULL,
	[FamilyPlanning] [varchar](150) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[FamilyPlanningKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFirstDoseVaccineAdministered]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFirstDoseVaccineAdministered](
	[FirstDoseVaccineAdministeredKey] [int] IDENTITY(1,1) NOT NULL,
	[FirstDoseVaccineAdministered] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFirstVL]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFirstVL](
	[FirstVLKey] [int] IDENTITY(1,1) NOT NULL,
	[FirstVL] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimGender]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimGender](
	[GenderKey] [int] IDENTITY(1,1) NOT NULL,
	[GenderID] [nvarchar](4000) NULL,
	[GenderDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimHTSTraceOutcome]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimHTSTraceOutcome](
	[TraceOutcomeKey] [int] IDENTITY(1,1) NOT NULL,
	[TraceOutcome] [nvarchar](1600) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TraceOutcomeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimHTSTraceType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimHTSTraceType](
	[TraceTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[TraceType] [nvarchar](1600) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TraceTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsBoosterGiven]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsBoosterGiven](
	[IsBoosterGivenKey] [int] IDENTITY(1,1) NOT NULL,
	[IsBoosterGivenDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsFullyVaccinated]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsFullyVaccinated](
	[IsFullyVaccinatedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsFullyVaccinatedDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsOnIpt]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsOnIpt](
	[IsOnIptKey] [int] IDENTITY(1,1) NOT NULL,
	[IsOnIptID] [nvarchar](4000) NULL,
	[IsOnIpt] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimISOnTBDrugs]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimISOnTBDrugs](
	[ISOnTBDrugsKey] [int] IDENTITY(1,1) NOT NULL,
	[ISOnTBDrugsID] [nvarchar](4000) NULL,
	[ISOnTBDrugs] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsPartiallyVaccinated]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsPartiallyVaccinated](
	[IsPartiallyVaccinatedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsPartiallyVaccinatedDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsScreenedForCovid]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsScreenedForCovid](
	[IsScreenedForCovidKey] [int] IDENTITY(1,1) NOT NULL,
	[IsScreenedForCovidDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsVaccinated]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsVaccinated](
	[IsVaccinatedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsVaccinatedID] [nvarchar](4000) NULL,
	[IsVaccinatedDescription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsVaccineVerified]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsVaccineVerified](
	[IsVaccineVerifiedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsVaccineVerifiedID] [nvarchar](4000) NULL,
	[IsVaccineVerified] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimKeyPopulationType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimKeyPopulationType](
	[KeyPopulationTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[KeyPopulationType] [varchar](250) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyPopulationTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLastRegimen]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLastRegimen](
	[LastRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[LastRegimenID] [nvarchar](4000) NULL,
	[LastRegimen] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLastRegimenLine]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLastRegimenLine](
	[LastRegimenLineKey] [int] IDENTITY(1,1) NOT NULL,
	[LastRegimenLineID] [nvarchar](4000) NULL,
	[LastRegimenLine] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLastVL]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLastVL](
	[LastVLKey] [int] IDENTITY(1,1) NOT NULL,
	[LastVL] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMaritalStatus]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMaritalStatus](
	[MaritalStatusKey] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatusDescription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartner]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartner](
	[PartnerKey] [int] IDENTITY(1,1) NOT NULL,
	[PartnerName] [varchar](250) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartnerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartnerAndAgencyBridge]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartnerAndAgencyBridge](
	[PartnerKey] [int] NULL,
	[CountyKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[PartnerID] [nvarchar](4000) NULL,
	[PartnerName] [nvarchar](4000) NULL,
	[CountyName] [nvarchar](4000) NULL,
	[AgencyName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPatient]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPatient](
	[PatientKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [nvarchar](128) NULL,
	[PatientPK] [nvarchar](128) NULL,
	[HTSNumber] [nvarchar](128) NULL,
	[SiteCode] [int] NULL,
	[NUPI] [nvarchar](4000) NULL,
	[DOB] [date] NULL,
	[MaritalStatus] [nvarchar](800) NULL,
	[Gender] [nvarchar](500) NULL,
	[PatientType] [varchar](250) NULL,
	[PatientSource] [varchar](250) NULL,
	[EnrollmentWHOKey] [varchar](50) NULL,
	[DateBaselineWHOKey] [int] NULL,
	[BaseLineWHOKey] [varchar](50) NULL,
	[IsTXCurr] [int] NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPatientSource]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPatientSource](
	[PatientSourceKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientSourceID] [nvarchar](4000) NULL,
	[PatientSourceName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPatientType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPatientType](
	[PatientTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientTypeID] [nvarchar](4000) NULL,
	[PatientTypeName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPopulationType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPopulationType](
	[PopulationTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[PopulationType] [varchar](250) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PopulationTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPreviousARTRegimen]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPreviousARTRegimen](
	[PreviousARTRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[PreviousARTRegimenID] [nvarchar](4000) NULL,
	[PreviousARTRegimen] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProject]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProject](
	[ProjectKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [nvarchar](4000) NULL,
	[ProjectName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProphylaxisType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProphylaxisType](
	[ProphylaxisTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[ProphylaxisTypeID] [nvarchar](4000) NULL,
	[ProphylaxisType] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRegimen]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRegimen](
	[RegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[RegimenID] [nvarchar](4000) NULL,
	[Regimen] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRegimenLine]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRegimenLine](
	[RegimenLineKey] [int] IDENTITY(1,1) NOT NULL,
	[RegimenLine] [varchar](250) NULL,
	[RegimenLineCategory] [varchar](11) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegimenLineKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRegion]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRegion](
	[RegionKey] [int] IDENTITY(1,1) NOT NULL,
	[SubCountyKey] [int] NULL,
	[RegionID] [nvarchar](4000) NULL,
	[RegionName] [nvarchar](4000) NULL,
	[SubCounty] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRelationshipWithPatient]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRelationshipWithPatient](
	[RelationshipWithPatientKey] [int] IDENTITY(1,1) NOT NULL,
	[RelationshipWithPatient] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[RelationshipWithPatientKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSecondDoseVaccineAdministered]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSecondDoseVaccineAdministered](
	[SecondDoseVaccineAdministeredKey] [int] IDENTITY(1,1) NOT NULL,
	[SecondDoseVaccineAdministered] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSevereEvent]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSevereEvent](
	[SevereEventKey] [int] IDENTITY(1,1) NOT NULL,
	[SevereEventID] [nvarchar](4000) NULL,
	[SevereEvent] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStabilityAssessment]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStabilityAssessment](
	[StabilityAssessmentKey] [int] IDENTITY(1,1) NOT NULL,
	[StabilityAssessmentID] [nvarchar](4000) NULL,
	[StabilityAssessment] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStartRegimen]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStartRegimen](
	[StartRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[StartRegimenID] [nvarchar](4000) NULL,
	[StartRegimen] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStartRegimenLine]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStartRegimenLine](
	[StartRegimenLineKey] [int] IDENTITY(1,1) NOT NULL,
	[StartRegimenLineID] [nvarchar](4000) NULL,
	[StartRegimenLine] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSubCounty]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSubCounty](
	[SubCountyKey] [int] IDENTITY(1,1) NOT NULL,
	[RegionKey] [int] NULL,
	[County] [nvarchar](4000) NULL,
	[SubCountyID] [nvarchar](4000) NULL,
	[SubCountyName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTBScreening]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTBScreening](
	[TBScreeningKey] [int] IDENTITY(1,1) NOT NULL,
	[TBScreeningID] [nvarchar](4000) NULL,
	[TBScreening] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTestKitName]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTestKitName](
	[TestKitNameKey] [int] IDENTITY(1,1) NOT NULL,
	[TestKitName] [nvarchar](1600) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TestKitNameKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTreatmentType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTreatmentType](
	[TreatmentTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[TreatmentType] [varchar](250) NULL,
	[TreatmentType_Cleaned] [varchar](250) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TreatmentTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVaccinationStatus]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVaccinationStatus](
	[VaccinationStatusKey] [int] IDENTITY(1,1) NOT NULL,
	[VaccinationStatus] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[VaccinationStatusKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVaccineDoseType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVaccineDoseType](
	[VaccineDoseTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[VaccineDoseTypeID] [nvarchar](4000) NULL,
	[VaccineName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVillage]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVillage](
	[VillageKey] [int] IDENTITY(1,1) NOT NULL,
	[VillageID] [nvarchar](4000) NULL,
	[VillageName] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimvisitType]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimvisitType](
	[visitTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[visitTypeID] [nvarchar](4000) NULL,
	[visitTypeDesription] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactAdverseEvents]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactAdverseEvents](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[AdverseEventStartDateKey] [nvarchar](4000) NULL,
	[AdverseEventEndDateKey] [nvarchar](4000) NULL,
	[VisitDateKey] [nvarchar](4000) NULL,
	[AdverseEvent] [varchar](100) NULL,
	[Severity] [varchar](100) NULL,
	[AdverseEventCause] [varchar](100) NULL,
	[AdverseEventRegimen] [varchar](100) NULL,
	[AdverseEventActionTaken] [varchar](100) NULL,
	[AdverseEventClinicalOutcome] [varchar](100) NULL,
	[AdverseEventIsPregnant] [bit] NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTART]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTART](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[StartARTDateKey] [date] NULL,
	[LastARTDateKey] [nvarchar](4000) NULL,
	[ARTOutcomeKey] [int] NULL,
	[CurrentRegimen] [varchar](250) NULL,
	[CurrentRegimenline] [varchar](250) NULL,
	[StartRegimen] [varchar](250) NULL,
	[StartRegimenLine] [varchar](250) NULL,
	[AgeAtEnrol] [int] NULL,
	[AgeAtARTStart] [int] NULL,
	[AgeLastVisit] [int] NULL,
	[TimetoARTDiagnosis] [int] NULL,
	[TimetoARTEnrollment] [int] NULL,
	[PregnantARTStart] [int] NULL,
	[PregnantAtEnrol] [int] NULL,
	[LastVisitDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[StartARTAtThisfacility] [date] NULL,
	[PreviousARTStartDate] [date] NULL,
	[PreviousARTRegimen] [varchar](250) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactARTHistory]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactARTHistory](
	[FactKey] [int] IDENTITY(1,1) NOT NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[PatientKey] [int] NULL,
	[AsOfDateKey] [nvarchar](4000) NULL,
	[IsTXCurr] [int] NOT NULL,
	[ARTOutcomeKey] [int] NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[FactKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCD4]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCD4](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[CD4atEnrollment] [float] NULL,
	[CD4atEnrollmentDate] [date] NULL,
	[LastCD4] [float] NULL,
	[LastCD4Date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactCovid]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactCovid](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[VisitID] [int] NULL,
	[Covid19AssessmentDateKey] [nvarchar](4000) NULL,
	[ReceivedCOVID19Vaccine] [nvarchar](4000) NULL,
	[DateGivenFirstDoseKey] [nvarchar](4000) NULL,
	[FirstDoseVaccineAdministered] [nvarchar](4000) NULL,
	[DateGivenSecondDoseKey] [nvarchar](4000) NULL,
	[SecondDoseVaccineAdministered] [nvarchar](4000) NULL,
	[VaccinationStatus] [nvarchar](4000) NULL,
	[VaccineVerification] [nvarchar](4000) NULL,
	[BoosterGiven] [nvarchar](4000) NULL,
	[BoosterDose] [nvarchar](4000) NULL,
	[BoosterDoseDateKey] [nvarchar](4000) NULL,
	[EverCOVID19Positive] [nvarchar](4000) NULL,
	[COVID19TestDateKey] [nvarchar](4000) NULL,
	[PatientStatus] [nvarchar](4000) NULL,
	[AdmissionStatus] [nvarchar](4000) NULL,
	[AdmissionUnit] [nvarchar](4000) NULL,
	[MissedAppointmentDueToCOVID19] [nvarchar](4000) NULL,
	[COVID19PositiveSinceLasVisit] [nvarchar](4000) NULL,
	[COVID19TestDateSinceLastVisit] [date] NULL,
	[PatientStatusSinceLastVisit] [nvarchar](4000) NULL,
	[AdmissionStatusSinceLastVisit] [nvarchar](4000) NULL,
	[AdmissionStartDateKey] [nvarchar](4000) NULL,
	[AdmissionEndDateKey] [nvarchar](4000) NULL,
	[AdmissionUnitSinceLastVisit] [nvarchar](4000) NULL,
	[SupplementalOxygenReceived] [nvarchar](4000) NULL,
	[PatientVentilated] [nvarchar](4000) NULL,
	[TracingFinalOutcome] [nvarchar](4000) NULL,
	[CauseOfDeath] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSClientLinkages]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSClientLinkages](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[ReferralDateKey] [nvarchar](4000) NULL,
	[DateEnrolledKey] [nvarchar](4000) NULL,
	[DatePrefferedToBeEnrolledKey] [nvarchar](4000) NULL,
	[FacilityReferredTo] [nvarchar](1600) NULL,
	[HandedOverTo] [nvarchar](1600) NULL,
	[HandedOverToCadre] [nvarchar](1600) NULL,
	[ReportedCCCNumber] [nvarchar](128) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSClientTests]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSClientTests](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[AgeAtTesting] [int] NULL,
	[DateTestedKey] [nvarchar](4000) NULL,
	[EverTestedForHiv] [nvarchar](1600) NULL,
	[MonthsSinceLastTest] [int] NULL,
	[ClientTestedAs] [nvarchar](1600) NULL,
	[EntryPoint] [nvarchar](1600) NULL,
	[TestStrategy] [nvarchar](1600) NULL,
	[TestResult1] [nvarchar](1600) NULL,
	[TestResult2] [nvarchar](1600) NULL,
	[FinalTestResult] [nvarchar](1600) NULL,
	[PatientGivenResult] [nvarchar](1600) NULL,
	[TestType] [nvarchar](1600) NULL,
	[TBScreening] [nvarchar](1600) NULL,
	[ClientSelfTested] [nvarchar](1600) NULL,
	[CoupleDiscordant] [nvarchar](4000) NULL,
	[Consent] [nvarchar](1600) NULL,
	[EncounterId] [int] NULL,
	[Tested] [int] NOT NULL,
	[Positive] [int] NOT NULL,
	[Linked] [int] NOT NULL,
	[MonthsLastTest] [varchar](12) NULL,
	[TestedBefore] [varchar](6) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSClientTracing]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSClientTracing](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[TracingDateKey] [nvarchar](4000) NULL,
	[TraceOutcomeKey] [int] NULL,
	[TraceTypeKey] [int] NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSEligibilityextract]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSEligibilityextract](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[EncounterId] [nvarchar](1600) NULL,
	[VisitID] [int] NULL,
	[Department] [nvarchar](1600) NULL,
	[IsHealthWorker] [nvarchar](1600) NULL,
	[RelationshipWithContact] [nvarchar](1600) NULL,
	[TestedHIVBefore] [nvarchar](1600) NULL,
	[WhoPErformedTest] [nvarchar](1600) NULL,
	[ResultOfHIV] [nvarchar](1600) NULL,
	[StartedOnART] [nvarchar](1600) NULL,
	[CCCNumber] [nvarchar](128) NULL,
	[EverHadSex] [nvarchar](1600) NULL,
	[SexuallyActive] [nvarchar](1600) NULL,
	[NewPartner] [nvarchar](1600) NULL,
	[PartnerHIVStatus] [nvarchar](1600) NULL,
	[CoupleDiscordant] [nvarchar](1600) NULL,
	[MultiplePartners] [nvarchar](1600) NULL,
	[NumberOfPartners] [int] NULL,
	[AlcoholSex] [nvarchar](1600) NULL,
	[MoneySex] [nvarchar](1600) NULL,
	[CondomBurst] [nvarchar](1600) NULL,
	[UnknownStatusPartner] [nvarchar](1600) NULL,
	[KnownStatusPartner] [nvarchar](1600) NULL,
	[Pregnant] [nvarchar](1600) NULL,
	[BreastfeedingMother] [nvarchar](1600) NULL,
	[ExperiencedGBV] [nvarchar](1600) NULL,
	[ContactWithTBCase] [nvarchar](1600) NULL,
	[Lethargy] [nvarchar](1600) NULL,
	[EverOnPrep] [nvarchar](1600) NULL,
	[CurrentlyOnPep] [nvarchar](1600) NULL,
	[EverHadSTI] [nvarchar](1600) NULL,
	[CurrentlyHasSTI] [nvarchar](1600) NULL,
	[EverHadTB] [nvarchar](1600) NULL,
	[SharedNeedle] [nvarchar](1600) NULL,
	[NeedleStickInjuries] [nvarchar](1600) NULL,
	[TraditionalProcedures] [nvarchar](1600) NULL,
	[ChildReasonsForIneligibility] [nvarchar](1600) NULL,
	[EligibleForTest] [nvarchar](1600) NULL,
	[ReasonsforIneligibility] [nvarchar](1600) NULL,
	[specificReasonForIneligibility] [int] NULL,
	[Cough] [nvarchar](1600) NULL,
	[DateTestedProviderKey] [nvarchar](4000) NULL,
	[Fever] [nvarchar](1600) NULL,
	[MothersStatus] [nvarchar](1600) NULL,
	[NightSweats] [nvarchar](1600) NULL,
	[ReferredForTesting] [nvarchar](1600) NULL,
	[ResultOfHIVSelf] [nvarchar](1600) NULL,
	[ScreenedTB] [nvarchar](1600) NULL,
	[TBStatus] [nvarchar](1600) NULL,
	[WeightLoss] [nvarchar](1600) NULL,
	[AssessmentOutcome] [nvarchar](1600) NULL,
	[ForcedSex] [nvarchar](1600) NULL,
	[ReceivedServices] [nvarchar](1600) NULL,
	[TypeGBV] [nvarchar](1600) NULL,
	[VisitDateKey] [nvarchar](4000) NULL,
	[DateTestedSelfKey] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSPartnerNotificationServices]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSPartnerNotificationServices](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[PartnerPatientPk] [nvarchar](128) NULL,
	[KnowledgeOfHivStatus] [nvarchar](1600) NULL,
	[PartnerPersonID] [int] NULL,
	[CCCNumber] [nvarchar](128) NULL,
	[IpvScreeningOutcome] [nvarchar](1600) NULL,
	[ScreenedForIpv] [nvarchar](1600) NULL,
	[PnsConsent] [nvarchar](1600) NULL,
	[RelationsipToIndexClient] [nvarchar](1600) NULL,
	[LinkedToCare] [nvarchar](1600) NULL,
	[PartnerMaritalStatus] [nvarchar](1600) NULL,
	[PnsApproach] [nvarchar](1600) NULL,
	[FacilityLinkedTo] [nvarchar](1600) NULL,
	[CurrentlyLivingWithIndexClient] [nvarchar](1600) NULL,
	[DateElicited] [datetime2](7) NULL,
	[LinkDateLinkedToCare] [datetime2](7) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSPartnerTracing]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSPartnerTracing](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[TraceOutcomeKey] [int] NULL,
	[TraceTypeKey] [int] NULL,
	[BookingDateKey] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactHTSTestKits]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactHTSTestKits](
	[FactKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[TestKitName1Key] [int] NULL,
	[TestKitLotNumber1] [nvarchar](1600) NULL,
	[TestResult1] [nvarchar](1600) NULL,
	[TestKitName2Key] [int] NULL,
	[TestKitLotNumber2] [nvarchar](1600) NULL,
	[TestResult2] [nvarchar](1600) NULL,
PRIMARY KEY CLUSTERED 
(
	[FactKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactIPT]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactIPT](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[StartTBTreatmentDateKey] [int] NULL,
	[TBDiagnosisDateKey] [int] NULL,
	[OnIPT] [nvarchar](4000) NULL,
	[hasTB] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactLatestObs]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactLatestObs](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[DifferentiatedCareKey] [int] NULL,
	[LatestHeight] [varchar](150) NULL,
	[LatestWeight] [varchar](150) NULL,
	[AgeLastVisit] [int] NULL,
	[Adherence] [varchar](150) NULL,
	[DifferentiatedCare] [nvarchar](4000) NULL,
	[onMMD] [int] NULL,
	[StabilityAssessment] [nvarchar](4000) NULL,
	[Pregnant] [varchar](150) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTMANIFEST]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTMANIFEST](
	[FACTKey] [int] IDENTITY(1,1) NOT NULL,
	[UploadsDateKey] [nvarchar](4000) NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[Start] [datetime] NULL,
	[End] [datetime] NULL,
	[LoadDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOTZ]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOTZ](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[OTZEnrollmentDateKey] [nvarchar](4000) NULL,
	[LastVisitDateKey] [nvarchar](4000) NULL,
	[TransitionAttritionReason] [nvarchar](4000) NULL,
	[TransferInStatus] [nvarchar](4000) NULL,
	[ModulesPreviouslyCovered] [nvarchar](4000) NULL,
	[ModulesCompletedToday_OTZ_Orientation] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Participation] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Leadership] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_MakingDecisions] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Transition] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_TreatmentLiteracy] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_SRH] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Beyond] [int] NOT NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactOVC]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactOVC](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[OVCEnrollmentDateKey] [nvarchar](4000) NULL,
	[RelationshipWithPatientKey] [int] NULL,
	[EnrolledinCPIMS] [nvarchar](4000) NULL,
	[CPIMSUniqueIdentifier] [nvarchar](4000) NULL,
	[PartnerOfferingOVCServices] [nvarchar](4000) NULL,
	[OVCExitReason] [nvarchar](4000) NULL,
	[OVCExitDateKey] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTPatientExits]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTPatientExits](
	[FACTKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[dtDeadKey] [nvarchar](4000) NULL,
	[dtLFTUKey] [nvarchar](4000) NULL,
	[dtTOKey] [nvarchar](4000) NULL,
	[dtARTStopKey] [nvarchar](4000) NULL,
	[LoadDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[FACTKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactTPT]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactTPT](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[StartTBTreatmentDateKey] [nvarchar](4000) NULL,
	[TBDiagnosisDateKey] [nvarchar](4000) NULL,
	[OnIPT] [nvarchar](4000) NULL,
	[hasTB] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactViralLoads]    Script Date: 2/9/2023 3:06:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactViralLoads](
	[Factkey] [int] IDENTITY(1,1) NOT NULL,
	[PatientKey] [int] NULL,
	[FacilityKey] [int] NULL,
	[PartnerKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[AgeGroupKey] [int] NULL,
	[Last12MVLDateKey] [nvarchar](4000) NULL,
	[6MonthVLDateKey] [nvarchar](4000) NULL,
	[12MonthVLDateKey] [nvarchar](4000) NULL,
	[18MonthVLDateKey] [nvarchar](4000) NULL,
	[24MonthVLDateKey] [nvarchar](4000) NULL,
	[FirstVLDateKey] [nvarchar](4000) NULL,
	[LastVLDateKey] [nvarchar](4000) NULL,
	[LatestVLDate1Key] [nvarchar](4000) NULL,
	[LatestVLDate2Key] [nvarchar](4000) NULL,
	[LatestVLDate3Key] [nvarchar](4000) NULL,
	[EligibleVL] [int] NULL,
	[Last12MonthVLResults] [varchar](8000) NULL,
	[Last12MonthVL] [int] NULL,
	[Last12MVLResult] [varchar](12) NULL,
	[Last12MVLSup] [int] NULL,
	[_6MonthVL] [varchar](50) NULL,
	[_12MonthVL] [varchar](50) NULL,
	[_18MonthVL] [varchar](50) NULL,
	[_24MonthVL] [varchar](50) NULL,
	[6MonthVLSup] [int] NULL,
	[12MonthVLSup] [int] NULL,
	[18MonthVLSup] [int] NULL,
	[24MonthVLSup] [int] NULL,
	[FirstVL] [varchar](8000) NULL,
	[LastVL] [varchar](8000) NULL,
	[TimetoFirstVL] [int] NULL,
	[TimeToFirstVLGrp] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Factkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intermediate_LastPatientEncounterAsAt]    Script Date: 2/9/2023 3:06:13 PM ******/
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
