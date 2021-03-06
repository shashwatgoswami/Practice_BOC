USE [master]
GO
/****** Object:  Database [BOC_Core]    Script Date: 3/1/2018 1:57:25 AM ******/
CREATE DATABASE [BOC_Core]
GO

USE [BOC_Core]
GO

/****** Object:  Table [dbo].[AUTHORIZATION_TASK]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTHORIZATION_TASK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Authorizer] [int] NULL,
	[AuthorizationRequester] [int] NULL,
	[CustomerPendingUpdatesId] [int] NULL,
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
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](1000) NOT NULL,
	[LastName] [nvarchar](1000) NULL,
	[Email] [nvarchar](400) NULL,
	[DateOfBirth] [date] NOT NULL,
	[MobilePhone] [nvarchar](20) NULL,
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
/****** Object:  Table [dbo].[CUSTOMER_DETAILS]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_DETAILS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NULL,
	[Address_Line1] [nvarchar](1000) NULL,
	[Address_Line2] [nvarchar](1000) NULL,
	[Address_Line3] [nvarchar](1000) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](200) NULL,
	[Id_type] [int] NULL,
	[Id_number] [nvarchar](100) NULL,
	[Id_IssueDate] [date] NULL,
	[Id_ExpiryDate] [date] NULL,
	[Occupation] [nvarchar](100) NULL,
	[Employer] [nvarchar](1000) NULL,
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
/****** Object:  Table [dbo].[CUSTOMER_PENDING_UPDATES]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_PENDING_UPDATES](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NULL,
	[FirstName] [nvarchar](1000) NOT NULL,
	[LastName] [nvarchar](1000) NULL,
	[Email] [nvarchar](400) NULL,
	[DateOfBirth] [date] NOT NULL,
	[MobilePhone] [nvarchar](20) NULL,
	[Address_Line1] [nvarchar](1000) NULL,
	[Address_Line2] [nvarchar](1000) NULL,
	[Address_Line3] [nvarchar](1000) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](200) NULL,
	[Id_type] [int] NULL,
	[Id_number] [nvarchar](100) NULL,
	[Id_IssueDate] [date] NULL,
	[Id_ExpiryDate] [date] NULL,
	[Occupation] [nvarchar](100) NULL,
	[Employer] [nvarchar](1000) NULL,
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
/****** Object:  Table [dbo].[CUSTOMER_PRODUCT]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER_PRODUCT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NULL,
	[Product_Id] [int] NULL,
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
/****** Object:  Table [dbo].[ID_TYPE]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID_TYPE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_TYPE]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_TYPE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[SchemaName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAVINGS_ACCOUNT]    Script Date: 3/1/2018 1:57:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAVINGS_ACCOUNT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductType_Id] [int] NULL,
	[AccountNumber] [int] NULL,
	[InitialDeposit] [decimal](18, 0) NULL,
	[Balance] [decimal](18, 0) NULL,
	[PurposeOfAccount] [nvarchar](4000) NULL,
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
ALTER TABLE [dbo].[AUTHORIZATION_TASK] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CUSTOMER] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CUSTOMER_DETAILS] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CUSTOMER_PENDING_UPDATES] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CUSTOMER_PRODUCT] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SAVINGS_ACCOUNT] ADD  DEFAULT ((1)) FOR [ProductType_Id]
GO
ALTER TABLE [dbo].[SAVINGS_ACCOUNT] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
USE [master]
GO
ALTER DATABASE [BOC_Core] SET  READ_WRITE 
GO
