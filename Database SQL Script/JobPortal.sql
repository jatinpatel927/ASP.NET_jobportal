USE [JobPortal]
GO
/****** Object:  Table [dbo].[AppliedJobs]    Script Date: 11/3/2022 5:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppliedJobs](
	[AppliedJobId] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AppliedJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/3/2022 5:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 11/3/2022 5:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 11/3/2022 5:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[NoOfPost] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Qualification] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[Specialization] [nvarchar](max) NULL,
	[LastDateToApply] [date] NULL,
	[Salary] [nvarchar](50) NULL,
	[JobType] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](200) NULL,
	[CompanyImage] [nvarchar](500) NULL,
	[Website] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](max) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/3/2022 5:02:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[TenthGrade] [nvarchar](50) NULL,
	[TwelfthGrade] [nvarchar](50) NULL,
	[GraduationGrade] [nvarchar](50) NULL,
	[PostGraduationGrade] [nvarchar](50) NULL,
	[Phd] [nvarchar](50) NULL,
	[WorksOn] [nvarchar](50) NULL,
	[Experience] [nvarchar](50) NULL,
	[Resume] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Country] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (2, N'United States')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (3, N'Shri Lanka')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (4, N'Landon')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (5, N'Maimi')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([JobId], [Title], [NoOfPost], [Description], [Qualification], [Experience], [Specialization], [LastDateToApply], [Salary], [JobType], [CompanyName], [CompanyImage], [Website], [Email], [Address], [Country], [State], [CreateDate]) VALUES (1, N'Web Developer', 9, N'bn', N'MCA', N'1 year', N'b', CAST(N'2022-11-15' AS Date), N'10000/Month', N'Full Time', N'Test Company', N'', N'http://www.abc.com', N's@gmail.com', N'amreli', N'India', N'Gujarat', CAST(N'2022-11-02T09:36:02.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Jobs] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__User__536C85E44BEE4FA4]    Script Date: 11/3/2022 5:02:55 AM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
