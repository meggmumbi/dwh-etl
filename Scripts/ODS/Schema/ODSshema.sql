USE [master]
GO
/****** Object:  Database [ODS]    Script Date: 9/29/2022 8:55:02 PM ******/
CREATE DATABASE [ODS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ODS', FILENAME = N'D:\PathWays International\ODS\ODS.mdf' , SIZE = 466944KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ODS_log', FILENAME = N'D:\PathWays International\ODS\ODS_log.ldf' , SIZE = 598016KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ODS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ODS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ODS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ODS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ODS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ODS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ODS] SET ARITHABORT OFF 
GO
ALTER DATABASE [ODS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ODS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ODS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ODS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ODS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ODS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ODS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ODS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ODS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ODS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ODS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ODS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ODS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ODS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ODS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ODS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ODS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ODS] SET RECOVERY FULL 
GO
ALTER DATABASE [ODS] SET  MULTI_USER 
GO
ALTER DATABASE [ODS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ODS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ODS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ODS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ODS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ODS', N'ON'
GO
ALTER DATABASE [ODS] SET QUERY_STORE = OFF
GO
USE [ODS]
GO
/****** Object:  Table [dbo].[ALL_EMRSites]    Script Date: 9/29/2022 8:55:02 PM ******/
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
/****** Object:  Table [dbo].[CT_ARTPatients]    Script Date: 9/29/2022 8:55:02 PM ******/
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
	[PKV] [varchar](250) NULL,
	[PatientUID] [uniqueidentifier] NULL,
	[PreviousARTUse] [nvarchar](150) NULL,
	[PreviousARTPurpose] [nvarchar](150) NULL,
	[DateLastUsed] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_Patient]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Patient](
	[PatientID] [nvarchar](50) NULL,
	[PatientPK] [int] NULL,
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
	[PKV] [varchar](250) NULL,
	[PatientUID] [uniqueidentifier] NULL,
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
	[NUPI] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PatientPharmacy]    Script Date: 9/29/2022 8:55:02 PM ******/
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
/****** Object:  Table [dbo].[CT_PatientStatus]    Script Date: 9/29/2022 8:55:02 PM ******/
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
/****** Object:  Table [dbo].[CT_PatientVisits]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PatientVisits](
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
/****** Object:  StoredProcedure [dbo].[Load_CT_All_EMRSites]    Script Date: 9/29/2022 8:55:02 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Load_CT_ARTPatients]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_ARTPatients]  
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
/****** Object:  StoredProcedure [dbo].[Load_CT_Patient]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_Patient]    
AS 
	BEGIN
	
	       ---- Refresh DimPatient
			MERGE [ODS].[dbo].[CT_Patient] AS a
				USING(SELECT  P.[PatientCccNumber] as PatientID,P.[PatientPID] as PatientPK,F.Code as SiteCode,F.[Name] as FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,P.Emr,P.Project,PKV,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI
						FROM [DWAPICentral].[dbo].[PatientExtract]  P  with (NoLock)
						INNER JOIN [DWAPICentral].[dbo].[Facility] F with (NoLock)  
						ON P.[FacilityId]  = F.Id  AND F.Voided=0 
						---INNER JOIN FacilityManifest_MaxDateRecieved(NoLock) a ON F.Code = a.SiteCode
						WHERE P.Voided=0 and P.[Gender] is NOT NULL and p.gender!='Unknown' ) AS b 
						ON(
						--a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS and
						 a.PatientPK  = b.PatientPK 
						and a.SiteCode = b.SiteCode)
			WHEN MATCHED THEN
			UPDATE SET 
			a.FacilityName = B.FacilityName  ---Update all the columns that can change
			WHEN NOT MATCHED THEN 
			INSERT(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI) 
			VALUES(PatientID,PatientPK,SiteCode,FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,Emr,Project,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode] 
					ORDER BY [PatientPK],[SiteCode]) AS dump_ 
					FROM [ODS].[dbo].[CT_Patient] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;

			------- Rrefresh DimFacility

			--MERGE [NDWH_DB].[dbo].[DimFacility] AS a
			--	USING(SELECT  P.[PatientCccNumber] as PatientID,P.[PatientPID] as PatientPK,F.Code as SiteCode,F.[Name] as FacilityName,Gender,DOB,RegistrationDate,RegistrationAtCCC,RegistrationAtPMTCT,RegistrationAtTBClinic,PatientSource,Region,District,Village,ContactRelation,LastVisit,MaritalStatus,EducationLevel,DateConfirmedHIVPositive,PreviousARTExposure,PreviousARTStartDate,P.Emr,P.Project,PKV,Orphan,Inschool,PatientType,PopulationType,KeyPopulationType,PatientResidentCounty,PatientResidentSubCounty,PatientResidentLocation,PatientResidentSubLocation,PatientResidentWard,PatientResidentVillage,TransferInDate,Occupation,NUPI
			--			FROM [197.248.44.225].[DWAPICentral].[dbo].[PatientExtract]  P  with (NoLock)
			--			INNER JOIN [197.248.44.225].[DWAPICentral].[dbo].[Facility] F with (NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0 
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientPharmacy]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientPharmacy]    
AS 
	BEGIN
	       ---- Refresh [ODS].[dbo].[CT_PatientPharmacy]
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
			--WHEN MATCHED THEN
			--UPDATE SET 
			--a.FacilityName = B.FacilityName  ----anclude all the columns that can change
			WHEN NOT MATCHED THEN 
			INSERT(PatientID,SiteCode,FacilityName,PatientPK,VisitID,Drug,DispenseDate,Duration,ExpectedReturn,TreatmentType,PeriodTaken,ProphylaxisType,Emr,Project,PKV,PatientUID,RegimenLine,RegimenChangedSwitched,RegimenChangeSwitchReason,StopRegimenReason,StopRegimenDate) 
			VALUES(PatientID,SiteCode,FacilityName,PatientPK,VisitID,Drug,DispenseDate,Duration,ExpectedReturn,TreatmentType,PeriodTaken,ProphylaxisType,Emr,Project,PKV,PatientUID,RegimenLine,RegimenChangedSwitched,RegimenChangeSwitchReason,StopRegimenReason,StopRegimenDate);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			WITH CTE AS   
				(  
					SELECT [PatientPK],[SiteCode],DispenseDate,ROW_NUMBER() 
					OVER (PARTITION BY [PatientPK],[SiteCode],DispenseDate
					ORDER BY [PatientPK],[SiteCode],DispenseDate) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientPharmacy] 
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientStatus]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientStatus]    
AS 
	BEGIN
	       ---- Refresh [ODS].[dbo].[CT_PatientStatus]
		  
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
						--WHEN MATCHED THEN
						--UPDATE SET 
						--a.FacilityName = B.FacilityName     ----Add all the columns that can change
						WHEN NOT MATCHED THEN 
						INSERT(PatientID,SiteCode,FacilityName,ExitDescription,ExitDate,ExitReason,PatientPK,Emr,Project,PKV,PatientUID,TOVerified,TOVerifiedDate,ReEnrollmentDate,DeathDate)--/*,SpecificDeathReason,DeathDate,EffectiveDiscontinuationDate */) 
						VALUES(PatientID,SiteCode,FacilityName,ExitDescription,ExitDate,ExitReason,PatientPK,Emr,Project,PKV,PatientUID,TOVerified,TOVerifiedDate,ReEnrollmentDate,DeathDate); --/*ReasonForDeath,SpecificDeathReason,DeathDate /*EffectiveDiscontinuationDate/*);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientVisits]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Load_CT_PatientVisits]    
AS 
	BEGIN
	       ---- Refresh DimPatient
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
						  0 AS knockout,NULL AS PatientUID,[GeneralExamination],[SystemExamination],[Skin],[Eyes],[ENT],[Chest],[CVS],[Abdomen],[CNS],[Genitourinary]
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
			--WHEN MATCHED THEN
			--UPDATE SET 
			--a.FacilityName = B.FacilityName  ---Update all the columns that can change
			WHEN NOT MATCHED THEN 
			INSERT(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,PKV,PatientUID,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes) 
			VALUES(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,PKV,PatientUID,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
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
/****** Object:  StoredProcedure [dbo].[Load_CT_PatientVisits_test]    Script Date: 9/29/2022 8:55:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Load_CT_PatientVisits_test] 
AS 
	BEGIN
	       ---- Refresh DimPatient
			MERGE [ODS].[dbo].[CT_PatientVisits] AS a
				USING(SELECT top 10 P.[PatientCccNumber] AS PatientID, P.[PatientPID] AS PatientPK,F.[Name] AS FacilityName, F.Code AS SiteCode,PV.[VisitId] VisitID,PV.[VisitDate] VisitDate
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
						  0 AS knockout,NULL AS PatientUID,[GeneralExamination],[SystemExamination],[Skin],[Eyes],[ENT],[Chest],[CVS],[Abdomen],[CNS],[Genitourinary]
							-----Missing columns Added later by Dennis
						  ,PV.VisitBy VisitBy,PV.Temp Temp,PV.PulseRate PulseRate,PV.RespiratoryRate RespiratoryRate,PV.OxygenSaturation OxygenSaturation,PV.Muac Muac,PV.NutritionalStatus NutritionalStatus,PV.EverHadMenses EverHadMenses,PV.Menopausal Menopausal
						  ,PV.Breastfeeding Breastfeeding,PV.NoFPReason NoFPReason,PV.ProphylaxisUsed ProphylaxisUsed,PV.CTXAdherence CTXAdherence,PV.CurrentRegimen CurrentRegimen,PV.HCWConcern HCWConcern,PV.TCAReason TCAReason,PV.ClinicalNotes ClinicalNotes
						FROM [197.248.44.225].[DWAPICentral].[dbo].[PatientExtract] P WITH (NoLock)  
						LEFT JOIN [197.248.44.225].[DWAPICentral].[dbo].[PatientArtExtract] PA WITH(NoLock)  ON PA.[PatientId]= P.ID
						INNER JOIN [197.248.44.225].[DWAPICentral].[dbo].[PatientVisitExtract] PV WITH(NoLock)  ON PV.[PatientId]= P.ID AND PV.Voided=0
						INNER JOIN [197.248.44.225].[DWAPICentral].[dbo].[Facility] F WITH(NoLock)  ON P.[FacilityId] = F.Id AND F.Voided=0
						---INNER JOIN [DWAPICentral].[dbo].[FacilityManifest_MaxDateRecieved](NoLock) a ON F.Code = a.SiteCode
						----LEFT JOIN All_Staging_2016_2.dbo.stg_Patients TPat ON TPat.PKV=LTRIM(RTRIM(STR(F.Code)))+'-'+LTRIM(RTRIM(P.[PatientCccNumber]))+'-'+LTRIM(RTRIM(STR(P.[PatientPID])))
						--ORDER BY F.Id, PV.[PatientId],PV.[VisitDate],PV.[VisitId]
						WHERE p.gender!='Unknown') AS b 
						ON(a.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS = b.PatientID COLLATE SQL_Latin1_General_CP1_CI_AS
							AND a.PatientPK  = b.PatientPK 
							AND a.SiteCode = b.SiteCode
							AND a.visitID = b.[VisitId])
			WHEN MATCHED THEN
			UPDATE SET 
			a.FacilityName = B.FacilityName
			WHEN NOT MATCHED THEN 
			INSERT(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,PKV,PatientUID,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes) 
			VALUES(PatientID,FacilityName,SiteCode,PatientPK,VisitID,VisitDate,[SERVICE],VisitType,WHOStage,WABStage,Pregnant,LMP,EDD,Height,[Weight],BP,OI,OIDate,Adherence,AdherenceCategory,FamilyPlanningMethod,PwP,GestationAge,NextAppointmentDate,Emr,Project,PKV,PatientUID,DifferentiatedCare,StabilityAssessment,KeyPopulationType,PopulationType,VisitBy,Temp,PulseRate,RespiratoryRate,OxygenSaturation,Muac,NutritionalStatus,EverHadMenses,Breastfeeding,Menopausal,NoFPReason,ProphylaxisUsed,CTXAdherence,CurrentRegimen,HCWConcern,TCAReason,ClinicalNotes);
			
			---Remove any duplicate from [NDWH_DB].[dbo].[DimPatient]
			WITH CTE AS   
				(  
					SELECT [PatientID],[PatientPK],[SiteCode],VisitID,ROW_NUMBER() 
					OVER (PARTITION BY [PatientID],[PatientPK],[SiteCode],VisitID 
					ORDER BY [PatientID],[PatientPK],[SiteCode],VisitID) AS dump_ 
					FROM [ODS].[dbo].[CT_PatientVisits] 
					)  
			
			DELETE FROM CTE WHERE dump_ >1;
			
	END





GO
/****** Object:  StoredProcedure [dbo].[Populate_ARTOutcome]    Script Date: 9/29/2022 8:55:02 PM ******/
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
			
		from ARTOutcomesCompuation
		left join [ODS].dbo.ALL_EMRSites as partner ON ARTOutcomesCompuation.SiteCode = partner.SDP
		left join [ODS].dbo.ALL_EMRSites as facility ON ARTOutcomesCompuation.SiteCode = facility.MFL_Code
		left join last_visit_encounter_as_of_date  on last_visit_encounter_as_of_date.PatientID = ARTOutcomesCompuation.PatientID
			and last_visit_encounter_as_of_date.PatientPK = ARTOutcomesCompuation.PatientPK
			and last_visit_encounter_as_of_date.SiteCode = ARTOutcomesCompuation.SiteCode
END
GO
USE [master]
GO
ALTER DATABASE [ODS] SET  READ_WRITE 
GO
