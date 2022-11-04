USE [NDWH]
GO
/****** Object:  Table [dbo].[DimAdverseEvent]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEvent](
	[AdverseEventKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventID] [nvarchar](100) NULL,
	[AdverseEvent] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAdverseEventActionTaken]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEventActionTaken](
	[AdverseEventActionTakenKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventActionTakenID] [nvarchar](100) NULL,
	[AdverseEventActionTaken] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAdverseEventCause]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEventCause](
	[AdverseEventCauseKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventCauseID] [nvarchar](100) NULL,
	[AdverseEventCause] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAdverseEventRegimen]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdverseEventRegimen](
	[AdverseEventRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[AdverseEventRegimenID] [nvarchar](100) NULL,
	[AdverseEventRegimen] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAgeBand]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAgeBand](
	[AgeBandKey] [int] IDENTITY(1,1) NOT NULL,
	[LowerLimit] [nvarchar](15) NULL,
	[UpperLimit] [nvarchar](15) NULL,
	[AgeBandDescription] [nvarchar](50) NULL,
	[Row_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAgeBand1]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAgeBand1](
	[AgeBandKey] [int] IDENTITY(1,1) NOT NULL,
	[LowerLimit] [nvarchar](10) NULL,
	[UpperLimit] [nvarchar](10) NULL,
	[Description] [nvarchar](50) NULL,
	[Row_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimAgency]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAgency](
	[AgencyKey] [int] IDENTITY(1,1) NOT NULL,
	[AgencyID] [nvarchar](100) NULL,
	[AgencyName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimArtDaysBand]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimArtDaysBand](
	[ArtDaysBandKey] [int] IDENTITY(1,1) NOT NULL,
	[LowerLimit] [nvarchar](10) NULL,
	[UpperLimit] [nvarchar](10) NULL,
	[ArtDaysBand] [nvarchar](50) NULL,
	[Row_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimARTOutcome]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimARTOutcome](
	[ARTOutcomeKey] [int] IDENTITY(1,1) NOT NULL,
	[ARTOutcomeID] [nvarchar](20) NULL,
	[ARTOutcomeName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimBooster]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimBooster](
	[BoosterKey] [int] IDENTITY(1,1) NOT NULL,
	[BoosterDescription] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCovidPatient]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCovidPatient](
	[CovidPatientKey] [int] IDENTITY(1,1) NOT NULL,
	[CovidPatientID] [nvarchar](50) NULL,
	[CovidPatientName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[DateAlternateKey] [date] NOT NULL,
	[DayNumberOfWeek] [tinyint] NULL,
	[DayNameOfWeek] [nvarchar](9) NULL,
	[DayNumberOfMonth] [smallint] NULL,
	[DayOfMonth] [nvarchar](2) NULL,
	[DayNumberOfYear] [smallint] NULL,
	[DayOfYear] [nvarchar](3) NULL,
	[WeekNumberOfMonth] [tinyint] NULL,
	[ISOWeekNumberOfYear] [tinyint] NULL,
	[ISOWeekOfYear] [nvarchar](2) NULL,
	[WeekNumberOfYear] [tinyint] NULL,
	[WeekOfYear] [nvarchar](2) NULL,
	[MonthName] [nvarchar](9) NULL,
	[MonthNumberOfYear] [tinyint] NULL,
	[MonthOfYear] [nvarchar](2) NULL,
	[CalendarQuarter] [tinyint] NULL,
	[CalendarQuarterName] [nvarchar](2) NULL,
	[CalendarSemester] [tinyint] NULL,
	[CalendarSemesterName] [nvarchar](2) NULL,
	[CalendarYear] [smallint] NULL,
	[FiscalQuarter] [tinyint] NULL,
	[FiscalQuarterName] [nvarchar](2) NULL,
	[FiscalSemester] [tinyint] NULL,
	[FiscalSemesterName] [nvarchar](2) NULL,
	[FiscalYear] [smallint] NULL,
	[EffectiveDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[AllowAutoUpdateBitFlag] [bit] NULL,
	[WorkDay] [varchar](8) NULL,
	[IsWorkDay] [bit] NULL,
	[EOMONTHDATE] [date] NULL,
	[workingDays] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDifferentiatedCare]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDifferentiatedCare](
	[DifferentiatedCareKey] [int] IDENTITY(1,1) NOT NULL,
	[DifferentiatedCare] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDrug]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDrug](
	[DrugKey] [int] IDENTITY(1,1) NOT NULL,
	[DrugID] [nvarchar](150) NULL,
	[Drug] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEMR]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEMR](
	[EMRKey] [int] IDENTITY(1,1) NOT NULL,
	[EMRID] [nvarchar](100) NULL,
	[EMRDesription] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimExitReason]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimExitReason](
	[ExitReasonKey] [int] IDENTITY(1,1) NOT NULL,
	[ExitReasonID] [nvarchar](100) NULL,
	[ExitReason] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFacility]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFacility](
	[FacilityKey] [int] IDENTITY(1,1) NOT NULL,
	[SiteCodeKey] [int] NULL,
	[DistrictKey] [int] NULL,
	[FacilityTypeKey] [int] NULL,
	[OwnerKey] [int] NULL,
	[LocationKey] [int] NULL,
	[DivisionKey] [int] NULL,
	[CountyKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[SDPKey] [int] NULL,
	[Open24HoursKey] [int] NULL,
	[KEPH_LevelKey] [int] NULL,
	[FacilityCode] [nvarchar](80) NULL,
	[SiteCodeID] [nvarchar](100) NULL,
	[FacilityName] [nvarchar](180) NULL,
	[County] [nvarchar](80) NULL,
	[District] [nvarchar](80) NULL,
	[Division] [nvarchar](80) NULL,
	[FacilityType] [nvarchar](80) NULL,
	[owner] [nvarchar](180) NULL,
	[Location] [nvarchar](80) NULL,
	[SubLocation] [nvarchar](80) NULL,
	[OfficialMobile] [nvarchar](50) NULL,
	[OfficialAddress] [nvarchar](50) NULL,
	[PostCode] [nvarchar](20) NULL,
	[Open24Hours] [nvarchar](10) NULL,
	[OpenWeekends] [nvarchar](10) NULL,
	[OperationalStatus] [nvarchar](20) NULL,
	[KEPH_Level] [nvarchar](20) NULL,
	[SDP] [nvarchar](150) NULL,
	[SDP_Agency] [nvarchar](50) NULL,
	[Implementation] [nvarchar](50) NULL,
	[EMR] [nvarchar](50) NULL,
	[EMR Status] [nvarchar](50) NULL,
	[HTS Use] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFirstDoseVaccineAdministered]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFirstDoseVaccineAdministered](
	[FirstDoseVaccineAdministeredKey] [int] IDENTITY(1,1) NOT NULL,
	[FirstDoseVaccineAdministered] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimFirstVL]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFirstVL](
	[FirstVLKey] [int] IDENTITY(1,1) NOT NULL,
	[FirstVL] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimGender]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimGender](
	[GenderKey] [int] IDENTITY(1,1) NOT NULL,
	[GenderID] [nvarchar](5) NULL,
	[GenderDesription] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsBoosterGiven]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsBoosterGiven](
	[IsBoosterGivenKey] [int] IDENTITY(1,1) NOT NULL,
	[IsBoosterGivenDesription] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsFullyVaccinated]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsFullyVaccinated](
	[IsFullyVaccinatedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsFullyVaccinatedDesription] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsOnIpt]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsOnIpt](
	[IsOnIptKey] [int] IDENTITY(1,1) NOT NULL,
	[IsOnIptID] [nvarchar](10) NULL,
	[IsOnIpt] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimISOnTBDrugs]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimISOnTBDrugs](
	[ISOnTBDrugsKey] [int] IDENTITY(1,1) NOT NULL,
	[ISOnTBDrugsID] [nvarchar](10) NULL,
	[ISOnTBDrugs] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsPartiallyVaccinated]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsPartiallyVaccinated](
	[IsPartiallyVaccinatedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsPartiallyVaccinatedDesription] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsScreenedForCovid]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsScreenedForCovid](
	[IsScreenedForCovidKey] [int] IDENTITY(1,1) NOT NULL,
	[IsScreenedForCovidDesription] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsVaccinated]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsVaccinated](
	[IsVaccinatedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsVaccinatedID] [nvarchar](5) NULL,
	[IsVaccinatedDescription] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimIsVaccineVerified]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimIsVaccineVerified](
	[IsVaccineVerifiedKey] [int] IDENTITY(1,1) NOT NULL,
	[IsVaccineVerifiedID] [nvarchar](5) NULL,
	[IsVaccineVerified] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLastRegimen]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLastRegimen](
	[LastRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[LastRegimenID] [nvarchar](150) NULL,
	[LastRegimen] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLastRegimenLine]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLastRegimenLine](
	[LastRegimenLineKey] [int] IDENTITY(1,1) NOT NULL,
	[LastRegimenLineID] [nvarchar](150) NULL,
	[LastRegimenLine] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimLastVL]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimLastVL](
	[LastVLKey] [int] IDENTITY(1,1) NOT NULL,
	[LastVL] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMaritalStatus]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMaritalStatus](
	[MaritalStatusKey] [int] IDENTITY(1,1) NOT NULL,
	[MaritalStatusID] [nvarchar](20) NULL,
	[MaritalStatusDesription] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartner]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartner](
	[PartnerKey] [int] IDENTITY(1,1) NOT NULL,
	[AgencyKey] [int] NULL,
	[PartnerID] [nvarchar](100) NULL,
	[PartnerName] [nvarchar](100) NULL,
	[AgencyName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartnerAndAgencyBridge]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartnerAndAgencyBridge](
	[PartnerKey] [int] NULL,
	[CountyKey] [int] NULL,
	[AgencyKey] [int] NULL,
	[PartnerID] [nvarchar](100) NULL,
	[PartnerName] [nvarchar](100) NULL,
	[CountyName] [nvarchar](100) NULL,
	[AgencyName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPatient]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPatient](
	[PatientKey] [int] IDENTITY(1,1) NOT NULL,
	[FacilityKey] [int] NULL,
	[GenderKey] [int] NULL,
	[MaritalStatusKey] [int] NULL,
	[DateKey] [int] NULL,
	[AgeBandKey] [int] NULL,
	[RegionKey] [int] NULL,
	[VillageKey] [int] NULL,
	[PatientSourceKey] [int] NULL,
	[PatientTypeKey] [int] NULL,
	[PopulationTypeKey] [int] NULL,
	[PatientPK] [int] NULL,
	[PatientID] [nvarchar](50) NULL,
	[PatientName] [nvarchar](150) NULL,
	[SiteCode] [int] NULL,
	[FacilityName] [nvarchar](150) NULL,
	[Gender] [varchar](10) NULL,
	[GenderID] [nvarchar](5) NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[MaritalStatus_Clean] [nvarchar](50) NULL,
	[RegistrationDate] [date] NULL,
	[RegistrationAtCCC] [nvarchar](150) NULL,
	[RegistrationAtPMTCT] [varchar](150) NULL,
	[DOB] [date] NULL,
	[Age] [int] NULL,
	[RegistrationAtTBClinic] [nvarchar](70) NULL,
	[Region] [nvarchar](250) NULL,
	[District] [nvarchar](150) NULL,
	[Village] [nvarchar](150) NULL,
	[ContactRelation] [nvarchar](50) NULL,
	[LastVisit] [varchar](50) NULL,
	[EducationLevel] [nvarchar](70) NULL,
	[DateConfirmedHIVPositive] [varchar](20) NULL,
	[PreviousARTExposure] [nvarchar](150) NULL,
	[PreviousARTStartDate] [varchar](50) NULL,
	[PatientSource] [nvarchar](80) NULL,
	[DrugRegimen] [nvarchar](150) NULL,
	[DispenseDate] [varchar](50) NULL,
	[ExpectedReturn] [varchar](50) NULL,
	[Emr] [nvarchar](50) NULL,
	[Project] [nvarchar](50) NULL,
	[Ident] [nvarchar](50) NULL,
	[DateImported] [varchar](50) NULL,
	[PKV] [nvarchar](50) NULL,
	[PatientUID] [varchar](50) NULL,
	[RegistrationYear] [varchar](50) NULL,
	[MPIPKV] [varchar](50) NULL,
	[Orphan] [varchar](20) NULL,
	[Inschool] [varchar](20) NULL,
	[PatientType] [varchar](20) NULL,
	[PopulationType] [varchar](50) NULL,
	[KeyPopulationType] [varchar](50) NULL,
	[PatientResidentCounty] [varchar](150) NULL,
	[PatientResidentSubCounty] [varchar](200) NULL,
	[PatientResidentLocation] [varchar](200) NULL,
	[PatientResidentSubLocation] [varchar](250) NULL,
	[PatientResidentWard] [varchar](180) NULL,
	[TransferInDate] [varchar](30) NULL,
	[Occupation] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPatientSource]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPatientSource](
	[PatientSourceKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientSourceID] [nvarchar](50) NULL,
	[PatientSourceName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPatientType]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPatientType](
	[PatientTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[PatientTypeID] [nvarchar](20) NULL,
	[PatientTypeName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPopulationType]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPopulationType](
	[PopulationTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[PopulationTypeID] [nvarchar](50) NULL,
	[PopulationType] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPreviousARTRegimen]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPreviousARTRegimen](
	[PreviousARTRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[PreviousARTRegimenID] [nvarchar](150) NULL,
	[PreviousARTRegimen] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProject]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProject](
	[ProjectKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [nvarchar](20) NULL,
	[ProjectName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProphylaxisType]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProphylaxisType](
	[ProphylaxisTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[ProphylaxisTypeID] [nvarchar](100) NULL,
	[ProphylaxisType] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRegimen]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRegimen](
	[RegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[RegimenID] [nvarchar](150) NULL,
	[Regimen] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimRegion]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimRegion](
	[RegionKey] [int] IDENTITY(1,1) NOT NULL,
	[SubCountyKey] [int] NULL,
	[RegionID] [nvarchar](20) NULL,
	[RegionName] [nvarchar](20) NULL,
	[SubCounty] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSecondDoseVaccineAdministered]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSecondDoseVaccineAdministered](
	[SecondDoseVaccineAdministeredKey] [int] IDENTITY(1,1) NOT NULL,
	[SecondDoseVaccineAdministered] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSevereEvent]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSevereEvent](
	[SevereEventKey] [int] IDENTITY(1,1) NOT NULL,
	[SevereEventID] [nvarchar](100) NULL,
	[SevereEvent] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStabilityAssessment]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStabilityAssessment](
	[StabilityAssessmentKey] [int] IDENTITY(1,1) NOT NULL,
	[StabilityAssessmentID] [nvarchar](100) NULL,
	[StabilityAssessment] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStartRegimen]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStartRegimen](
	[StartRegimenKey] [int] IDENTITY(1,1) NOT NULL,
	[StartRegimenID] [nvarchar](150) NULL,
	[StartRegimen] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimStartRegimenLine]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimStartRegimenLine](
	[StartRegimenLineKey] [int] IDENTITY(1,1) NOT NULL,
	[StartRegimenLineID] [nvarchar](150) NULL,
	[StartRegimenLine] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSubCounty]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSubCounty](
	[SubCountyKey] [int] IDENTITY(1,1) NOT NULL,
	[RegionKey] [int] NULL,
	[County] [nvarchar](50) NULL,
	[SubCountyID] [nvarchar](50) NULL,
	[SubCountyName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTBScreening]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTBScreening](
	[TBScreeningKey] [int] IDENTITY(1,1) NOT NULL,
	[TBScreeningID] [nvarchar](50) NULL,
	[TBScreening] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTreatmentType]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTreatmentType](
	[TreatmentTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[TreatmentTypeID] [nvarchar](100) NULL,
	[TreatmentType] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVaccinationStatus]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVaccinationStatus](
	[VaccinationStatusKey] [int] IDENTITY(1,1) NOT NULL,
	[VaccinationStatusID] [nvarchar](20) NULL,
	[VaccinationStatus] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVaccineDoseType]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVaccineDoseType](
	[VaccineDoseTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[VaccineDoseTypeID] [nvarchar](20) NULL,
	[VaccineName] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimVillage]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimVillage](
	[VillageKey] [int] IDENTITY(1,1) NOT NULL,
	[VillageID] [nvarchar](50) NULL,
	[VillageName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimvisitType]    Script Date: 11/4/2022 12:13:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimvisitType](
	[visitTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[visitTypeID] [nvarchar](50) NULL,
	[visitTypeDesription] [nvarchar](50) NULL
) ON [PRIMARY]
GO
