USE [master]
GO
/****** Object:  Database [ecommerce-app-db]    Script Date: 22.12.2023 г. 21:47:30 ******/
CREATE DATABASE [ecommerce-app-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ecommerce-app-db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ecommerce-app-db.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ecommerce-app-db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ecommerce-app-db_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ecommerce-app-db] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ecommerce-app-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ARITHABORT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ecommerce-app-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ecommerce-app-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ecommerce-app-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ecommerce-app-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ecommerce-app-db] SET  MULTI_USER 
GO
ALTER DATABASE [ecommerce-app-db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ecommerce-app-db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ecommerce-app-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ecommerce-app-db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ecommerce-app-db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ecommerce-app-db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22.12.2023 г. 21:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 22.12.2023 г. 21:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePictureURL] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors_Movies]    Script Date: 22.12.2023 г. 21:47:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors_Movies](
	[MovieId] [int] NOT NULL,
	[ActorId] [int] NOT NULL,
 CONSTRAINT [PK_Actors_Movies] PRIMARY KEY CLUSTERED 
(
	[ActorId] ASC,
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinemas]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinemas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cinemas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[MovieCategory] [int] NOT NULL,
	[CinemaId] [int] NOT NULL,
	[ProducerId] [int] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[MovieId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePictureURL] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 22.12.2023 г. 21:47:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[Amount] [int] NOT NULL,
	[ShoppingCartId] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231028113851_Initial', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110083640_Order_And_OrderItem_Added', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110084505_ShoppingCartItems_Added', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231110165625_Identity_Added', N'5.0.0')
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 

INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (1, N'http://dotnethow.net/images/actors/actor-5.jpeg', N'Actor 5', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (2, N'http://dotnethow.net/images/actors/actor-4.jpeg', N'Actor 4', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (3, N'http://dotnethow.net/images/actors/actor-3.jpeg', N'Actor 3', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (4, N'http://dotnethow.net/images/actors/actor-2.jpeg', N'Actor 2', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (5, N'http://dotnethow.net/images/actors/actor-1.jpeg', N'Actor 1', N'This is the Bio of the first actor')
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (1, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (1, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (2, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (2, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (3, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (3, 2)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (3, 5)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (4, 2)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (4, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (4, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 2)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 5)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (6, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (6, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (6, 5)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (7, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (7, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (7, 5)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (8, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (8, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (8, 5)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0d6ea757-d8ea-40b4-b93b-1bed9eec49ad', N'User', N'USER', N'f5997956-4a19-4b43-89fc-77b09dff9b81')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8295d9c5-73d3-406d-9716-93b8a02b8af2', N'Admin', N'ADMIN', N'8b0a6178-145a-4954-bf61-417722a5ab0f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'19699b52-efdc-4805-9434-8183094172b9', N'0d6ea757-d8ea-40b4-b93b-1bed9eec49ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2cfa137a-928b-4ce1-a683-e6beb1e7ea75', N'0d6ea757-d8ea-40b4-b93b-1bed9eec49ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d14f7e2-e9c6-4cc1-8f8e-4506ce3165cd', N'0d6ea757-d8ea-40b4-b93b-1bed9eec49ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7d4ee52c-af81-469f-99a7-de7a4243ece8', N'8295d9c5-73d3-406d-9716-93b8a02b8af2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'19699b52-efdc-4805-9434-8183094172b9', N'Application User', N'app-user', N'APP-USER', N'user@etickets.com', N'USER@ETICKETS.COM', 1, N'AQAAAAEAACcQAAAAEEpkQPvmgGh+F6TEa6/muM/H2ET8q/An2Zn0LfoH6NOpUQnatSI8pYXDNIXPnCS55Q==', N'375C6NIY7PTJ3PH7VFXXEAHWJBQQ5GQZ', N'ad5531eb-34cc-4f67-a7aa-3c4de31003d4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2cfa137a-928b-4ce1-a683-e6beb1e7ea75', N'Ivan Petrovski', N'ivanpetrovski@etickets.com', N'IVANPETROVSKI@ETICKETS.COM', N'ivanpetrovski@etickets.com', N'IVANPETROVSKI@ETICKETS.COM', 0, N'AQAAAAEAACcQAAAAEBJZkm2T4MBwovGrzf+Uu3pqQlAowvXMWU8y/Wwpd9skbtxgEpIMEGCXrXXep7WCpg==', N'VVLTYWHHGLALORMUVHZ6VL7M75BTULPR', N'2a40e18c-1618-4264-8c9a-50aa690e10ce', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d14f7e2-e9c6-4cc1-8f8e-4506ce3165cd', N'Vania Vaneva', N'vania@etickets.com', N'VANIA@ETICKETS.COM', N'vania@etickets.com', N'VANIA@ETICKETS.COM', 0, N'AQAAAAEAACcQAAAAEMK6YT4T3LjtGf46AgPFrS22TH2D+ckisgaShQrACBGHVPK75B4+oYkt6X8iXDs4Cg==', N'O3Y4L3AHOSJT2CH46KTZF73ILB64KQAB', N'a1f45e43-484e-40f1-b396-c51cc10ee4ec', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7d4ee52c-af81-469f-99a7-de7a4243ece8', N'Admin User', N'admin-user', N'ADMIN-USER', N'admin@etickets.com', N'ADMIN@ETICKETS.COM', 1, N'AQAAAAEAACcQAAAAEIQWFrZPdLq7DI7VV140vH3uaCl8cMtcxYqUg9J0ZkgG5dY/dOgKqnepojk6RCC4/Q==', N'XAKLS4A4GHN5PIQ276VT5L2PA3OR7JLD', N'4ee9ccdc-b892-4c9c-a114-46da770eac7d', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Cinemas] ON 

INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (1, N'http://dotnethow.net/images/cinemas/cinema-1.jpeg', N'Cinema 1', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (2, N'http://dotnethow.net/images/cinemas/cinema-2.jpeg', N'Cinema 2', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (3, N'http://dotnethow.net/images/cinemas/cinema-3.jpeg', N'Cinema 3', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (4, N'http://dotnethow.net/images/cinemas/cinema-4.jpeg', N'Cinema 4', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (5, N'http://dotnethow.net/images/cinemas/cinema-5.jpeg', N'Cinema 5', N'This is the description of the first cinema')
SET IDENTITY_INSERT [dbo].[Cinemas] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (1, N'Scoob', N'This is the Scoob movie description', 39.5, N'http://dotnethow.net/images/movies/movie-7.jpeg', CAST(N'2023-10-18T15:05:30.1187957' AS DateTime2), CAST(N'2023-10-26T15:05:30.1187959' AS DateTime2), 5, 1, 3)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (2, N'Race', N'This is the Race movie description', 39.5, N'http://dotnethow.net/images/movies/movie-6.jpeg', CAST(N'2024-12-18T15:05:30.0000000' AS DateTime2), CAST(N'2024-10-23T15:05:30.0000000' AS DateTime2), 4, 1, 2)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (3, N'Ghost', N'This is the Ghost movie description', 39.5, N'http://dotnethow.net/images/movies/movie-4.jpeg', CAST(N'2024-11-28T15:05:30.0000000' AS DateTime2), CAST(N'2024-11-04T15:05:30.0000000' AS DateTime2), 6, 4, 4)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (4, N'The Shawshank Redemption', N'This is the Shawshank Redemption description', 29.5, N'http://dotnethow.net/images/movies/movie-1.jpeg', CAST(N'2023-09-28T15:05:30.0000000' AS DateTime2), CAST(N'2024-10-31T15:05:30.0000000' AS DateTime2), 1, 1, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (5, N'Life', N'This is the Life movie description', 39.5, N'http://dotnethow.net/images/movies/movie-3.jpeg', CAST(N'2023-08-18T15:05:30.0000000' AS DateTime2), CAST(N'2024-11-07T15:05:30.0000000' AS DateTime2), 4, 3, 3)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (6, N'Cold Soles', N'This is the Cold Soles movie description', 39.5, N'http://dotnethow.net/images/movies/movie-8.jpeg', CAST(N'2023-10-31T15:05:30.1187966' AS DateTime2), CAST(N'2023-11-17T15:05:30.1187977' AS DateTime2), 3, 1, 5)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (7, N'Toy Story 3', N'This is the Toy Story 3 description', 14, N'http://dotnethow.net/images/movies/movie-9.jpeg', CAST(N'2023-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-10T00:00:00.0000000' AS DateTime2), 5, 3, 2)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (8, N'Public Enemies', N'This is the Public Enemies description', 35, N'http://dotnethow.net/images/movies/movie-10.jpeg', CAST(N'2023-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-21T00:00:00.0000000' AS DateTime2), 6, 2, 4)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([id], [Amount], [Price], [MovieId], [OrderId]) VALUES (6, 2, 39.5, 1, 4)
INSERT [dbo].[OrderItems] ([id], [Amount], [Price], [MovieId], [OrderId]) VALUES (7, 2, 39.5, 2, 5)
INSERT [dbo].[OrderItems] ([id], [Amount], [Price], [MovieId], [OrderId]) VALUES (8, 1, 39.5, 1, 5)
INSERT [dbo].[OrderItems] ([id], [Amount], [Price], [MovieId], [OrderId]) VALUES (9, 1, 39.5, 5, 5)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Email], [UserId]) VALUES (4, N'vania@etickets.com', N'3d14f7e2-e9c6-4cc1-8f8e-4506ce3165cd')
INSERT [dbo].[Orders] ([Id], [Email], [UserId]) VALUES (5, N'ivanpetrovski@etickets.com', N'2cfa137a-928b-4ce1-a683-e6beb1e7ea75')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (1, N'http://dotnethow.net/images/producers/producer-5.jpeg', N'Producer 5', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (2, N'http://dotnethow.net/images/producers/producer-4.jpeg', N'Producer 4', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (3, N'http://dotnethow.net/images/producers/producer-3.jpeg', N'Producer 3', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (4, N'http://dotnethow.net/images/producers/producer-2.jpeg', N'Producer 2', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (5, N'http://dotnethow.net/images/producers/producer-1.jpeg', N'Producer 1', N'This is the Bio of the first actor')
SET IDENTITY_INSERT [dbo].[Producers] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] ON 

INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (1, 1, 5, N'24273819-e164-4899-b890-7804fba83fe6')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (2, 2, 1, N'24273819-e164-4899-b890-7804fba83fe6')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (4, 2, 2, N'850f6d9b-1a06-4dfc-9ce7-6a70c17ed114')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (5, 3, 1, N'850f6d9b-1a06-4dfc-9ce7-6a70c17ed114')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (6, 1, 2, N'398077fb-438f-49a0-b373-17d09061e113')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (7, 3, 1, N'398077fb-438f-49a0-b373-17d09061e113')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (12, 1, 1, N'66febe14-e4b3-4112-bb20-3f8fc97478b4')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (13, 2, 1, N'cc74e4c2-8168-485b-98a8-70a8fa7b9308')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (14, 2, 2, N'f99a0b46-fe7d-4538-8190-1600c3532627')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (17, 2, 2, N'dcc86647-7ed9-48eb-929c-b0deaf8031a4')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (18, 3, 2, N'dcc86647-7ed9-48eb-929c-b0deaf8031a4')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (22, 2, 1, N'925bbf25-7a2c-4955-9506-754f2bc0b5d4')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (23, 2, 1, N'9b25336b-3ed0-4c56-8e48-24c171437c77')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (25, 2, 2, N'aa76a5e1-fb5e-4095-99ec-8916600c43b2')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (27, 3, 2, N'0397be20-c014-466b-9d2b-affc9737d70f')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (28, 2, 1, N'be7dde4d-4268-458c-b090-5f66bb74e4f8')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (31, 2, 1, N'e44fa392-2c3f-4a53-a908-dd1c1b3011f8')
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] OFF
GO
/****** Object:  Index [IX_Actors_Movies_MovieId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_Actors_Movies_MovieId] ON [dbo].[Actors_Movies]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_CinemaId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_Movies_CinemaId] ON [dbo].[Movies]
(
	[CinemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Movies_ProducerId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_Movies_ProducerId] ON [dbo].[Movies]
(
	[ProducerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_MovieId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_MovieId] ON [dbo].[OrderItems]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartItems_MovieId]    Script Date: 22.12.2023 г. 21:47:32 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartItems_MovieId] ON [dbo].[ShoppingCartItems]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actors] ADD  DEFAULT (N'') FOR [ProfilePictureURL]
GO
ALTER TABLE [dbo].[Actors] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Actors] ADD  DEFAULT (N'') FOR [Bio]
GO
ALTER TABLE [dbo].[Cinemas] ADD  DEFAULT (N'') FOR [Logo]
GO
ALTER TABLE [dbo].[Cinemas] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Cinemas] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Producers] ADD  DEFAULT (N'') FOR [ProfilePictureURL]
GO
ALTER TABLE [dbo].[Producers] ADD  DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Producers] ADD  DEFAULT (N'') FOR [Bio]
GO
ALTER TABLE [dbo].[Actors_Movies]  WITH CHECK ADD  CONSTRAINT [FK_Actors_Movies_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actors_Movies] CHECK CONSTRAINT [FK_Actors_Movies_Actors_ActorId]
GO
ALTER TABLE [dbo].[Actors_Movies]  WITH CHECK ADD  CONSTRAINT [FK_Actors_Movies_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actors_Movies] CHECK CONSTRAINT [FK_Actors_Movies_Movies_MovieId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Cinemas_CinemaId] FOREIGN KEY([CinemaId])
REFERENCES [dbo].[Cinemas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Cinemas_CinemaId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Producers_ProducerId] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Producers_ProducerId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Movies_MovieId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_Movies_MovieId]
GO
USE [master]
GO
ALTER DATABASE [ecommerce-app-db] SET  READ_WRITE 
GO
