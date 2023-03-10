USE [REPORTING]
GO
/****** Object:  User [palladium_analytics_readonly]    Script Date: 2/9/2023 3:07:14 PM ******/
CREATE USER [palladium_analytics_readonly] FOR LOGIN [palladium_analytics_readonly] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [palladium_analytics_readonly]
GO
/****** Object:  Table [dbo].[AggregateAdverseEvents]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateAdverseEvents](
	[MFLCode] [nvarchar](60) NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[Gender] [varchar](250) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[Subcounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[AdverseEvent] [varchar](100) NULL,
	[AdverseEventCause] [varchar](100) NULL,
	[AdverseEventActionTaken] [varchar](100) NULL,
	[AdverseEventRegimen] [varchar](100) NULL,
	[Severity] [varchar](100) NULL,
	[AdverseEventCount] [int] NULL,
	[AdverseClientsCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateCohortRetention]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateCohortRetention](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[StartARTYearMonth] [char](7) NULL,
	[patients_startedART] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateCovid]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateCovid](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](200) NOT NULL,
	[VaccinationStatus] [nvarchar](200) NULL,
	[PatientStatus] [nvarchar](200) NULL,
	[AdmissionStatus] [nvarchar](200) NULL,
	[AdmissionUnit] [nvarchar](200) NULL,
	[EverCOVID19Positive] [nvarchar](200) NULL,
	[MissedAppointmentDueToCOVID19] [nvarchar](200) NULL,
	[adults_count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateDSD]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateDSD](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[StabilityAssessment] [nvarchar](200) NULL,
	[patients_onMMD] [int] NULL,
	[patients_nonMMD] [int] NULL,
	[Stability] [int] NULL,
	[TxCurr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateDSDApptsByStability]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateDSDApptsByStability](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](400) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[AppointmentsCategory] [varchar](12) NULL,
	[StabilityAssessment] [nvarchar](200) NULL,
	[Stability] [int] NULL,
	[patients_number] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateDSDStable]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateDSDStable](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](400) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[DifferentiatedCare] [nvarchar](200) NULL,
	[MMDModels] [int] NULL,
	[TxCurr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateDSDUnstable]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateDSDUnstable](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](400) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[onARTlessthan12mnths] [int] NULL,
	[Agelessthan20Yrs] [int] NULL,
	[Adherence] [int] NULL,
	[HighVL] [int] NULL,
	[BMI] [int] NULL,
	[LatestPregnancy] [int] NULL,
	[patients_number] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateNupi]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateNupi](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[number_children] [int] NULL,
	[number_adults] [int] NULL,
	[number_nupi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateOptimizeCurrentRegimens]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateOptimizeCurrentRegimens](
	[SiteCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[Subcounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Agegroup] [varchar](5) NOT NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[Gender] [varchar](250) NULL,
	[StartRegimen] [varchar](250) NULL,
	[StartARTMonth] [nvarchar](30) NULL,
	[StartARTYr] [int] NULL,
	[TXCurr] [int] NULL,
	[CurrentRegimen] [varchar](13) NOT NULL,
	[RegimenLine] [varchar](25) NOT NULL,
	[WeightBands] [varchar](14) NOT NULL,
	[AgeBands] [varchar](11) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateOptimizeStartRegimens]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateOptimizeStartRegimens](
	[SiteCode] [int] NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[Subcounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[Agegroup] [varchar](5) NOT NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[Gender] [nvarchar](500) NULL,
	[StartRegimen] [varchar](13) NOT NULL,
	[StartARTMonth] [nvarchar](30) NULL,
	[StartARTYr] [int] NULL,
	[TXCurr] [int] NULL,
	[Firstregimen] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateOTZ]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateOTZ](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](50) NULL,
	[OTZEnrollmentYearMonth] [char](7) NULL,
	[Enrolled] [int] NULL,
	[CompletedTraining] [int] NULL,
	[TransferInStatus] [nvarchar](200) NULL,
	[ModulesPreviouslyCovered] [nvarchar](200) NULL,
	[CompletedToday_OTZ_Orientation] [int] NULL,
	[CompletedToday_OTZ_Participation] [int] NULL,
	[CompletedToday_OTZ_Leadership] [int] NULL,
	[CompletedToday_OTZ_MakingDecisions] [int] NULL,
	[CompletedToday_OTZ_Transition] [int] NULL,
	[CompletedToday_OTZ_TreatmentLiteracy] [int] NULL,
	[CompletedToday_OTZ_SRH] [int] NULL,
	[CompletedToday_OTZ_Beyond] [int] NULL,
	[FirstVL] [varchar](200) NULL,
	[LastVL] [varchar](200) NULL,
	[EligibleVL] [int] NULL,
	[Last12MonthVLResults] [varchar](12) NULL,
	[Last12MVLResult] [varchar](200) NULL,
	[Last12MonthVL] [int] NULL,
	[TotalOTZ] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateOTZEligibilityAndEnrollments]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateOTZEligibilityAndEnrollments](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[OTZEnrollmentYearMonth] [char](7) NULL,
	[CompletedTraining] [int] NULL,
	[TransferInStatus] [nvarchar](4000) NULL,
	[ModulesPreviouslyCovered] [nvarchar](4000) NULL,
	[CompletedToday_OTZ_Orientation] [int] NULL,
	[CompletedToday_OTZ_Participation] [int] NULL,
	[CompletedToday_OTZ_Leadership] [int] NULL,
	[CompletedToday_OTZ_MakingDecisions] [int] NULL,
	[CompletedToday_OTZ_Transition] [int] NULL,
	[CompletedToday_OTZ_TreatmentLiteracy] [int] NULL,
	[CompletedToday_OTZ_SRH] [int] NULL,
	[CompletedToday_OTZ_Beyond] [int] NULL,
	[FirstVL] [varchar](8000) NULL,
	[LastVL] [varchar](8000) NULL,
	[EligibleVL] [int] NULL,
	[Last12MonthVLResults] [varchar](8000) NULL,
	[Last12MVLResult] [varchar](3) NULL,
	[Last12MonthVL] [int] NULL,
	[patients_eligible] [int] NULL,
	[Enrolled] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateOTZOutcome]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateOTZOutcome](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[OTZEnrollmentYearMonth] [char](7) NULL,
	[Outcome] [varchar](200) NULL,
	[patients_totalOutcome] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateOVCCount]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateOVCCount](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[TXCurr] [int] NOT NULL,
	[ARTOutcome] [varchar](2) NULL,
	[OVCElligiblePatientCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTimeToART]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTimeToART](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[StartARTYear] [int] NULL,
	[StartARTYearMonth] [varchar](7) NULL,
	[MedianTimeToARTDiagnosis_year] [float] NULL,
	[MedianTimeToARTDiagnosis_yearPartner] [float] NULL,
	[MedianTimeToARTDiagnosis_yearCounty] [float] NULL,
	[MedianTimeToARTDiagnosis_yearSbCty] [float] NULL,
	[MedianTimeToARTDiagnosis_yearFacility] [float] NULL,
	[MedianTimeToARTDiagnosis_YearCountyPartner] [float] NULL,
	[MedianTimeToARTDiagnosis_yearCTAgency] [float] NULL,
	[MedianTimeToART_Gender] [float] NULL,
	[MedianTimeToART_DATIM_AgeGroup] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTimeToARTGrp]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTimeToARTGrp](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[Subcounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[StartARTYear] [int] NULL,
	[StartARTMonth] [nvarchar](30) NULL,
	[StartARTYearMonth] [varchar](7) NULL,
	[NumPatients] [int] NULL,
	[TotalBySite] [int] NULL,
	[proportions] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTimeToARTLast12M]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTimeToARTLast12M](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[StartARTYear] [int] NULL,
	[StartARTYearMonth] [varchar](7) NULL,
	[MedianTimeToARTDiagnosis_year] [float] NULL,
	[MedianTimeToARTDiagnosis_yearPartner] [float] NULL,
	[MedianTimeToARTDiagnosis_yearCounty] [float] NULL,
	[MedianTimeToARTDiagnosis_yearSbCty] [float] NULL,
	[MedianTimeToARTDiagnosis_yearFacility] [float] NULL,
	[MedianTimeToARTDiagnosis_YearCountyPartner] [float] NULL,
	[MedianTimeToARTDiagnosis_yearCTAgency] [float] NULL,
	[MedianTimeToART_Gender] [float] NULL,
	[MedianTimeToART_DATIM_AgeGroup] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTimeToFirstVLGrp]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTimeToFirstVLGrp](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[Subcounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[StartART_Year] [int] NULL,
	[StartART_Month] [nvarchar](30) NULL,
	[TimeToFirstVLGrp] [varchar](15) NULL,
	[NumPatients] [int] NULL,
	[TotalBySite] [int] NULL,
	[proportions] [decimal](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTimeToVL]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTimeToVL](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[StartYr] [int] NULL,
	[MedianTimeToFirstVL_year] [float] NULL,
	[MedianTimeToFirstVL_yearPartner] [float] NULL,
	[MedianTimeToFirstVL_yearCounty] [float] NULL,
	[MedianTimeToFirstVL_yearSbCty] [float] NULL,
	[MedianTimeToFirstVL_yearFacility] [float] NULL,
	[MedianTimeToFirstVL_yearCountyPartner] [float] NULL,
	[MedianTimeToFirstVL_yearCTAgency] [float] NULL,
	[MedianTimeToFirstVL_Gender] [float] NULL,
	[MedianTimeToFirstVL_DATIM_AgeGroup] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTimeToVL12M]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTimeToVL12M](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[MedianTimeToFirstVL_Partner] [float] NULL,
	[MedianTimeToFirstVL_County] [float] NULL,
	[MedianTimeToFirstVL_SbCty] [float] NULL,
	[MedianTimeToFirstVL_CTAgency] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateTXCurr]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateTXCurr](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PartnerName] [nvarchar](400) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[Gender] [varchar](250) NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[CountClientsTXCur] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregateVLUptakeOutcome]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregateVLUptakeOutcome](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[Gender] [varchar](250) NULL,
	[StartARTYear] [date] NULL,
	[AgeGroup] [varchar](8) NULL,
	[TotalLast12MVL] [int] NULL,
	[Last12MVLResult] [varchar](12) NULL,
	[TXCurr] [int] NULL,
	[EligibleVL12Mnths] [int] NULL,
	[VLDone] [int] NULL,
	[VirallySuppressed] [int] NULL,
	[NewLast12MVLResult] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linelist_FACTART]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linelist_FACTART](
	[PatientID] [nvarchar](128) NULL,
	[PatientPK] [nvarchar](128) NULL,
	[Gender] [nvarchar](500) NULL,
	[DOB] [date] NULL,
	[MaritalStatus] [nvarchar](800) NULL,
	[Nupi] [nvarchar](4000) NULL,
	[PatientSource] [varchar](250) NULL,
	[PatientType] [varchar](250) NULL,
	[SiteCode] [int] NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [nvarchar](4000) NULL,
	[age] [int] NULL,
	[StartARTDate] [date] NULL,
	[CurrentRegimen] [varchar](250) NULL,
	[CurrentRegimenline] [varchar](250) NULL,
	[StartRegimen] [varchar](250) NULL,
	[StartRegimenLine] [varchar](250) NULL,
	[AgeAtEnrol] [int] NULL,
	[AgeAtARTStart] [int] NULL,
	[TimetoARTDiagnosis] [int] NULL,
	[TimetoARTEnrollment] [int] NULL,
	[PregnantARTStart] [int] NULL,
	[PregnantAtEnrol] [int] NULL,
	[LastVisitDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[StartARTAtThisfacility] [date] NULL,
	[PreviousARTStartDate] [date] NULL,
	[PreviousARTRegimen] [varchar](250) NULL,
	[ARTOutcome] [varchar](2) NULL,
	[ISTxCurr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineListAdverseEvents]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineListAdverseEvents](
	[MFLCode] [nvarchar](60) NULL,
	[PatientKey] [int] NOT NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[Gender] [varchar](250) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[Subcounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[AdverseEvent] [varchar](100) NULL,
	[AdverseEventCause] [varchar](100) NULL,
	[AdverseEventActionTaken] [varchar](100) NULL,
	[AdverseEventRegimen] [varchar](100) NULL,
	[Severity] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineListCovid]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineListCovid](
	[MFLCode] [nvarchar](30) NULL,
	[FacilityName] [varchar](200) NULL,
	[County] [varchar](200) NULL,
	[SubCounty] [varchar](200) NULL,
	[PartnerName] [nvarchar](200) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[AgeGroup] [nvarchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[Covid19AssessmentDateKey] [int] NULL,
	[ReceivedCOVID19Vaccine] [nvarchar](200) NULL,
	[DateGivenFirstDoseKey] [date] NULL,
	[FirstDoseVaccineAdministered] [nvarchar](200) NULL,
	[DateGivenSecondDoseKey] [date] NULL,
	[SecondDoseVaccineAdministered] [nvarchar](200) NULL,
	[VaccinationStatus] [nvarchar](200) NULL,
	[VaccineVerification] [nvarchar](200) NULL,
	[BoosterGiven] [nvarchar](200) NULL,
	[BoosterDose] [nvarchar](200) NULL,
	[BoosterDoseDateKey] [int] NULL,
	[EverCOVID19Positive] [nvarchar](200) NULL,
	[COVID19TestDateKey] [int] NULL,
	[PatientStatus] [nvarchar](200) NULL,
	[AdmissionStatus] [nvarchar](200) NULL,
	[AdmissionUnit] [nvarchar](200) NULL,
	[MissedAppointmentDueToCOVID19] [nvarchar](200) NULL,
	[COVID19PositiveSinceLasVisit] [nvarchar](200) NULL,
	[COVID19TestDateSinceLastVisit] [date] NULL,
	[PatientStatusSinceLastVisit] [nvarchar](200) NULL,
	[AdmissionStatusSinceLastVisit] [nvarchar](200) NULL,
	[AdmissionStartDateKey] [int] NULL,
	[AdmissionEndDateKey] [int] NULL,
	[AdmissionUnitSinceLastVisit] [nvarchar](200) NULL,
	[SupplementalOxygenReceived] [nvarchar](200) NULL,
	[PatientVentilated] [nvarchar](200) NULL,
	[TracingFinalOutcome] [nvarchar](200) NULL,
	[CauseOfDeath] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineListOTZ]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineListOTZ](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [nvarchar](400) NULL,
	[AgencyName] [nvarchar](200) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[OTZEnrollmentDateKey] [int] NULL,
	[LastVisitDateKey] [int] NULL,
	[TransitionAttritionReason] [nvarchar](250) NULL,
	[TransferInStatus] [nvarchar](200) NULL,
	[ModulesPreviouslyCovered] [nvarchar](200) NULL,
	[ModulesCompletedToday_OTZ_Orientation] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Participation] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Leadership] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_MakingDecisions] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Transition] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_TreatmentLiteracy] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_SRH] [int] NOT NULL,
	[ModulesCompletedToday_OTZ_Beyond] [int] NOT NULL,
	[FirstVL] [varchar](250) NULL,
	[LastVL] [varchar](250) NULL,
	[EligibleVL] [int] NULL,
	[Last12MonthVLResults] [varchar](12) NULL,
	[Last12MVLResult] [varchar](3) NULL,
	[Last12MonthVL] [int] NULL,
	[CompletedTraining] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineListOTZEligibilityAndEnrollments]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineListOTZEligibilityAndEnrollments](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[OTZEnrollmentDateKey] [nvarchar](4000) NULL,
	[LastVisitDateKey] [nvarchar](4000) NULL,
	[TransitionAttritionReason] [nvarchar](4000) NULL,
	[TransferInStatus] [nvarchar](4000) NULL,
	[CompletedTraining] [int] NOT NULL,
	[ModulesPreviouslyCovered] [nvarchar](4000) NULL,
	[ModulesCompletedToday_OTZ_Orientation] [int] NULL,
	[ModulesCompletedToday_OTZ_Participation] [int] NULL,
	[ModulesCompletedToday_OTZ_Leadership] [int] NULL,
	[ModulesCompletedToday_OTZ_MakingDecisions] [int] NULL,
	[ModulesCompletedToday_OTZ_Transition] [int] NULL,
	[ModulesCompletedToday_OTZ_TreatmentLiteracy] [int] NULL,
	[ModulesCompletedToday_OTZ_SRH] [int] NULL,
	[ModulesCompletedToday_OTZ_Beyond] [int] NULL,
	[FirstVL] [varchar](8000) NULL,
	[LastVL] [varchar](8000) NULL,
	[EligibleVL] [int] NULL,
	[Last12MonthVLResults] [varchar](8000) NULL,
	[Last12MVLResult] [varchar](3) NULL,
	[Last12MonthVL] [int] NULL,
	[Eligible] [int] NOT NULL,
	[Enrolled] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineListOVCEnrollments]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineListOVCEnrollments](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[County] [varchar](50) NULL,
	[SubCounty] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[DATIMAgeGroup] [varchar](8) NULL,
	[OVCEnrollmentDate] [date] NULL,
	[RelationshipWithPatient] [nvarchar](4000) NULL,
	[EnrolledinCPIMS] [nvarchar](2400) NULL,
	[EnrolledinCPIMSCleaned] [varchar](3) NOT NULL,
	[CPIMSUniqueIdentifier] [nvarchar](2400) NULL,
	[PartnerOfferingOVCServices] [nvarchar](2400) NULL,
	[OVCExitReason] [nvarchar](2400) NULL,
	[ExitDate] [date] NULL,
	[FirstVL] [varchar](8000) NULL,
	[FirstVLDate] [date] NULL,
	[lastVL] [varchar](8000) NULL,
	[lastVLDate] [date] NULL,
	[Last12MVLResult] [varchar](12) NULL,
	[Last12MVLDate] [date] NULL,
	[TXCurr] [int] NOT NULL,
	[CurrentRegimen] [varchar](250) NULL,
	[LastRegimen] [varchar](250) NULL,
	[onMMD] [int] NULL,
	[ARTOutcome] [varchar](2) NULL,
	[EligibleVL] [int] NULL,
	[VLDone] [int] NULL,
	[VirallySuppressed] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LineListVLNonsuppressed]    Script Date: 2/9/2023 3:07:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineListVLNonsuppressed](
	[MFLCode] [nvarchar](60) NULL,
	[FacilityName] [varchar](250) NULL,
	[SubCounty] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[PartnerName] [varchar](250) NULL,
	[AgencyName] [varchar](50) NULL,
	[Gender] [varchar](250) NULL,
	[AgeGroup] [varchar](8) NULL,
	[AgeLastVisit] [int] NULL,
	[StartARTDate] [date] NULL,
	[Last12MonthVLResults] [varchar](8000) NULL,
	[LastVisitDate] [date] NULL,
	[NextAppointmentDate] [date] NULL,
	[ARTOutcome] [varchar](2) NULL
) ON [PRIMARY]
GO
