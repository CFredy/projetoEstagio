USE [master]
GO
/****** Object:  Database [TesteEstagio]    Script Date: 13/03/2018 04:20:18 ******/
CREATE DATABASE [TesteEstagio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TesteEstagio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TesteEstagio.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TesteEstagio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TesteEstagio_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TesteEstagio] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TesteEstagio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TesteEstagio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TesteEstagio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TesteEstagio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TesteEstagio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TesteEstagio] SET ARITHABORT OFF 
GO
ALTER DATABASE [TesteEstagio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TesteEstagio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TesteEstagio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TesteEstagio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TesteEstagio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TesteEstagio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TesteEstagio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TesteEstagio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TesteEstagio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TesteEstagio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TesteEstagio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TesteEstagio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TesteEstagio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TesteEstagio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TesteEstagio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TesteEstagio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TesteEstagio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TesteEstagio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TesteEstagio] SET  MULTI_USER 
GO
ALTER DATABASE [TesteEstagio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TesteEstagio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TesteEstagio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TesteEstagio] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TesteEstagio] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TesteEstagio]
GO
/****** Object:  Table [dbo].[Tarefas]    Script Date: 13/03/2018 04:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarefas](
	[TarefaId] [int] IDENTITY(1,1) NOT NULL,
	[Tarefa] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_Tarefas] PRIMARY KEY CLUSTERED 
(
	[TarefaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tarefas] ON 

INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (1, N'Comer', N'Pronto')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (2, N'Cochilar', N'Pronto')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (3, N'Dançar', N'Em Andamento')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (4, N'Deitar', N'Em andamento')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (18, N'vsdfvdsfvsdf', N'vfdsvvvsdfv')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (19, N'Dormir', N'Em andamento')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (20, N'fdvdfvdf', N'vdfvdfvdf')
INSERT [dbo].[Tarefas] ([TarefaId], [Tarefa], [Status]) VALUES (21, N'Teste', N'Em andamento')
SET IDENTITY_INSERT [dbo].[Tarefas] OFF
USE [master]
GO
ALTER DATABASE [TesteEstagio] SET  READ_WRITE 
GO
