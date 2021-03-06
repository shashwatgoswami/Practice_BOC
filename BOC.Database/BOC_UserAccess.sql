USE [master]
GO
/****** Object:  Database [BOC_UserAccess]    Script Date: 3/1/2018 1:59:01 AM ******/
CREATE DATABASE [BOC_UserAccess]
GO

USE [BOC_UserAccess]
GO

/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](500) NULL,
	[FirstName] [nvarchar](1000) NULL,
	[LastName] [nvarchar](1000) NULL,
	[Email] [nvarchar](1000) NULL,
	[Designation] [int] NULL,
	[EmployeeType] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USER_CREDENTIALS]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_CREDENTIALS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](1000) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_USERNAME] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TASK]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TASK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [varchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUB_TASK]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUB_TASK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskId] [int] NULL,
	[PermissionType] [varchar](1) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLES](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROLE_SUB_TASK]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE_SUB_TASK](
	[RoleId] [int] NOT NULL,
	[SubTaskId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[SubTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEE_ROLE]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE_ROLE](
	[EmployeeId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MENU_ITEM]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU_ITEM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Taskid] [int] NULL,
	[Name] [nvarchar](1000) NULL,
	[Command] [nvarchar](1000) NULL,
	[Level] [int] NULL,
	[Text] [nvarchar](4000) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](1000) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[fnGetUserContext]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGetUserContext](@username varchar(500))
RETURNS TABLE
AS
RETURN(
	SELECT EMP.FirstName,EMP.LastName,EMP.UserId AS USER_ID, RO.Id AS ROLE_ID, RO.Name AS RoleName, STASK.PermissionType, TAS.Id AS TASK_ID, TAS.TaskName, MI.Command, MI.Level, MI.Name FROM USER_CREDENTIALS UC
	INNER JOIN EMPLOYEE EMP ON UC.Id = EMP.UserId
	INNER JOIN EMPLOYEE_ROLE EROLE ON EROLE.EmployeeId = EMP.Id
	INNER JOIN ROLES RO ON EROLE.RoleId = RO.Id
	INNER JOIN ROLE_SUB_TASK ROLE_SUB ON RO.Id = ROLE_SUB.RoleId
	INNER JOIN SUB_TASK STASK ON STASK.Id = ROLE_SUB.SubTaskId
	INNER JOIN TASK TAS ON STASK.TaskId = TAS.Id
	INNER JOIN MENU_ITEM MI ON MI.Taskid = TAS.Id
	WHERE UC.Username = @username
)

GO
/****** Object:  Table [dbo].[EMPLOYEE_DESIGNATION]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE_DESIGNATION](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEE_TYPE]    Script Date: 3/1/2018 1:59:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE_TYPE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[EMPLOYEE] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EMPLOYEE_ROLE] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MENU_ITEM] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ROLE_SUB_TASK] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ROLES] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SUB_TASK] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TASK] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[USER_CREDENTIALS] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
USE [master]
GO
ALTER DATABASE [BOC_UserAccess] SET  READ_WRITE 
GO
