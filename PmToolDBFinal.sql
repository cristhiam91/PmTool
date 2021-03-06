USE [master]
GO
/****** Object:  Database [ProjectManagement]    Script Date: 2/3/2019 8:13:42 PM ******/
CREATE DATABASE [ProjectManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProjectManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProjectManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProjectManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectManagement] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectManagement', N'ON'
GO
ALTER DATABASE [ProjectManagement] SET QUERY_STORE = OFF
GO
USE [ProjectManagement]
GO
/****** Object:  Table [dbo].[ConnectionTypes]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionTypes](
	[Connection_type_id] [int] NOT NULL,
	[Connection_type_name] [varchar](50) NULL,
 CONSTRAINT [PK_ConnectionTypes] PRIMARY KEY CLUSTERED 
(
	[Connection_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataCenters]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataCenters](
	[DataCenter_request_id] [int] IDENTITY(1,1) NOT NULL,
	[DataCenter_requestor_id] [int] NULL,
	[Status] [bit] NULL,
	[Assigned_pm] [int] NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Square_footage] [float] NULL,
	[DataCenter_name] [varchar](50) NULL,
	[Scope] [int] NULL,
	[Total_number_racks] [int] NULL,
	[Total_number_ports_per_rack] [int] NULL,
	[Total_number_copper_ports_per_racks] [int] NULL,
	[Total_number_fiber_ports_per_rack] [int] NULL,
	[Speed_connection] [int] NULL,
	[Project_description] [varchar](100) NULL,
 CONSTRAINT [PK_DataCenters] PRIMARY KEY CLUSTERED 
(
	[DataCenter_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DcScopes]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DcScopes](
	[Dc_scope_id] [int] NOT NULL,
	[Dc_scope_name] [varchar](50) NULL,
 CONSTRAINT [PK_DcScopes] PRIMARY KEY CLUSTERED 
(
	[Dc_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FabScopes]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FabScopes](
	[Fab_scope_id] [int] NOT NULL,
	[Fab_scope_name] [varchar](50) NULL,
 CONSTRAINT [PK_FabScopes] PRIMARY KEY CLUSTERED 
(
	[Fab_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factories]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factories](
	[Factory_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[Factory_requestor_id] [int] NULL,
	[Assigned_pm] [int] NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Factory_name] [varchar](50) NULL,
	[Total_number_bays] [int] NULL,
	[Total_number_ports_per_bay] [int] NULL,
	[Total_number_copper_ports_per_bay] [int] NULL,
	[Total_number_fiber_ports_per_bay] [int] NULL,
	[Speed_connection] [int] NULL,
	[Fab_type] [int] NULL,
	[Square_footage] [float] NULL,
	[Project_description] [varchar](100) NULL,
	[Scope] [int] NULL,
 CONSTRAINT [PK_Factories] PRIMARY KEY CLUSTERED 
(
	[Factory_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Labs]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labs](
	[Lab_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[Lab_requestor_id] [int] NULL,
	[Assigned_pm] [int] NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Lab_name] [varchar](50) NULL,
	[Scope] [int] NULL,
	[Square_footage] [float] NULL,
	[Total_number_racks] [int] NULL,
	[Total_number_ports_per_rack] [int] NULL,
	[Total_number_copper_ports_per_racks] [int] NULL,
	[Total_number_fiber_ports_per_rack] [int] NULL,
	[Total_number_benches] [int] NULL,
	[Total_number_ports_per_bench] [int] NULL,
	[Total_number_copper_ports_per_bench] [int] NULL,
	[Total_number_fiber_ports_per_bench] [int] NULL,
	[Speed_connection] [int] NULL,
	[Project_description] [varchar](100) NULL,
 CONSTRAINT [PK_Labs] PRIMARY KEY CLUSTERED 
(
	[Lab_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabScopes]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabScopes](
	[Lab_scope_id] [int] NOT NULL,
	[Lab_scope_name] [varchar](50) NULL,
 CONSTRAINT [PK_LabScopes] PRIMARY KEY CLUSTERED 
(
	[Lab_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[Office_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[Office_requestor_id] [int] NULL,
	[Assigned_pm] [int] NULL,
	[Site_name] [varchar](50) NULL,
	[Program_name] [varchar](50) NULL,
	[Project_name] [varchar](50) NULL,
	[Project_phase] [int] NULL,
	[Request_date] [date] NULL,
	[Expected_date] [date] NULL,
	[Project_budget] [float] NULL,
	[Project_type] [int] NULL,
	[Total_number_workstations] [int] NULL,
	[Total_number_ports_per_workstation] [int] NULL,
	[Speed_connection] [int] NULL,
	[Total_number_workstation_copper_ports] [int] NULL,
	[Total_number_workstation_fiber_ports] [int] NULL,
	[Number_of_auditoriums] [int] NULL,
	[Number_of_A_type_rooms] [int] NULL,
	[Number_of_B_type_rooms] [int] NULL,
	[Number_of_C_type_rooms] [int] NULL,
	[Number_of_Collaboration_rooms] [int] NULL,
	[Number_of_phonebooths] [int] NULL,
	[Square_footage] [float] NULL,
	[Project_description] [varchar](100) NULL,
	[Scope] [int] NULL,
	[Connection] [int] NULL,
 CONSTRAINT [PK_Offices] PRIMARY KEY CLUSTERED 
(
	[Office_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeScopes]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeScopes](
	[Office_scope_id] [int] NOT NULL,
	[Office_scope_name] [varchar](50) NULL,
 CONSTRAINT [PK_OfficeScopes] PRIMARY KEY CLUSTERED 
(
	[Office_scope_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherProjects]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherProjects](
	[Other_request_id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NULL,
	[Project_description] [varchar](100) NULL,
	[Other_requestor_id] [int] NULL,
	[Other_projectType] [int] NULL,
	[Assigned_pm] [int] NULL,
 CONSTRAINT [PK_OtherProjects] PRIMARY KEY CLUSTERED 
(
	[Other_request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhaseTypes]    Script Date: 2/3/2019 8:13:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhaseTypes](
	[Phase_id] [int] NOT NULL,
	[Phase_name] [varchar](50) NULL,
 CONSTRAINT [PK_PhaseTypes] PRIMARY KEY CLUSTERED 
(
	[Phase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PmProjectCost]    Script Date: 2/3/2019 8:13:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PmProjectCost](
	[Project_id] [int] IDENTITY(1,1) NOT NULL,
	[Project_name] [varchar](50) NULL,
	[Local_area_network_systems] [float] NULL,
	[Wide_area_network] [float] NULL,
	[Wireless_Lan_Infrastructure_equipment] [float] NULL,
	[Indetification_for_com_systems] [float] NULL,
	[Com_grounding] [float] NULL,
	[Cable_Trays] [float] NULL,
	[Handholes_and_manholes] [float] NULL,
	[Com_cabinets] [float] NULL,
	[Racks] [float] NULL,
	[Frames] [float] NULL,
	[Enclosures] [float] NULL,
	[Campus_distribution_subsystems] [float] NULL,
	[Vertical_distribution_subsystem] [float] NULL,
	[Com_horizontal_cabling] [float] NULL,
	[Com_circuits] [float] NULL,
	[Com_patch_cords] [float] NULL,
	[Station_cords] [float] NULL,
	[Cross_connect_wires] [float] NULL,
	[Multimedia_equipment] [float] NULL,
	[PBX_switch_processor] [float] NULL,
	[Expansion_phone_network] [float] NULL,
	[Desk_phones] [float] NULL,
	[Public_wall_phones] [float] NULL,
	[Conferencing_phones] [float] NULL,
	[Internal_celular] [float] NULL,
	[Printers] [float] NULL,
	[Training_pcs] [float] NULL,
	[Servers] [float] NULL,
	[Servers_racks] [float] NULL,
	[A_E_desing_consultants] [float] NULL,
	[QC_Consultants] [float] NULL,
	[Project_management_coordination] [float] NULL,
	[Temporary_communications] [float] NULL,
	[Telecom_cabling_demoliton] [float] NULL,
	[Other_expenses] [float] NULL,
 CONSTRAINT [PK_ITLabeling] PRIMARY KEY CLUSTERED 
(
	[Project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectNames]    Script Date: 2/3/2019 8:13:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectNames](
	[Project_id] [int] NOT NULL,
	[Project_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProjectNames] PRIMARY KEY CLUSTERED 
(
	[Project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTypes]    Script Date: 2/3/2019 8:13:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTypes](
	[Project_type_id] [int] NOT NULL,
	[Project_type_name] [varchar](50) NULL,
 CONSTRAINT [PK_ProjectTypes] PRIMARY KEY CLUSTERED 
(
	[Project_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeedConnectionTypes]    Script Date: 2/3/2019 8:13:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeedConnectionTypes](
	[Speed_connection_id] [int] NOT NULL,
	[Speed_connection_name] [varchar](50) NULL,
 CONSTRAINT [PK_SpeedConnectionTypes] PRIMARY KEY CLUSTERED 
(
	[Speed_connection_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/3/2019 8:13:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_id] [int] NOT NULL,
	[Status] [bit] NULL,
	[User_name] [varchar](100) NULL,
	[User_type] [int] NULL,
	[User_password] [varchar](100) NULL,
	[User_phone] [varchar](100) NULL,
	[User_email] [varchar](100) NULL,
	[User_age] [int] NULL,
	[User_secure_question_1] [varchar](100) NULL,
	[User_secure_question_2] [varchar](100) NULL,
	[User_secure_question_3] [varchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 2/3/2019 8:13:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[User_type_id] [int] NOT NULL,
	[User_type_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[User_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_DcScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[DcScopes] ([Dc_scope_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_DcScopes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_PhaseTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[PhaseTypes] ([Phase_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_PhaseTypes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_ProjectTypes] FOREIGN KEY([Project_type])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_ProjectTypes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[DataCenters]  WITH CHECK ADD  CONSTRAINT [FK_DataCenters_Users] FOREIGN KEY([Assigned_pm])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[DataCenters] CHECK CONSTRAINT [FK_DataCenters_Users]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_FabScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[FabScopes] ([Fab_scope_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_FabScopes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_PhaseTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[PhaseTypes] ([Phase_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_PhaseTypes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_ProjectTypes] FOREIGN KEY([Project_type])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_ProjectTypes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[Factories]  WITH CHECK ADD  CONSTRAINT [FK_Factories_Users] FOREIGN KEY([Assigned_pm])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Factories] CHECK CONSTRAINT [FK_Factories_Users]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_LabScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[LabScopes] ([Lab_scope_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_LabScopes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_PhaseTypes] FOREIGN KEY([Project_phase])
REFERENCES [dbo].[PhaseTypes] ([Phase_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_PhaseTypes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_ProjectTypes] FOREIGN KEY([Project_type])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_ProjectTypes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[Labs]  WITH CHECK ADD  CONSTRAINT [FK_Labs_Users] FOREIGN KEY([Assigned_pm])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Labs] CHECK CONSTRAINT [FK_Labs_Users]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_ConnectionTypes] FOREIGN KEY([Connection])
REFERENCES [dbo].[ConnectionTypes] ([Connection_type_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_ConnectionTypes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_OfficeScopes] FOREIGN KEY([Scope])
REFERENCES [dbo].[OfficeScopes] ([Office_scope_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_OfficeScopes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_ProjectTypes] FOREIGN KEY([Project_type])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_ProjectTypes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_SpeedConnectionTypes] FOREIGN KEY([Speed_connection])
REFERENCES [dbo].[SpeedConnectionTypes] ([Speed_connection_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_SpeedConnectionTypes]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Offices_Users] FOREIGN KEY([Assigned_pm])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Offices_Users]
GO
ALTER TABLE [dbo].[OtherProjects]  WITH CHECK ADD  CONSTRAINT [FK_OtherProjects_ProjectTypes] FOREIGN KEY([Other_projectType])
REFERENCES [dbo].[ProjectTypes] ([Project_type_id])
GO
ALTER TABLE [dbo].[OtherProjects] CHECK CONSTRAINT [FK_OtherProjects_ProjectTypes]
GO
ALTER TABLE [dbo].[OtherProjects]  WITH CHECK ADD  CONSTRAINT [FK_OtherProjects_Users] FOREIGN KEY([Assigned_pm])
REFERENCES [dbo].[Users] ([User_id])
GO
ALTER TABLE [dbo].[OtherProjects] CHECK CONSTRAINT [FK_OtherProjects_Users]
GO
ALTER TABLE [dbo].[ProjectNames]  WITH CHECK ADD  CONSTRAINT [FK_ProjectNames_DataCenters] FOREIGN KEY([Project_id])
REFERENCES [dbo].[DataCenters] ([DataCenter_request_id])
GO
ALTER TABLE [dbo].[ProjectNames] CHECK CONSTRAINT [FK_ProjectNames_DataCenters]
GO
ALTER TABLE [dbo].[ProjectNames]  WITH CHECK ADD  CONSTRAINT [FK_ProjectNames_Labs] FOREIGN KEY([Project_id])
REFERENCES [dbo].[Labs] ([Lab_request_id])
GO
ALTER TABLE [dbo].[ProjectNames] CHECK CONSTRAINT [FK_ProjectNames_Labs]
GO
ALTER TABLE [dbo].[ProjectNames]  WITH CHECK ADD  CONSTRAINT [FK_ProjectNames_OtherProjects] FOREIGN KEY([Project_id])
REFERENCES [dbo].[OtherProjects] ([Other_request_id])
GO
ALTER TABLE [dbo].[ProjectNames] CHECK CONSTRAINT [FK_ProjectNames_OtherProjects]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes] FOREIGN KEY([User_type])
REFERENCES [dbo].[UserTypes] ([User_type_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes]
GO
USE [master]
GO
ALTER DATABASE [ProjectManagement] SET  READ_WRITE 
GO
