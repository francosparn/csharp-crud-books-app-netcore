USE [master]
GO
/****** Object:  Database [BooksDB]    Script Date: 13/03/2022 18:42:14 ******/
CREATE DATABASE [BooksDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BooksDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BooksDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BooksDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BooksDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BooksDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BooksDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BooksDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BooksDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BooksDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BooksDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BooksDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BooksDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BooksDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BooksDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BooksDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BooksDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BooksDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BooksDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BooksDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BooksDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BooksDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BooksDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BooksDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BooksDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BooksDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BooksDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BooksDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BooksDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BooksDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BooksDB] SET  MULTI_USER 
GO
ALTER DATABASE [BooksDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BooksDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BooksDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BooksDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BooksDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BooksDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BooksDB] SET QUERY_STORE = OFF
GO
USE [BooksDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/03/2022 18:42:14 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 13/03/2022 18:42:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[Pages] [int] NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BooksDB] SET  READ_WRITE 
GO
