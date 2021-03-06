USE [master]
GO
CREATE DATABASE [cepTelOnarim]
GO
USE [cepTelOnarim]
GO
CREATE TABLE [dbo].[ArizaKayitTablosu](
	[AK_id] [int] IDENTITY(1,1) NOT NULL,
	[AK_P_id] [int] NULL,
	[AK_M_id] [int] NULL,
	[AK_CTO_id] [int] NULL,
	[AK_kargoMu] [bit] NULL,
	[AK_IMEI] [varchar](15) NULL,
	[AK_garanti] [bit] NULL,
	[AK_gelisTarihi] [datetime] NULL,
	[AK_aksesuarlar] [varchar](150) NULL,
	[AK_sikayet] [varchar](150) NULL,
 CONSTRAINT [PK_ArizaKayitTablosu] PRIMARY KEY CLUSTERED 
(
	[AK_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArizaSonucTablosu]    Script Date: 26.3.2015 10:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArizaSonucTablosu](
	[AS_id] [int] IDENTITY(1,1) NOT NULL,
	[AS_AK_id] [int] NULL,
	[AS_onarimTarihi] [datetime] NULL,
	[AS_P_id] [int] NULL,
	[AS_yapilanIslem] [varchar](150) NULL,
	[AS_PF_id] [int] NULL,
	[AS_OF_id] [int] NULL,
	[AS_teslimTarihi] [datetime] NULL,
 CONSTRAINT [PK_ArizaSonucTablosu] PRIMARY KEY CLUSTERED 
(
	[AS_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CepTelOzellikTablosu]    Script Date: 26.3.2015 10:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CepTelOzellikTablosu](
	[CTO_id] [int] IDENTITY(1,1) NOT NULL,
	[CTO_marka] [varchar](50) NULL,
	[CTO_model] [varchar](20) NULL,
	[CTO_ozellik] [varchar](255) NULL,
 CONSTRAINT [PK_CepTelOzellikTablosu] PRIMARY KEY CLUSTERED 
(
	[CTO_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MusteriTablosu]    Script Date: 26.3.2015 10:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MusteriTablosu](
	[M_id] [int] IDENTITY(1,1) NOT NULL,
	[M_adiSadi] [varchar](30) NULL,
	[M_TCKimlik] [varchar](11) NULL,
	[M_cepTel] [varchar](11) NULL,
	[M_adres] [varchar](160) NULL,
	[M_Il] [int] NULL,
	[M_Ilce] [int] NULL,
 CONSTRAINT [PK_MusteriTablosu] PRIMARY KEY CLUSTERED 
(
	[M_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OnarımFiyatTablosu]    Script Date: 26.3.2015 10:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OnarımFiyatTablosu](
	[OF_id] [int] IDENTITY(1,1) NOT NULL,
	[OF_iscilik] [varchar](50) NULL,
	[OF_ucret] [money] NULL,
 CONSTRAINT [PK_OnarımFiyatTablosu] PRIMARY KEY CLUSTERED 
(
	[OF_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ParcaFiyatTablosu]    Script Date: 26.3.2015 10:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParcaFiyatTablosu](
	[PF_id] [int] IDENTITY(1,1) NOT NULL,
	[PF_CTO_id] [int] NULL,
	[PF_parcaAd] [varchar](30) NULL,
	[PF_birimFiyat] [money] NULL,
 CONSTRAINT [PK_ParcaFiyatTablosu] PRIMARY KEY CLUSTERED 
(
	[PF_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonelTablosu]    Script Date: 26.3.2015 10:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PersonelTablosu](
	[P_id] [int] IDENTITY(1,1) NOT NULL,
	[P_adiSadi] [varchar](30) NULL,
	[P_cepTel] [varchar](11) NULL,
 CONSTRAINT [PK_PersonelTablosu] PRIMARY KEY CLUSTERED 
(
	[P_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ArizaKayitTablosu] ON 

INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (6, 1, 1, 1, 1, N'123456789123456', 1, CAST(0x0000A3C600000000 AS DateTime), N'Full Kutu', N'Ekran Çatladı')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (7, 7, 4, 10, 0, N'854356786123256', 1, CAST(0x0000A3CB00000000 AS DateTime), N'USB Kablo Eksik', N'Şarj olmuyor')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (8, 3, 15, 2, 0, N'424538984223284', 0, CAST(0x0000A3CB00000000 AS DateTime), NULL, N'Açılmıyor')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (9, 4, 8, 3, 0, N'318417871112173', 1, CAST(0x0000A3CB00000000 AS DateTime), N'Full Kutu', N'Ön Kamera Açılmıyor')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (10, 1, 4, 6, NULL, N'118286562132184', 1, CAST(0x0000A3CE00000000 AS DateTime), N'Kulaklık Eksik', N'Sürekli Hata Mesajı Veriyor')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (11, 2, 1, 14, 1, NULL, 0, CAST(0x0000A3D100000000 AS DateTime), N'Aksesuar Yok', N'Batarya Çabuk Bitiyor')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (12, 8, 2, 10, 1, N'987789654456311', 1, CAST(0x0000A3CE00000000 AS DateTime), N'Full Kutu', N'Görüntü Gelmiyor')
INSERT [dbo].[ArizaKayitTablosu] ([AK_id], [AK_P_id], [AK_M_id], [AK_CTO_id], [AK_kargoMu], [AK_IMEI], [AK_garanti], [AK_gelisTarihi], [AK_aksesuarlar], [AK_sikayet]) VALUES (13, 5, 6, 5, 0, N'421898745681523', 1, CAST(0x0000A3D600000000 AS DateTime), N'Full Kutu', N'Dokunmatik Çalışmıyor')
SET IDENTITY_INSERT [dbo].[ArizaKayitTablosu] OFF
SET IDENTITY_INSERT [dbo].[ArizaSonucTablosu] ON 

INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (4, 6, CAST(0x0000A3C600000000 AS DateTime), 1, N'Ekran Değiştirildi', 1, 4, CAST(0x0000A3C700000000 AS DateTime))
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (5, 7, CAST(0x0000A3CC00000000 AS DateTime), 7, N'Şarj Soketi Değiştirildi', 7, 5, CAST(0x0000A3CD00000000 AS DateTime))
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (6, 8, CAST(0x0000A3CE00000000 AS DateTime), 3, N'MotherBoard Değiştirildi', 3, 7, NULL)
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (7, 9, CAST(0x0000A3CD00000000 AS DateTime), 4, N'Ön Kamera Değiştirildi', 4, 2, CAST(0x0000A3CE00000000 AS DateTime))
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (8, 10, CAST(0x0000A3CF00000000 AS DateTime), 1, N'Sistem Güncellendi', 9, 11, CAST(0x0000A3D000000000 AS DateTime))
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (9, 11, CAST(0x0000A3D200000000 AS DateTime), 2, NULL, 14, 3, CAST(0x0000A3D500000000 AS DateTime))
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (10, 12, CAST(0x0000A3CF00000000 AS DateTime), 8, N'Ekran Değiştirildi', 16, 4, CAST(0x0000A3D400000000 AS DateTime))
INSERT [dbo].[ArizaSonucTablosu] ([AS_id], [AS_AK_id], [AS_onarimTarihi], [AS_P_id], [AS_yapilanIslem], [AS_PF_id], [AS_OF_id], [AS_teslimTarihi]) VALUES (11, 13, CAST(0x0000A3C100000000 AS DateTime), 5, N'Dokunmatik Panel Değiştirildi', 17, 8, NULL)
SET IDENTITY_INSERT [dbo].[ArizaSonucTablosu] OFF
SET IDENTITY_INSERT [dbo].[CepTelOzellikTablosu] ON 

INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (1, N'LG', N'G2-D802TR', N'13 Mp Arka,2.1 Mp Ön Kamera,İşletim Sistemi Android 4.2.2 (Jelly Bean),2.26 GHz 4 çekirdek CPU')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (2, N'Samsung', N'N9006', N'13 Mp Arka ,2.0 Mp Ön Kamera,1.9GHz 4 çekirdek+1.3Ghz 4 çekirdek CPU')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (3, N'HTC', N'Desire 816', N'1,6 GHz''lik 4 çekirdek CPU, 13 Mp Arka ,5 Mp Ön Kamera')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (4, N'HTC', N'One M8', N'Arkada çift HTC UltraPixel 4 megapiksel ve çift LED flaş, önde 5 megapiksel, Full HD video destekli,2 GB RAM')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (5, N'Samsung', N'E-250', N'MP3,SMS,15 MB paylaşımlı hafıza,Kayan Kapak')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (6, N'Sony', N'Xperia Z3', N'Otomatik odak özelliğine sahip 20.7 MP kamera,2.2 MP Ön Kamera,3 GB RAM,128 GB Kart Desteği')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (7, N'Apple', N'IPHONE 5S', N'8MP iSight kamera,Ön Kamera 1.2 MP,Bekleme Süresi 250 Saate Kadar')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (8, N'Casper', N'VIA V8', N'8 çekirdek turbo işlemci,16 MP arka, 8 MP ön kamera, 2 GB Bellek')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (9, N'General Mobile', N'Discovery II', NULL)
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (10, N'Blackberry', N'Q10', N'Süper Amoled ekran,8Mp Kamera,16 GB Bellek')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (11, N'Gigabyte GSmart ', N'GS202', N'5 Mp Arka Kamera,512 MB RAM,1Ghz CPU')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (12, N'Huaweı', N'Ascend Mate ', NULL)
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (13, N'Motorola', N'Motoluxe XT615', N'· 8MP flaşlı kamera,')
INSERT [dbo].[CepTelOzellikTablosu] ([CTO_id], [CTO_marka], [CTO_model], [CTO_ozellik]) VALUES (14, N'LG', N'G3-D855', N'13 Mp Optik Görüntü Sabitleyici ve Otomatik Lazer Odaklanma,2.5 GHz 4 Çekirdekli İşlemci')
SET IDENTITY_INSERT [dbo].[CepTelOzellikTablosu] OFF
SET IDENTITY_INSERT [dbo].[MusteriTablosu] ON 

INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (1, N'Ömür SERDAR', N'41294012458', N'05311319320', N'Konaşlı ', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (2, N'Onurcan YALÇIN', N'20918710648', N'05532847744', N'Şifa', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (3, N'Hayim Uzunyayla', N'33272490486', N'05624469796', N'Konak', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (4, N'Rast Akça', N'22364655765', N'05605027605', NULL, NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (5, N'Cehven Güran', N'18396286263', N'05948753939', N'Karaisalı', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (6, N'Secavend Sefi', N'31951050818', N'05281682893', N'Köyler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (7, N'Tandoruk Kılınç', N'53007681440', N'05087766664', N'Hayrabolu', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (8, N'Rabia Nacar', NULL, N'05412984094', N'Sümer', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (9, N'Usare Alpay', N'82523632797', N'05251570312', N'Köyler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (10, N'Erengül Çoloğlu', N'55682481904', N'05786977538', N'Caferağa', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (11, N'Mirnur Yağmur', N'47829056669', N'05976707877', N'Sağınlı', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (12, N'Alphan Çevik', N'71163703715', N'05204290348', N'İsabeyli', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (13, N'Yediger Merde', N'11945077745', N'05017419521', N'Ulaş', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (14, N'Birim Fidan korkut', N'76586372184', N'05944253048', N'Köyler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (15, N'Namıka Dingiz', N'02614287807', N'05279103914', N'Çardak', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (16, N'Sabri Şener sökmen', N'97608043523', N'05561229216', N'Gedikler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (17, N'Şaire Burul', N'45200860043', N'05648296371', N'Kadıköy', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (18, N'Lebibe Güngören', N'40162219925', N'05147034912', N'Akyurt', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (19, N'Feyzullah Ertürkler', N'74724315201', N'05709138944', N'Çamlıyayla', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (20, N'Yeğin Okuducu', N'73503271326', NULL, N'Mavikent', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (21, N'Hamdullah Üçok', N'03253368987', N'05999382498', N'Çeşme', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (22, N'Ömür Reis', N'99838675543', N'05561748737', N'Rumelihisarı', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (23, N'Mehir Kanat pektaş', N'06394825367', N'05265971232', N'Armutlu', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (24, N'Nevsale Garip', N'67590016154', N'05866626390', N'Arsin', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (25, N'Şura Peker', N'00891412953', N'05628914205', N'Ünye', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (26, N'Dilferah Lokmacı', N'21596954560', N'05493091034', NULL, NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (27, N'İrtiza Turgut arı', NULL, N'05586552407', N'Sumbas', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (28, N'Cumali Güç', N'98328447392', N'05158607620', N'Yenişehir', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (29, N'Özdoruk Menet', N'23650025829', N'05732509510', N'Köyler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (30, N'Nuralp Karkı', N'06633170832', N'05192946133', N'Köyler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (31, N'Nurzen Atıcı', N'39162535977', N'05694784111', N'Köyler', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (32, N'Basri Alemdağ', N'58004831645', N'05242545482', N'Çamoluk', NULL, NULL)
INSERT [dbo].[MusteriTablosu] ([M_id], [M_adiSadi], [M_TCKimlik], [M_cepTel], [M_adres], [M_Il], [M_Ilce]) VALUES (33, N'Dilan Kızılkaya', N'00929263628', N'05673596660', N'Gündoğmuş', NULL, NULL)
SET IDENTITY_INSERT [dbo].[MusteriTablosu] OFF
SET IDENTITY_INSERT [dbo].[OnarımFiyatTablosu] ON 

INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (1, N'Arka Kamera', 100.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (2, N'Ön Kamera', 50.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (3, N'Batarya', 120.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (4, N'Ekran', 70.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (5, N'Şarj Soketi', 45.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (6, N'Kulaklık Soketi', 35.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (7, N'MotherBoard', 150.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (8, N'Dokunmatik Panel', 95.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (9, N'Power Tuşu', 60.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (10, N'Hoparlör', 49.0000)
INSERT [dbo].[OnarımFiyatTablosu] ([OF_id], [OF_iscilik], [OF_ucret]) VALUES (11, N'Sistem Update', NULL)
SET IDENTITY_INSERT [dbo].[OnarımFiyatTablosu] OFF
SET IDENTITY_INSERT [dbo].[ParcaFiyatTablosu] ON 

INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (1, 1, N'Ekran ', 700.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (2, 1, N'Arka Kamera', 300.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (3, 2, N'MotherBoard Değişim', 850.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (4, 3, N'Ön Kamera', 150.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (5, 4, N'Dokunmatik Panel', 450.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (6, 5, N'Ekran', 25.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (7, 10, N'Şarj Soketi', 50.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (8, 7, N'Power Tuşu', 150.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (9, 6, N'Sistem Update', NULL)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (10, 3, N'MotherBoard', 400.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (11, 4, N'Şarj Soketi', 100.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (12, 4, N'Batarya', 200.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (13, 6, N'Power Tuşu', 140.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (14, 14, N'Batarya', 222.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (15, 7, N'Hoparlör', 100.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (16, 10, N'Ekran', 300.0000)
INSERT [dbo].[ParcaFiyatTablosu] ([PF_id], [PF_CTO_id], [PF_parcaAd], [PF_birimFiyat]) VALUES (17, 5, N'Dokunmatik Panel', 150.0000)
SET IDENTITY_INSERT [dbo].[ParcaFiyatTablosu] OFF
SET IDENTITY_INSERT [dbo].[PersonelTablosu] ON 

INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (1, N'Mustafa Erel', N'05315098745')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (2, N'Enes Bakır', N'05545095448')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (3, N'Ömürcan SERDAR', N'05455096102')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (4, N'Ziyaeddin Can öztürk', N'05193627139')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (5, N'Masune Erkut', N'05212319737')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (6, N'Keke Torbcı', N'05298374977')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (7, N'Kutalmış Battal', N'05831616077')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (8, N'Temizöz Büyüköz', N'05406192952')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (9, N'Beykan Çıkar', N'05174999631')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (10, N'Siren Yangırlıgil', N'05129348030')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (11, N'Ertüze Cantürk', N'05948764781')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (12, N'Cankan Akboyraz', N'05513227013')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (13, N'Özok Karaçam', N'05493267149')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (14, N'Bahir Ağcan', N'05979123153')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (15, N'Nurten Sönmez uzun', N'05067025329')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (16, N'Verdi Mandollu', N'05498338966')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (17, N'Dilhan Varol', N'05526314607')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (18, N'Dinç Yılmaz tekin', N'05686455517')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (19, N'Çilay Batar', N'05229289266')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (20, N'Üzüm Körez', N'05105493959')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (21, N'Bağatur Gürer', N'05531792305')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (22, N'Müfahire Sandık', N'05494495671')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (23, N'Nasıh Bakmaz', N'05066916211')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (24, N'Feraset Altınok', N'05876210926')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (25, N'Gülabi Bakırhan', N'05366054381')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (26, N'Fulsen Yalçin', N'05324191783')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (27, N'Hidayet Kalçık', N'05307874578')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (28, N'Yıldır Tarım', N'05929301882')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (29, N'Basiret Atar', N'05934891857')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (30, N'Doğaç Söğüt', N'05825477824')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (31, N'Bozyel Aliş', N'05521250604')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (32, N'Asal Gökbulut', N'05214484492')
INSERT [dbo].[PersonelTablosu] ([P_id], [P_adiSadi], [P_cepTel]) VALUES (33, N'Bitengül Ural', N'05136964099')
SET IDENTITY_INSERT [dbo].[PersonelTablosu] OFF
ALTER TABLE [dbo].[ArizaKayitTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaKayitTablosu_CepTelOzellikTablosu1] FOREIGN KEY([AK_CTO_id])
REFERENCES [dbo].[CepTelOzellikTablosu] ([CTO_id])
GO
ALTER TABLE [dbo].[ArizaKayitTablosu] CHECK CONSTRAINT [FK_ArizaKayitTablosu_CepTelOzellikTablosu1]
GO
ALTER TABLE [dbo].[ArizaKayitTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaKayitTablosu_MusteriTablosu] FOREIGN KEY([AK_M_id])
REFERENCES [dbo].[MusteriTablosu] ([M_id])
GO
ALTER TABLE [dbo].[ArizaKayitTablosu] CHECK CONSTRAINT [FK_ArizaKayitTablosu_MusteriTablosu]
GO
ALTER TABLE [dbo].[ArizaKayitTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaKayitTablosu_PersonelTablosu] FOREIGN KEY([AK_P_id])
REFERENCES [dbo].[PersonelTablosu] ([P_id])
GO
ALTER TABLE [dbo].[ArizaKayitTablosu] CHECK CONSTRAINT [FK_ArizaKayitTablosu_PersonelTablosu]
GO
ALTER TABLE [dbo].[ArizaSonucTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaSonucTablosu_ArizaKayitTablosu] FOREIGN KEY([AS_AK_id])
REFERENCES [dbo].[ArizaKayitTablosu] ([AK_id])
GO
ALTER TABLE [dbo].[ArizaSonucTablosu] CHECK CONSTRAINT [FK_ArizaSonucTablosu_ArizaKayitTablosu]
GO
ALTER TABLE [dbo].[ArizaSonucTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaSonucTablosu_OnarımFiyatTablosu] FOREIGN KEY([AS_OF_id])
REFERENCES [dbo].[OnarımFiyatTablosu] ([OF_id])
GO
ALTER TABLE [dbo].[ArizaSonucTablosu] CHECK CONSTRAINT [FK_ArizaSonucTablosu_OnarımFiyatTablosu]
GO
ALTER TABLE [dbo].[ArizaSonucTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaSonucTablosu_ParcaFiyatTablosu] FOREIGN KEY([AS_PF_id])
REFERENCES [dbo].[ParcaFiyatTablosu] ([PF_id])
GO
ALTER TABLE [dbo].[ArizaSonucTablosu] CHECK CONSTRAINT [FK_ArizaSonucTablosu_ParcaFiyatTablosu]
GO
ALTER TABLE [dbo].[ArizaSonucTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ArizaSonucTablosu_PersonelTablosu] FOREIGN KEY([AS_P_id])
REFERENCES [dbo].[PersonelTablosu] ([P_id])
GO
ALTER TABLE [dbo].[ArizaSonucTablosu] CHECK CONSTRAINT [FK_ArizaSonucTablosu_PersonelTablosu]
GO
ALTER TABLE [dbo].[ParcaFiyatTablosu]  WITH CHECK ADD  CONSTRAINT [FK_ParcaFiyatTablosu_CepTelOzellikTablosu] FOREIGN KEY([PF_CTO_id])
REFERENCES [dbo].[CepTelOzellikTablosu] ([CTO_id])
GO
ALTER TABLE [dbo].[ParcaFiyatTablosu] CHECK CONSTRAINT [FK_ParcaFiyatTablosu_CepTelOzellikTablosu]
GO
USE [master]
GO
ALTER DATABASE [I:\VERITABANı12\CEPTEL_ONARIM.MDF] SET  READ_WRITE 
GO
