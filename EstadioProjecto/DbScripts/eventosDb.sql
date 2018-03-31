USE [master]
GO
/****** Object:  Database [stadium_table]    Script Date: 30/3/2018 7:07:44 p. m. ******/
CREATE DATABASE [stadium_table] ON  PRIMARY 
( NAME = N'stadium_table', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\stadium_table.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'stadium_table_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\stadium_table_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [stadium_table] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [stadium_table].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [stadium_table] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [stadium_table] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [stadium_table] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [stadium_table] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [stadium_table] SET ARITHABORT OFF 
GO
ALTER DATABASE [stadium_table] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [stadium_table] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [stadium_table] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [stadium_table] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [stadium_table] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [stadium_table] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [stadium_table] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [stadium_table] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [stadium_table] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [stadium_table] SET  DISABLE_BROKER 
GO
ALTER DATABASE [stadium_table] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [stadium_table] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [stadium_table] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [stadium_table] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [stadium_table] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [stadium_table] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [stadium_table] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [stadium_table] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [stadium_table] SET  MULTI_USER 
GO
ALTER DATABASE [stadium_table] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [stadium_table] SET DB_CHAINING OFF 
GO
USE [stadium_table]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 30/3/2018 7:07:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_usuario] [varchar](30) NOT NULL,
	[rol] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
	[apellido_paterno] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[usario] [varchar](50) NULL,
	[contrasena] [varbinary](250) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entrada]    Script Date: 30/3/2018 7:07:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entrada](
	[id_entrada] [int] NOT NULL,
	[zona] [varchar](50) NULL,
	[evento] [int] NULL,
	[cantEntrada] [int] NULL,
 CONSTRAINT [PK_entrada] PRIMARY KEY CLUSTERED 
(
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evento]    Script Date: 30/3/2018 7:07:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evento](
	[id_evento] [int] IDENTITY(1,1) NOT NULL,
	[actor] [varchar](50) NULL,
	[monto] [varchar](50) NULL,
	[horario] [varchar](50) NULL,
	[cliente] [varchar](30) NULL,
	[nombre_evento] [varchar](50) NULL,
	[descripcion] [varchar](500) NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[id_evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[graderia]    Script Date: 30/3/2018 7:07:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[graderia](
	[id_graderia] [int] NOT NULL,
	[estado] [bit] NULL,
	[seccion] [varchar](50) NULL,
	[monto] [varchar](50) NULL,
	[entrada] [int] NULL,
 CONSTRAINT [PK_graderia] PRIMARY KEY CLUSTERED 
(
	[id_graderia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cliente] ([id_usuario], [rol], [nombre], [apellido_materno], [apellido_paterno], [direccion], [correo], [telefono], [usario], [contrasena]) VALUES (N'116820633', N'admin', N'David', N'Salas', N'Barrantes', N'San jose', N'salasbar97@gmail.com', N'85156717', N'dsalas', 0x0100ECCEE19BA37DBCD46C019F1782A6FC32194FCC946A13656A)
SET IDENTITY_INSERT [dbo].[evento] ON 

INSERT [dbo].[evento] ([id_evento], [actor], [monto], [horario], [cliente], [nombre_evento], [descripcion]) VALUES (2, N'Adrian Granados', N'25000', N'Lunes 8:00 am- 10:00 pm', N'116820633', NULL, NULL)
INSERT [dbo].[evento] ([id_evento], [actor], [monto], [horario], [cliente], [nombre_evento], [descripcion]) VALUES (3, N'Adrian Morales', N'25000', N'Lunes 8:00 am- 10:00 pm', N'116820633', N'Concierto De CNCO', N'Concierto Relaizado en parque Viva')
SET IDENTITY_INSERT [dbo].[evento] OFF
ALTER TABLE [dbo].[entrada]  WITH CHECK ADD  CONSTRAINT [FK_entrada_event] FOREIGN KEY([evento])
REFERENCES [dbo].[evento] ([id_evento])
GO
ALTER TABLE [dbo].[entrada] CHECK CONSTRAINT [FK_entrada_event]
GO
ALTER TABLE [dbo].[evento]  WITH CHECK ADD  CONSTRAINT [FK_evento_cliente] FOREIGN KEY([cliente])
REFERENCES [dbo].[cliente] ([id_usuario])
GO
ALTER TABLE [dbo].[evento] CHECK CONSTRAINT [FK_evento_cliente]
GO
ALTER TABLE [dbo].[graderia]  WITH CHECK ADD  CONSTRAINT [FK_graderia_entrada] FOREIGN KEY([entrada])
REFERENCES [dbo].[entrada] ([id_entrada])
GO
ALTER TABLE [dbo].[graderia] CHECK CONSTRAINT [FK_graderia_entrada]
GO
USE [master]
GO
ALTER DATABASE [stadium_table] SET  READ_WRITE 
GO
