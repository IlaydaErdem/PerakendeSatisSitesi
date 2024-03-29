USE [master]
GO
/****** Object:  Database [29KasimProje_PerakendeSatisYonetimi]    Script Date: 9.01.2023 11:25:06 ******/
CREATE DATABASE [29KasimProje_PerakendeSatisYonetimi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'29KasimProje_PerakendeSatisYonetimi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\29KasimProje_PerakendeSatisYonetimi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'29KasimProje_PerakendeSatisYonetimi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\29KasimProje_PerakendeSatisYonetimi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [29KasimProje_PerakendeSatisYonetimi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ARITHABORT OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET  MULTI_USER 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET QUERY_STORE = OFF
GO
USE [29KasimProje_PerakendeSatisYonetimi]
GO
/****** Object:  Table [dbo].[Faturalar]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faturalar](
	[FaturaNo] [int] IDENTITY(1,1) NOT NULL,
	[MusteriNo] [int] NULL,
	[FaturaTarih] [varchar](50) NULL,
 CONSTRAINT [PK_Faturalar] PRIMARY KEY CLUSTERED 
(
	[FaturaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriNo] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [varchar](50) NULL,
	[UrunNo] [int] NULL,
	[KategoriAciklama] [varchar](50) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriNo] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAdSoyad] [varchar](50) NULL,
	[MusteriTelefon] [varchar](50) NULL,
	[MusteriMail] [varchar](50) NOT NULL,
	[MusteriAdres] [varchar](50) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunFatura]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunFatura](
	[UrnFtrNo] [int] IDENTITY(1,1) NOT NULL,
	[FaturaNo] [int] NULL,
	[UrunNo] [int] NULL,
	[Tutar] [int] NULL,
 CONSTRAINT [PK_UrunFatura] PRIMARY KEY CLUSTERED 
(
	[UrnFtrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunNo] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [varchar](50) NULL,
	[UrunAciklama] [varchar](100) NULL,
	[UrunFiyat] [int] NULL,
	[Stok] [int] NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userMaster]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userMaster](
	[Uid1] [int] IDENTITY(1,1) NOT NULL,
	[Name1] [varchar](50) NULL,
	[UserId] [varchar](50) NULL,
	[Password1] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[Role] [int] NULL,
	[createdon] [datetime] NULL,
 CONSTRAINT [PK_userMaster] PRIMARY KEY CLUSTERED 
(
	[Uid1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriNo], [MusteriAdSoyad], [MusteriTelefon], [MusteriMail], [MusteriAdres]) VALUES (1, N'İrem Atlı', N'05062345164', N'iatli@gmail.com', N'İstanbul')
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunNo], [UrunAdi], [UrunAciklama], [UrunFiyat], [Stok]) VALUES (1, N'Kalem', N'Tükenmez Kalem', 25, 6)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
SET IDENTITY_INSERT [dbo].[userMaster] ON 

INSERT [dbo].[userMaster] ([Uid1], [Name1], [UserId], [Password1], [isActive], [Role], [createdon]) VALUES (1, N'Admin', N'Admin', N'1234', 1, 1, NULL)
INSERT [dbo].[userMaster] ([Uid1], [Name1], [UserId], [Password1], [isActive], [Role], [createdon]) VALUES (2, N'ilayda', N'ilayda', N'12345', 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[userMaster] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Mail]    Script Date: 9.01.2023 11:25:07 ******/
ALTER TABLE [dbo].[Musteriler] ADD  CONSTRAINT [IX_Mail] UNIQUE NONCLUSTERED 
(
	[MusteriMail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Faturalar]  WITH CHECK ADD  CONSTRAINT [FK_Faturalar_Musteriler] FOREIGN KEY([MusteriNo])
REFERENCES [dbo].[Musteriler] ([MusteriNo])
GO
ALTER TABLE [dbo].[Faturalar] CHECK CONSTRAINT [FK_Faturalar_Musteriler]
GO
ALTER TABLE [dbo].[Kategoriler]  WITH CHECK ADD  CONSTRAINT [FK_Kategoriler_Urunler] FOREIGN KEY([UrunNo])
REFERENCES [dbo].[Urunler] ([UrunNo])
GO
ALTER TABLE [dbo].[Kategoriler] CHECK CONSTRAINT [FK_Kategoriler_Urunler]
GO
ALTER TABLE [dbo].[UrunFatura]  WITH CHECK ADD  CONSTRAINT [FK_UrunFatura_Faturalar] FOREIGN KEY([FaturaNo])
REFERENCES [dbo].[Faturalar] ([FaturaNo])
GO
ALTER TABLE [dbo].[UrunFatura] CHECK CONSTRAINT [FK_UrunFatura_Faturalar]
GO
ALTER TABLE [dbo].[UrunFatura]  WITH CHECK ADD  CONSTRAINT [FK_UrunFatura_Urunler] FOREIGN KEY([UrunNo])
REFERENCES [dbo].[Urunler] ([UrunNo])
GO
ALTER TABLE [dbo].[UrunFatura] CHECK CONSTRAINT [FK_UrunFatura_Urunler]
GO
ALTER TABLE [dbo].[UrunFatura]  WITH CHECK ADD  CONSTRAINT [CK_Tutar] CHECK  (([Tutar]>(0)))
GO
ALTER TABLE [dbo].[UrunFatura] CHECK CONSTRAINT [CK_Tutar]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [CK_Urunler] CHECK  (([Stok]>=(0)))
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [CK_Urunler]
GO
/****** Object:  StoredProcedure [dbo].[FaturaEY]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FaturaEY]
@FaturaNo int,
@MusteriNo int,
@FaturaTarihi varchar(50)
as begin
IF @FaturaNo=0
insert into Faturalar(MusteriNo,FaturaTarih) values(@MusteriNo,@FaturaTarihi)
else
update Faturalar set MusteriNo=@MusteriNo,FaturaTarih=@FaturaTarihi where FaturaNo=@FaturaNo
end
GO
/****** Object:  StoredProcedure [dbo].[FaturaListele]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FaturaListele]
as begin
select * from Faturalar
end
GO
/****** Object:  StoredProcedure [dbo].[FaturaSil]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FaturaSil]
@FaturaNo int
as begin
delete from Faturalar where FaturaNo=@FaturaNo
end
GO
/****** Object:  StoredProcedure [dbo].[FaturaSirala]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FaturaSirala]
@FaturaNo int
as begin
select * from Faturalar where FaturaNo=@FaturaNo
end
GO
/****** Object:  StoredProcedure [dbo].[KategoriEY]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KategoriEY]
@KategoriNo int,
@KategoriAdi varchar(50),
@UrunNo int,
@KategoriAciklama varchar(50)
as begin
If @KategoriNo=0
insert into Kategoriler(KategoriAdi,UrunNo,KategoriAciklama) values(@KategoriAdi,@UrunNo,@KategoriAciklama)
else
update Kategoriler set KategoriAdi=@KategoriAdi,UrunNo=@UrunNo,KategoriAciklama=@KategoriAciklama where KategoriNo=@KategoriNo
end
GO
/****** Object:  StoredProcedure [dbo].[KategoriListele]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[KategoriListele]
as begin
select * from Kategoriler
end
GO
/****** Object:  StoredProcedure [dbo].[KategoriSil]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KategoriSil]
@KategoriNo int
as begin
delete from Kategoriler where KategoriNo=@KategoriNo
end
GO
/****** Object:  StoredProcedure [dbo].[KategoriSirala]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[KategoriSirala]
@KategoriNo int
as begin
select * from Kategoriler where KategoriNo=@KategoriNo
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriEY]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MusteriEY]
@MusteriNo int,
@MusteriAdSoyad varchar(50),
@MusteriTelefon varchar(50),
@MusteriMail varchar(50),
@MusteriAdres varchar(50)
as begin
If @MusteriNo=0
insert into Musteriler(MusteriAdSoyad,MusteriTelefon,MusteriMail,MusteriAdres) values(@MusteriAdSoyad,@MusteriTelefon,@MusteriMail,@MusteriAdres)
else
update Musteriler set MusteriAdSoyad=@MusteriAdSoyad,MusteriTelefon=@MusteriTelefon,MusteriMail=@MusteriMail,MusteriAdres=@MusteriAdres where MusteriNo=@MusteriNo
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriListele]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MusteriListele]
as begin
select * from Musteriler
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriSil]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MusteriSil]
@MusteriNo int
as begin
delete from Musteriler where MusteriNo=@MusteriNo
end
GO
/****** Object:  StoredProcedure [dbo].[MusteriSirala]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MusteriSirala]
@MusteriNo int
as begin
select * from Musteriler where MusteriNo=@MusteriNo
end
GO
/****** Object:  StoredProcedure [dbo].[UrunEY]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunEY]
@UrunNo int,
@UrunAdi varchar(50),
@UrunAciklama varchar(100),
@UrunFiyat int,
@Stok int
as begin
If @UrunNo=0
insert into Urunler(UrunAdi,UrunAciklama,UrunFiyat,Stok)
values(@UrunAdi,@UrunAciklama,@UrunFiyat,@Stok)
else
Update Urunler set UrunAdi=@UrunAdi,UrunAciklama=@UrunAciklama,UrunFiyat=@UrunFiyat,Stok=@Stok where UrunNo=@UrunNo
end
GO
/****** Object:  StoredProcedure [dbo].[UrunFaturaEY]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunFaturaEY]
@UrnFtrNo int,
@FaturaNo int,
@UrunNo int,
@Tutar int
as begin
IF @UrnFtrNo=0
insert into UrunFatura(FaturaNo,UrunNo,Tutar) values(@FaturaNo,@UrunNo,@Tutar)
else
update UrunFatura set FaturaNo=@FaturaNo,UrunNo=@UrunNo,Tutar=@Tutar where UrnFtrNo=@UrnFtrNo
end
GO
/****** Object:  StoredProcedure [dbo].[UrunFaturaListele]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunFaturaListele]
as begin
select * from UrunFatura
end
GO
/****** Object:  StoredProcedure [dbo].[UrunFaturaSil]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunFaturaSil]
@UrnFtrNo int
as begin
delete from UrunFatura where UrnFtrNo=@UrnFtrNo
end
GO
/****** Object:  StoredProcedure [dbo].[UrunFaturaSirala]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunFaturaSirala]
@UrnFtrNo int
as begin
select * from UrunFatura where UrnFtrNo=@UrnFtrNo
end
GO
/****** Object:  StoredProcedure [dbo].[UrunListele]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunListele]
as begin
select * from Urunler
end
GO
/****** Object:  StoredProcedure [dbo].[UrunSil]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunSil]
@UrunNo int
as begin
delete from Urunler where UrunNo=@UrunNo
end
GO
/****** Object:  StoredProcedure [dbo].[UrunSirala]    Script Date: 9.01.2023 11:25:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunSirala]
@UrunNo int
as begin
select * from Urunler where UrunNo=@UrunNo
end
GO
USE [master]
GO
ALTER DATABASE [29KasimProje_PerakendeSatisYonetimi] SET  READ_WRITE 
GO
