USE [master]
GO
/****** Object:  Database [okul1]    Script Date: 6.12.2018 12:32:15 ******/
CREATE DATABASE [okul1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'okul1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\okul1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'okul1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\okul1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [okul1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [okul1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [okul1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [okul1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [okul1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [okul1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [okul1] SET ARITHABORT OFF 
GO
ALTER DATABASE [okul1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [okul1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [okul1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [okul1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [okul1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [okul1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [okul1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [okul1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [okul1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [okul1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [okul1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [okul1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [okul1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [okul1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [okul1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [okul1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [okul1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [okul1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [okul1] SET  MULTI_USER 
GO
ALTER DATABASE [okul1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [okul1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [okul1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [okul1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [okul1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [okul1] SET QUERY_STORE = OFF
GO
USE [okul1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [okul1]
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 6.12.2018 12:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[dersNo] [int] IDENTITY(1,1) NOT NULL,
	[dersadi] [varchar](50) NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[dersNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotBilgileri]    Script Date: 6.12.2018 12:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotBilgileri](
	[ogrNo] [int] NULL,
	[dersNo] [int] NULL,
	[y1] [int] NULL,
	[y2] [int] NULL,
	[y3] [int] NULL,
	[s1] [int] NULL,
	[s2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenciBilgileri]    Script Date: 6.12.2018 12:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenciBilgileri](
	[ogrNo] [int] NOT NULL,
	[veliNo] [int] NULL,
	[tcKimlik] [nvarchar](11) NULL,
	[adi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[dogum_trh] [date] NULL,
	[email] [nvarchar](50) NULL,
	[dogumYeri] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[adres] [nchar](10) NULL,
	[cinsiyeti] [nchar](10) NULL,
	[bursMiktari] [money] NULL,
 CONSTRAINT [PK_ogrenciBilgileri] PRIMARY KEY CLUSTERED 
(
	[ogrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veli]    Script Date: 6.12.2018 12:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veli](
	[veliNo] [int] IDENTITY(1,1) NOT NULL,
	[veliAdi] [nvarchar](50) NULL,
	[veliSoyadi] [nvarchar](50) NULL,
	[veliAdres] [nvarchar](50) NULL,
	[veliCepTel] [nvarchar](50) NULL,
	[meslegi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Veli] PRIMARY KEY CLUSTERED 
(
	[veliNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dersler] ON 

INSERT [dbo].[Dersler] ([dersNo], [dersadi]) VALUES (1, N'FİZİK')
INSERT [dbo].[Dersler] ([dersNo], [dersadi]) VALUES (2, N'EDEBİYAT')
INSERT [dbo].[Dersler] ([dersNo], [dersadi]) VALUES (3, N'KİMYA')
INSERT [dbo].[Dersler] ([dersNo], [dersadi]) VALUES (4, N'MATEMATİK')
SET IDENTITY_INSERT [dbo].[Dersler] OFF
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (846, 11, N'32165498778', N'DENİZ', N'DEMİR', CAST(N'1992-02-03' AS Date), N'denizdemir@yahooo.com', N'MALATYA', N'021265445222', N'KARTAL    ', N'ERKEK     ', 400.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (847, 11, N'32165498778', N'DERYA', N'DEMİR', CAST(N'1994-12-30' AS Date), N'deryademir@yahoo.com', N'MALATYA', N'021265445222', N'KARTAL    ', N'KADIN     ', 200.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (849, 11, N'32165498778', N'DİDEM', N'DEMİR', CAST(N'1994-12-30' AS Date), N'didemdemir@yahoo.com', N'MALATYA', N'021265445222', N'KARTAL    ', N'KADIN     ', 200.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (1200, 1, N'32525252525', N'ELİF', N'KAYA', CAST(N'1985-03-02' AS Date), N'elif@yahoo.com', N'ADANA', N'02165454545', N'KARTAL    ', N'KADIN     ', 500.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (1245, 2, N'34245424454', N'ÖZGÜR', N'PINAR', CAST(N'1995-12-30' AS Date), N'ozgur@mynet.com', N'TRABZON', N'02165455445', N'MALTEPE   ', N'ERKEK     ', 0.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (1587, 3, N'32165478958', N'HATİCE', N'YILMAZ', CAST(N'1994-05-02' AS Date), N'hatice@hotmail.com', N'ADANA', N'02123232525', N'TUZLA     ', N'KADIN     ', 400.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (2122, 4, N'12345678998', N'HAKAN', N'AK', CAST(N'1975-01-01' AS Date), N'ak@hotmail.com', N'MERSİN', N'02163225448', N'MALTEPE   ', N'ERKEK     ', 500.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (2454, 5, N'32326529888', N'ELİF', N'YILMAZ', CAST(N'1975-07-05' AS Date), N'elif@mynet.com', N'RİZE', N'021668788787', N'MALTEPE   ', N'KADIN     ', 700.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (2552, 6, N'32326552656', N'HAKAN', N'IŞIK', CAST(N'1994-02-03' AS Date), N'hakan@hotmail.com', N'MERSİN', N'02125666566', N'TUZLA     ', N'ERKEK     ', 0.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (3265, 7, N'98558526424', N'ÖZGÜR', N'PINAR', CAST(N'1995-07-07' AS Date), N'ozgur@yahoo.com', N'MERSİN', N'02168784544', N'PENDİK    ', N'KADIN     ', 500.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (3452, 8, N'98765432112', N'SİNAN', N'AKTAŞ', CAST(N'1995-08-03' AS Date), N'sinan@mynet.com', N'VAN', N'021663699874', N'PENDİK    ', N'ERKEK     ', 300.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (4525, 9, N'54245421512', N'ÇETİN', N'KAYA', CAST(N'1994-02-09' AS Date), N'cetin@hotmail.com', N'TRABZON', N'02128796565', N'4.LEVENT  ', N'ERKEK     ', 0.0000)
INSERT [dbo].[ogrenciBilgileri] ([ogrNo], [veliNo], [tcKimlik], [adi], [soyadi], [dogum_trh], [email], [dogumYeri], [tel], [adres], [cinsiyeti], [bursMiktari]) VALUES (7855, 10, N'65464454244', N'FIRAT', N'PINAR', CAST(N'1975-08-08' AS Date), N'firat@mynet.com', N'RİZE', N'02125965659', N'TUZLA     ', N'ERKEK     ', 300.0000)
SET IDENTITY_INSERT [dbo].[Veli] ON 

INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (1, N'ERSİN', N'KAYA', N'MALTEPE', N'05053216542', N'DOKTOR')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (2, N'ŞİRİN', N'PINAR', N'KARTAL', N'05324252525', N'AVUKAT')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (3, N'FIRAT', N'YILMAZ', N'PENDİK', N'05425656536', N'DİŞÇİ')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (4, N'DENİZ', N'AK', N'TUZLA', N'05556336252', N'İŞÇİ')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (5, N'ÖZGÜR', N'YILMAZ', N'KADIKÖY', N'05068787552', N'ÖĞRETMEN')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (6, N'HATİCE', N'IŞIK', N'MALTEPE', N'05568787455', N'AŞÇI')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (7, N'BUSE', N'PINAR', N'TUZLA', N'05334454555', N'KUAFÖR')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (8, N'BETÜL', N'AKTAŞ', N'KARTAL', N'05443366554', N'DOKTOR')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (9, N'SEVGİ', N'KAYA', N'PENDİK', N'05372222414', N'HEMŞİRE')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (10, N'SİNAN', N'PINAR', N'MALTEPE', N'05364445552', N'HAKİM')
INSERT [dbo].[Veli] ([veliNo], [veliAdi], [veliSoyadi], [veliAdres], [veliCepTel], [meslegi]) VALUES (11, N'TARIK', N'DEMİR', N'KARTAL', N'05372225457', N'SAVCI')
SET IDENTITY_INSERT [dbo].[Veli] OFF
USE [master]
GO
ALTER DATABASE [okul1] SET  READ_WRITE 
GO
