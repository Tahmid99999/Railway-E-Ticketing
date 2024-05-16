USE [master]
GO
/****** Object:  Database [RAILWAY_DB]    Script Date: 10/02/2023 06:11:29 PM ******/
CREATE DATABASE [RAILWAY_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RAILWAY_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RAILWAY_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RAILWAY_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RAILWAY_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RAILWAY_DB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RAILWAY_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RAILWAY_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RAILWAY_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RAILWAY_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RAILWAY_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RAILWAY_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [RAILWAY_DB] SET  MULTI_USER 
GO
ALTER DATABASE [RAILWAY_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RAILWAY_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RAILWAY_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RAILWAY_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RAILWAY_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RAILWAY_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RAILWAY_DB', N'ON'
GO
ALTER DATABASE [RAILWAY_DB] SET QUERY_STORE = ON
GO
ALTER DATABASE [RAILWAY_DB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RAILWAY_DB]
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[Train_No] [int] NULL,
	[Coach_Name] [varchar](255) NULL,
	[Seat_No] [int] NULL,
	[Coach_fare] [int] NULL,
	[isBooked] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Ticket_ID] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactUs]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactUs](
	[name] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[msg] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictId] [int] NOT NULL,
	[DivisionId] [int] NOT NULL,
	[DistrictName] [varchar](25) NOT NULL,
	[bn_name] [varchar](25) NOT NULL,
	[lat] [varchar](15) NULL,
	[lon] [varchar](15) NULL,
	[url] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[DivisionId] [int] NOT NULL,
	[DivisionName] [varchar](25) NOT NULL,
	[bn_name] [varchar](25) NOT NULL,
	[url] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GetRequest]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GetRequest](
	[Ticket_ID] [varchar](100) NULL,
	[mobile] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user](
	[id] [varchar](100) NOT NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[mobile] [varchar](100) NULL,
	[pass] [varchar](100) NULL,
	[nid] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tempData]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tempData](
	[trxId] [varchar](100) NULL,
	[phn_num] [varchar](100) NULL,
	[tk_amount] [varchar](100) NULL,
	[date_time] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Train]    Script Date: 10/02/2023 06:11:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Train](
	[Train_No] [int] NOT NULL,
	[Train_Name] [varchar](250) NULL,
	[Offday] [varchar](250) NULL,
	[Departure_Station] [varchar](250) NULL,
	[Departure_time] [varchar](250) NULL,
	[Arrival_Station] [varchar](250) NULL,
	[Arrival_Time] [varchar](250) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Districts] ADD  DEFAULT (NULL) FOR [lat]
GO
ALTER TABLE [dbo].[Districts] ADD  DEFAULT (NULL) FOR [lon]
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Division] ([DivisionId])
GO
USE [master]
GO
ALTER DATABASE [RAILWAY_DB] SET  READ_WRITE 
GO


INSERT INTO Division VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

INSERT INTO Districts  VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd'),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd'),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd'),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd'),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd'),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd'),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd'),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd'),
(9, 1, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd'),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd'),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd'),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd'),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd'),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd'),
(15, 2, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd'),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd'),
(17, 2, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd'),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd'),
(19, 2, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd'),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd'),
(21, 3, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd'),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd'),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd'),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd'),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd'),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd'),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd'),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd'),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd'),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd'),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd'),
(32, 4, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd'),
(33, 4, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd'),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd'),
(35, 4, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd'),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd'),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd'),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd'),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd'),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd'),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd'),
(42, 6, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd'),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd'),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd'),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd'),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd'),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd'),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd'),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd'),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd'),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd'),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd'),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd'),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd'),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd'),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd'),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd'),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd'),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd'),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd'),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd'),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd'),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd'),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd');

