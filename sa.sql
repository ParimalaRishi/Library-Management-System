USE [lms]
GO
/****** Object:  Table [dbo].[FacultyReturnBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyReturnBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Faculty_ID] [nvarchar](50) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FacultyReturnBook] ON
INSERT [dbo].[FacultyReturnBook] ([ID], [Faculty_ID], [BookID], [IssueDate], [ReturnDate]) VALUES (15, N'Fac001', N'1', CAST(0x0000A34B00000000 AS DateTime), CAST(0x0000A34B00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[FacultyReturnBook] OFF
/****** Object:  Table [dbo].[FacultyIssueBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyIssueBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Faculty_ID] [nvarchar](50) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [nvarchar](50) NOT NULL,
	[ReturnDate] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty_Reg]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faculty_Reg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Faculty_ID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Faculty_Name] [varchar](50) NOT NULL,
	[Father_Name] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[MobileNO] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[EmailID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Faculty_Reg] PRIMARY KEY CLUSTERED 
(
	[Faculty_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Faculty_Reg] ON
INSERT [dbo].[Faculty_Reg] ([ID], [Faculty_ID], [Password], [Faculty_Name], [Father_Name], [DOB], [Gender], [MobileNO], [Address], [EmailID]) VALUES (23, N'39', N'39', N'rajitha', N'chandhu', CAST(0x0000A62000000000 AS DateTime), N'Female', N'9848230926', N'hnk', N'bsampath25@gmail.com')
INSERT [dbo].[Faculty_Reg] ([ID], [Faculty_ID], [Password], [Faculty_Name], [Father_Name], [DOB], [Gender], [MobileNO], [Address], [EmailID]) VALUES (22, N'Fac001', N'Fac001', N'siddu', N'sss', CAST(0x0000A34700000000 AS DateTime), N'Male', N'9848256985', N'hyd', N'sa@gmail.com')
SET IDENTITY_INSERT [dbo].[Faculty_Reg] OFF
/****** Object:  StoredProcedure [dbo].[datetime]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[datetime]
(@date datetime)
as 
begin
SELECT DATEADD(hour, 1, @date) AS 'Hour', 
       DATEADD(hh, 1, @date)   AS 'Hour'; 
end
GO
/****** Object:  Table [dbo].[BookBankStdReturnBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookBankStdReturnBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [nvarchar](50) NOT NULL,
	[ReturnDate] [datetime] NOT NULL,
	[ActualReturnDate] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookBankStdReturnBook] ON
INSERT [dbo].[BookBankStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate]) VALUES (6, N'10b61f0005', N'50', N'05/19/2014', CAST(0x0000A33000EC3222 AS DateTime), N'05/19/2014')
INSERT [dbo].[BookBankStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate]) VALUES (7, N'10b61f0006', N'12', N'05/19/2014', CAST(0x0000A33000F7A314 AS DateTime), N'05/19/2014')
INSERT [dbo].[BookBankStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate]) VALUES (8, N'11', N'69', N'05/20/2014', CAST(0x0000A33100EBDA6F AS DateTime), N'05/20/2014')
INSERT [dbo].[BookBankStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate]) VALUES (9, N'11', N'50', N'30-May-14', CAST(0x0000A33B018716BB AS DateTime), N'30-May-14')
INSERT [dbo].[BookBankStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate]) VALUES (10, N'10b61001', N'50', N'15-Jun-14', CAST(0x0000A34B00AC3416 AS DateTime), N'15-Jun-14')
SET IDENTITY_INSERT [dbo].[BookBankStdReturnBook] OFF
/****** Object:  Table [dbo].[BookBankReg]    Script Date: 01/05/2017 22:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookBankReg](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[Branch] [nvarchar](50) NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
	[Fee] [money] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookBankReg] ON
INSERT [dbo].[BookBankReg] ([ID], [StudentID], [StudentName], [Branch], [Year], [Fee]) VALUES (14, N'10b61001', N'kaka kamal', N'CSE', N'CSE-I', 3000.0000)
INSERT [dbo].[BookBankReg] ([ID], [StudentID], [StudentName], [Branch], [Year], [Fee]) VALUES (13, N'11', N'zxZx', N'CSE', N'CSE-I', 3000.0000)
SET IDENTITY_INSERT [dbo].[BookBankReg] OFF
/****** Object:  Table [dbo].[AddBook]    Script Date: 01/05/2017 22:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Edition] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[NoofPages] [int] NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
	[Source] [nvarchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[InsertDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_AddBook] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddBook] ON
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (45, N'1', N'WT', N'2005', N'BALA', 20, N'2014', N'knr', 150.0000, CAST(0x0000A34B00A6A16C AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (36, N'12', N'Java', N'II', N'JamesGosling', 123, N'2005', N'hyd', 201.0000, CAST(0x0000A32500F2E8AE AS DateTime), 0)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (37, N'15', N'Java', N'II', N'JamesGosling', 123, N'2005', N'hyd', 201.0000, CAST(0x0000A32500F2EE3C AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (46, N'2', N'WO', N'2005', N'ram', 20, N'2014', N'hyd', 200.0000, CAST(0x0000A34B00A93F89 AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (40, N'26', N'CPP', N'II', N'bala', 123, N'2005', N'hyd', 150.0000, CAST(0x0000A32500F39E3B AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (32, N'32', N'Java', N'VII', N'JamesGosling', 235, N'2005', N'wgl', 220.0000, CAST(0x0000A32500EFF9AD AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (39, N'50', N'C', N'II', N'bala', 123, N'2005', N'hyd', 150.0000, CAST(0x0000A32500F39146 AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (47, N'57', N'java', N'I', N'rajitha', 20, N'2016', N'ku ', 300.0000, CAST(0x0000A62300FE58DE AS DateTime), 0)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (42, N'69', N'Html', N'II', N'dfdf', 123, N'2005', N'hyd', 234.0000, CAST(0x0000A32500F3D734 AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (43, N'80', N'java', N'II', N'dfdf', 123, N'2005', N'hyd', 234.0000, CAST(0x0000A32500F3D644 AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (44, N'90', N'c', N'I', N'sam', 444, N'2005', N'knr', 200.0000, CAST(0x0000A33700BB6D0C AS DateTime), 1)
INSERT [dbo].[AddBook] ([ID], [BookID], [Name], [Edition], [Author], [NoofPages], [Year], [Source], [Cost], [InsertDate], [Status]) VALUES (35, N'abc10', N'Java', N'II', N'JamesGosling', 123, N'2005', N'hyd', 201.0000, CAST(0x0000A32500F2C778 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[AddBook] OFF
/****** Object:  Table [dbo].[BookBankAccount]    Script Date: 01/05/2017 22:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookBankAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[BookId] [int] NULL,
	[IssueDate] [datetime] NOT NULL,
	[ActualReturnDate] [datetime] NULL,
	[Status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminLogin]    Script Date: 01/05/2017 22:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLogin](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[AdminLogin] ([UserName], [Password], [Email]) VALUES (N'sss', N'123', N'ka@gmail.com')
/****** Object:  Table [dbo].[AddCourse]    Script Date: 01/05/2017 22:01:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddCourse] ON
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (1, N'CSE-I')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (2, N'CSE-II')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (3, N'CSE-III')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (4, N'CSE-IV')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (5, N'ECE-I')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (6, N'ESE-II')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (7, N'ECE-III')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (8, N'ECE-IV')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (9, N'EC-I')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (10, N'EC-II')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (11, N'EC-III')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (12, N'EC-IV')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (13, N'IT-I')
INSERT [dbo].[AddCourse] ([ID], [CourseName]) VALUES (14, N'IT-II')
SET IDENTITY_INSERT [dbo].[AddCourse] OFF
/****** Object:  Table [dbo].[sa]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sa](
	[id] [int] NOT NULL,
	[name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sa] ([id], [name]) VALUES (1, N'sampath')
INSERT [dbo].[sa] ([id], [name]) VALUES (2, N'raju')
INSERT [dbo].[sa] ([id], [name]) VALUES (3, N'dd')
INSERT [dbo].[sa] ([id], [name]) VALUES (4, N'nani')
INSERT [dbo].[sa] ([id], [name]) VALUES (5, N'vasu')
/****** Object:  Table [dbo].[RefferenceStdReturnBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefferenceStdReturnBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [nvarchar](50) NOT NULL,
	[ReturnDate] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RefferenceStdReturnBook] ON
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (13, N'10b61f0005', N'15', N'19/05/2014', N'')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (14, N'10b61f0005', N'15', N'19/05/2014', N'19/05/2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (15, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (16, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (17, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (18, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (41, N'10b61001', N'2', N'15-06-2014', N'15-06-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (19, N'11', N'26', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (20, N'11', N'26', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (21, N'11', N'26', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (22, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (23, N'11', N'26', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (24, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (25, N'11', N'26', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (26, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (27, N'11', N'26', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (28, N'11', N'50', N'29-05-2014', N'29-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (29, N'11', N'50', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (30, N'11', N'26', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (31, N'11', N'50', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (32, N'11', N'26', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (33, N'11', N'50', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (34, N'11', N'26', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (35, N'11', N'50', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (36, N'11', N'26', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (37, N'11', N'50', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (38, N'11', N'26', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (39, N'11', N'50', N'30-05-2014', N'30-05-2014')
INSERT [dbo].[RefferenceStdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate]) VALUES (40, N'11', N'26', N'30-05-2014', N'30-05-2014')
SET IDENTITY_INSERT [dbo].[RefferenceStdReturnBook] OFF
/****** Object:  Table [dbo].[RefferenceBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefferenceBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [nvarchar](50) NOT NULL,
	[ReturnDate] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[SubjectName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (14, N'CSE-I', N'C')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (15, N'CSE-II', N'C')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (16, N'CSE-III', N'C')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (17, N'CSE-IV', N'C')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (18, N'CSE-I', N'C++')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (19, N'CSE-I', N'Html')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (20, N'CSE-II', N'Html')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (21, N'CSE-III', N'Html')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (22, N'CSE-I', N'java')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (23, N'CSE-III', N'java')
INSERT [dbo].[Subjects] ([ID], [CourseName], [SubjectName]) VALUES (24, N'CSE-II', N'java')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
/****** Object:  Table [dbo].[StdReturnBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdReturnBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NOT NULL,
	[ActualReturnDate] [datetime] NOT NULL,
	[LateFee] [money] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StdReturnBook] ON
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (1, N'10b61f0005', N'69', CAST(0x0000A33000000000 AS DateTime), CAST(0x0000A33000000000 AS DateTime), CAST(0x0000A33000000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (2, N'10b61f0005', N'50', CAST(0x0000A33000000000 AS DateTime), CAST(0x0000A33000000000 AS DateTime), CAST(0x0000A33000000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (3, N'11', N'50', CAST(0x0000A33100000000 AS DateTime), CAST(0x0000A33700000000 AS DateTime), CAST(0x0000A33100000000 AS DateTime), 6.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (4, N'11', N'80', CAST(0x0000A33700000000 AS DateTime), CAST(0x0000A33700000000 AS DateTime), CAST(0x0000A33700000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (5, N'11', N'90', CAST(0x0000A33700000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33700000000 AS DateTime), 3.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (6, N'11', N'90', CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (7, N'11', N'90', CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (8, N'11', N'50', CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (12, N'10b61001', N'15', CAST(0x0000A34B00000000 AS DateTime), CAST(0x0000A34B00000000 AS DateTime), CAST(0x0000A35A00000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (13, N'10b61001', N'15', CAST(0x0000A34B00000000 AS DateTime), CAST(0x0000A34B00000000 AS DateTime), CAST(0x0000A35A00000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (9, N'11', N'15', CAST(0x0000A33700000000 AS DateTime), CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33700000000 AS DateTime), 3.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (10, N'11', N'90', CAST(0x0000A33A00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A34900000000 AS DateTime), 0.0000)
INSERT [dbo].[StdReturnBook] ([ID], [StudentID], [BookID], [IssueDate], [ReturnDate], [ActualReturnDate], [LateFee]) VALUES (11, N'11', N'50', CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A34A00000000 AS DateTime), 0.0000)
SET IDENTITY_INSERT [dbo].[StdReturnBook] OFF
/****** Object:  Table [dbo].[StdRegistration]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdRegistration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[StudentName] [nvarchar](50) NOT NULL,
	[Branch] [nvarchar](50) NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
	[FatherName] [nvarchar](50) NOT NULL,
	[DOB] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[MobileNO] [nvarchar](50) NOT NULL,
	[Adderss] [nvarchar](50) NOT NULL,
	[EmailID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StdRegistration] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StdRegistration] ON
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (111, N'10b61001', N'kamal', N'kaka kamal', N'CSE', N'CSE-I', N'A', N'12-Dec-90 12:00:00 AM', N'Male', N'9912345319', N'Male', N'kamal4554@gmail.com')
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (112, N'10b61002', N'sampath', N'sampath', N'CSE', N'CSE-I', N'cfx', N'12-Dec-90 12:00:00 AM', N'Male', N'9912664554', N'hyd', N'ka@gmail.com')
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (113, N'10b61003', N'kumar', N'kumar', N'CSE', N'CSE-I', N'gcg', N'12-Dec-90 12:00:00 AM', N'Male', N'9912664554', N'hyd', N'ka@gmail.com')
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (114, N'10b61004', N'siddu', N'siddu', N'CSE', N'CSE-I', N'fhg', N'12-Dec-90 12:00:00 AM', N'Male', N'9912664554', N'hyd', N'ka@gmail.com')
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (116, N'10b61006', N'ravi', N'ravi', N'EEE', N'EEE-I', N'h', N'09-Feb-88 12:00:00 AM', N'Male', N'9912664554', N'hyd', N'ka@gmail.com')
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (117, N'10b61007', N'raju', N'raju', N'CSE', N'CSE-I', N'hggd', N'Feb  9 1988 12:00AM', N'Female', N'9912664554', N'hyd', N'ka@gmail.com')
INSERT [dbo].[StdRegistration] ([ID], [StudentID], [Password], [StudentName], [Branch], [Year], [FatherName], [DOB], [Gender], [MobileNO], [Adderss], [EmailID]) VALUES (118, N'10b61008', N'rahulu', N'rahulu', N'CSE', N'CSE-I', N'dshf', N'12-Dec-90 12:00:00 AM', N'Male', N'9912664554', N'hyd', N'ka@gmail.com')
SET IDENTITY_INSERT [dbo].[StdRegistration] OFF
/****** Object:  Table [dbo].[StdIssueBook]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StdIssueBook](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[Year] [nvarchar](50) NULL,
	[BookID] [nvarchar](50) NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[ActualReturnDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[StdIssueBook] ON
INSERT [dbo].[StdIssueBook] ([ID], [StudentID], [Year], [BookID], [IssueDate], [ActualReturnDate], [Status]) VALUES (23, N'', NULL, N'12', CAST(0x0000A33000F9C777 AS DateTime), CAST(0x0000A33000F9C777 AS DateTime), 1)
INSERT [dbo].[StdIssueBook] ([ID], [StudentID], [Year], [BookID], [IssueDate], [ActualReturnDate], [Status]) VALUES (34, N'10b61007', NULL, N'57', CAST(0x0000A62300FEAB72 AS DateTime), CAST(0x0000A63200000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[StdIssueBook] OFF
/****** Object:  Table [dbo].[NormalAccount]    Script Date: 01/05/2017 22:01:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [nvarchar](50) NOT NULL,
	[Branch] [nvarchar](50) NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
	[BooksID] [int] NOT NULL,
	[IssueDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[IssueRefferenceBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IssueRefferenceBook]
(@StudentId nvarchar(50),@SubjectName nvarchar(50) ,@BookId nvarchar(50),@IssueDate nvarchar(50),@ReturnDate nvarchar(50),@Inserted int out)

	
AS
BEGIN
	if exists(select 1 from StdRegistration, AddBook,Subjects where BookId=@BookId and StudentId=@StudentId and Status=1 and  SubjectName=@SubjectName  )

 begin
        Update StdIssueBook set Status=0 where BookId=@BookId
		Update FacultyIssueBook set Status=0 where BookId=@BookId
		insert into RefferenceBook(StudentId,BookId,IssueDate,ReturnDate,Status)values(@StudentId,@BookId,getdate(),getdate(),1)
		
	    Update Addbook set Status=0 where BookId=@BookId
        
        set @Inserted=1;
           end;
  else 
begin
	set @Inserted=0;
    
end

END
GO
/****** Object:  StoredProcedure [dbo].[Issuebookstd3]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[Issuebookstd3]
	(@SubjectName nvarchar(50))
	
AS
BEGIN


--select SubjectName from Subjects where CourseName=(select Year	 from StdRegistration where StudentID=1)
select BookID from AddBook where  Status=1 and Name=@SubjectName

END
GO
/****** Object:  StoredProcedure [dbo].[stdbookbankIssueBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[stdbookbankIssueBook]
(@StudentId nvarchar(50),@SubjectName nvarchar(50) ,@BookId nvarchar(50),@IssueDate datetime,@ActualReturnDate datetime,@Inserted int out,@totalbk int out)
as
begin

set @Inserted=0;
set @totalbk=0;

if exists(select 1 from BookBankReg, AddBook,Subjects where BookId=@BookId and StudentId=@StudentId and Status=1 and  SubjectName=@SubjectName  )
 begin
	if  exists(select count(StudentId) from BookBankAccount HAVING count(StudentId)<10)
	begin   
		
        Update BookBankAccount set Status=0 where BookId=@BookId
		Update FacultyIssueBook set Status=0 where BookId=@BookId
		insert into BookBankAccount(StudentId,BookId,IssueDate,ActualReturnDate,Status)values(@StudentId,@BookId,getdate(),getdate(),1)
		
	    Update Addbook set Status=0 where BookId=@BookId
        set @totalbk=1;
        
           end;
 set @Inserted=1;

end
   else 
begin
	set @totalbk=0;
    set @Inserted=0;
end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_viewbookbankstd]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_viewbookbankstd]

AS
BEGIN
	
	SELECT *from BookBankReg
END
GO
/****** Object:  StoredProcedure [dbo].[sp_StdUpdtReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_StdUpdtReturnBook]
(@StudentId nvarchar(50),@BookId nvarchar(50),@IssueDate datetime,@ReturnDate datetime,@ActualReturnDate datetime, @LateFee int)
as
begin


INSERT INTO  StdReturnBook VALUES( @StudentId, @BookID, @IssueDate, @ReturnDate, @ActualReturnDate, @LateFee) 
Update StdIssueBook set Status=0 where BookId=@BookId
Update FacultyIssueBook set Status=0 where BookId=@BookId
Update Addbook set Status=1 where BookId=@BookId
delete StdIssueBook where Status=0  


end
GO
/****** Object:  StoredProcedure [dbo].[sp_StdUpdtRefferenceStdReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_StdUpdtRefferenceStdReturnBook]
(@StudentId nvarchar(50),@BookId nvarchar(50),@IssueDate nvarchar(50),@ReturnDate nvarchar(50))
as
begin


INSERT INTO  RefferenceStdReturnBook VALUES( @StudentId, @BookID, @IssueDate, @ReturnDate) 
Update StdIssueBook set Status=0 where BookId=@BookId
Update FacultyIssueBook set Status=0 where BookId=@BookId
Update Addbook set Status=1 where BookId=@BookId
Update RefferenceBook set Status=0 where BookId=@BookId
delete RefferenceBook where Status=0  


end
GO
/****** Object:  StoredProcedure [dbo].[sp_StdUpdtBookBankStdReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_StdUpdtBookBankStdReturnBook]
(@StudentId nvarchar(50),@BookId nvarchar(50),@IssueDate nvarchar(50),@ReturnDate datetime,@ActualReturnDate nvarchar(50))
as
begin


INSERT INTO  BookBankStdReturnBook VALUES( @StudentId, @BookID, @IssueDate, getdate(), @ActualReturnDate) 
Update StdIssueBook set Status=0 where BookId=@BookId
Update FacultyIssueBook set Status=0 where BookId=@BookId
Update Addbook set Status=1 where BookId=@BookId
update BookBankAccount set Status=0 where BookId=@BookId
delete StdIssueBook where Status=0  
delete BookBankAccount where Status=0
 


end
GO
/****** Object:  StoredProcedure [dbo].[sp_stdupdate]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_stdupdate]
(@StudentID nvarchar(50),@Password nvarchar(50),@StudentName nvarchar(50),@Branch nvarchar(50),@Year nvarchar(50),@FatherName nvarchar(50),@DOB datetime,@Gender nvarchar(50),@MobileNO nvarchar(50),@Adderss nvarchar(50),@EmailID nvarchar(50)
)
as
begin
update StdRegistration set Password=@Password, StudentName=@StudentName,Branch=@Branch,Year=@Year,FatherName=@FatherName,DOB=@DOB,Gender=@Gender,MobileNO=@MobileNO,Adderss=@Adderss,EmailID=@EmailID where StudentId=@StudentId 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_StdReg]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_StdReg]
(@StudentID nvarchar(50),@Password nvarchar(50),@StudentName nvarchar(50),@Branch nvarchar(50),@Year nvarchar(50),@FatherName nvarchar(50),@DOB nvarchar(50),@Gender nvarchar(50),@MobileNO nvarchar(50),@Adderss nvarchar(50),@EmailID nvarchar(50))
as 
begin
insert into StdRegistration(StudentID,Password,StudentName ,Branch,Year,FatherName,DOB,Gender,MobileNO,Adderss,EmailId)values(@StudentID,@Password,@StudentName,@Branch,@Year,@FatherName,@DOB,@Gender,@MobileNO,@Adderss,@EmailID)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_search]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[sp_search]
(@Name nvarchar(50))
as
 begin
SELECT BookID,Name,Edition,Author from AddBook  where Status=1 and Name=@Name
group by BookID,Name,Edition,Author
end
GO
/****** Object:  StoredProcedure [dbo].[sp_LibReference]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LibReference]
                (
                  @NoOf_studentIssuebooks int OUTPUT,
                  @NoOf_studentBookBankIssuebooks int OUTPUT,
                 @NoOf_FacultyIssuebooks int OUTPUT,
                 @NoOf_Referncelibrarybooks int OUTPUT,
			     @NoOf_Curentlibrarybooks int OUTPUT,
				 @NoOf_Totallibrarybooks int OUTPUT)
AS
begin

set  @NoOf_studentIssuebooks=0;

Declare @NoOfStdIssueRows int;
set @NoOfStdIssueRows=0;

Declare @NoOfFacultyRows int;
set @NoOfFacultyRows=0;

Declare @NoOfBookBankRows int;
set @NoOfBookBankRows=0;

Declare @NoOfLibraryRows int;
set @NoOfLibraryRows=0
    Declare @NoOfreffernceRows int;
set @NoOfreffernceRows=0;
select  @NoOfStdIssueRows=COUNT(Status) FROM StdIssueBook

--select @NoOfStdIssueRows=COUNT(Status) FROM BookBankAccount 

	if (@NoOfStdIssueRows>0)
	begin

	select @NoOf_studentIssuebooks=COUNT(Status) FROM StdIssueBook where Status=1

	end;

	else
	  set  @NoOf_studentIssuebooks=0;

 select @NoOfFacultyRows=COUNT(Status) FROM FacultyIssueBook 

	if (@NoOfFacultyRows>0)
	begin
	   select @NoOf_FacultyIssuebooks=COUNT(Status) FROM FacultyIssueBook where Status=1
	end;

	else
	  set  @NoOf_FacultyIssuebooks=0;




select @NoOfBookBankRows=COUNT(Status) FROM BookBankAccount 
	if (@NoOfBookBankRows>0)
	begin
	   select @NoOf_studentBookBankIssuebooks=COUNT(Status) FROM BookBankAccount where Status=1
	end;

	else
	  set  @NoOf_studentBookBankIssuebooks=0;

 
select @NoOfLibraryRows=COUNT(Status) FROM AddBook 
set @NoOf_Curentlibrarybooks=@NoOfLibraryRows;

	if (@NoOf_Curentlibrarybooks>0)

	begin
	   select @NoOf_Curentlibrarybooks=COUNT(Status) FROM AddBook where Status=1
	end;

	else
	  set  @NoOf_Curentlibrarybooks=0;


--sampath
select @NoOfreffernceRows=COUNT(Status) FROM RefferenceBook 
set @NoOf_Referncelibrarybooks=@NoOfreffernceRows;

	if (@NoOf_Referncelibrarybooks>0)

	begin
	   select @NoOf_Referncelibrarybooks=COUNT(Status) FROM RefferenceBook where Status=1
	end;

	else
	  set  @NoOf_Referncelibrarybooks=0;


--select @NoOfLibraryRows=COUNT(Status) FROM AddBook 
--set @NoOf_Totallibrarybooks=@NoOfLibraryRows;
--
--	if (@NoOf_Totallibrarybooks>0)
--
--	begin
--	   select @NoOf_Curentlibrarybooks=COUNT(Status) FROM AddBook where Status=1
--	end;
--
--	else
--	  set  @NoOf_Curentlibrarybooks=0;



   set @NoOf_Totallibrarybooks= @NoOf_studentIssuebooks +
                  @NoOf_studentBookBankIssuebooks +
                 @NoOf_FacultyIssuebooks +
			     @NoOf_Curentlibrarybooks+@NoOf_Referncelibrarybooks
				 

end
GO
/****** Object:  StoredProcedure [dbo].[sp_LibNew]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LibNew]
                (@NoOf_studentIssuebooks int OUTPUT,
                 @NoOf_FacultyIssuebooks int OUTPUT,
			     @NoOf_Curentlibrarybooks int OUTPUT,
				 @NoOf_Totallibrarybooks int OUTPUT)
AS
begin

Declare @NoOfStdIssueRows int;
set @NoOfStdIssueRows=0;

Declare @NoOfFacultyRows int;
set @NoOfFacultyRows=0;

Declare @NoOfLibraryRows int;
set @NoOfLibraryRows=0

select @NoOfStdIssueRows=COUNT(Status) FROM IssueBook 
if (@NoOfStdIssueRows>0)
begin
   select @NoOf_studentIssuebooks=COUNT(Status) FROM IssueBook where Status=1
end;

else

  set  @NoOf_studentIssuebooks=0;
 



select @NoOfFacultyRows=COUNT(Status) FROM facissuebook 
if (@NoOfFacultyRows>0)
begin
   select @NoOf_FacultyIssuebooks=COUNT(Status) FROM facissuebook where Status=1
end;

else

  set  @NoOf_FacultyIssuebooks=0;
 



select @NoOfLibraryRows=COUNT(Status) FROM AddBook 
set @NoOf_Totallibrarybooks=@NoOfLibraryRows;

if (@NoOf_Totallibrarybooks>0)

begin
   select @NoOf_Curentlibrarybooks=COUNT(Status) FROM AddBook where Status=1
end;

else

  set  @NoOf_Curentlibrarybooks=0;


end
GO
/****** Object:  StoredProcedure [dbo].[sp_Lib3]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Lib3]

as
 begin
Select T1.Status,T1.NoOf_studentIssuebooks,T2.NoOf_FacultyIssuebooks,T3.NoOf_Curentlibrarybooks
FROM
(
  Select [Status], COUNT([Status]) AS NoOf_studentIssuebooks
  from [IssueBook] T1
  group by Status) T1
INNER JOIN
(
  Select [Status], COUNT([Status]) AS NoOf_FacultyIssuebooks
  from [facissuebook] T2
  group by Status)T2 
on T1.NoOf_studentIssuebooks=T2.NoOf_FacultyIssuebooks or(T1.NoOf_studentIssuebooks is null and T2.NoOf_FacultyIssuebooks is null)
INNER JOIN
(
  Select [Status], COUNT([Status]) AS NoOf_Curentlibrarybooks
  from [AddBook] T3
  group by Status)T3
on  T2.NoOf_FacultyIssuebooks=T3.NoOf_Curentlibrarybooks or(T2.NoOf_FacultyIssuebooks is null and T3.NoOf_Curentlibrarybooks is null)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Lib2]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Lib2]

as
 begin
Select T1.Status,T1.NoOf_studentIssuebooks,T2.NoOf_FacultyIssuebooks,T3.NoOf_Curentlibrarybooks
FROM
(
  Select [Status], COUNT([Status]) AS NoOf_studentIssuebooks
  from [IssueBook] T1
  group by Status) T1
INNER JOIN
(
  Select [Status], COUNT([Status]) AS NoOf_FacultyIssuebooks
  from [facissuebook] T2
  group by Status
 ) T2 
on T1.Status = T2.Status
INNER JOIN
(
  Select [Status], COUNT([Status]) AS NoOf_Curentlibrarybooks
  from [AddBook] T3
  group by Status)T3
on  T2.Status=T3.Status
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Lib]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Lib]
(@BookAuthor nvarchar(50),@BookEdition nvarchar(50))
as
 begin

select BookAuthor, count(BookAuthor) from AddBook
Group by BookAuthor Having (count(BookAuthor) > 1)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_kamal]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure  [dbo].[sp_kamal]
(@CourseName nvarchar(50),@SubjectName nvarchar(50),@kamal int out)
as
begin
if exists (select 1 from AddBook,AddCourse where Name=@SubjectName and CourseName=@CourseName)
begin
--if not exists(select 1 from Subjects where CourseName=@CourseName AND SubjectName=@SubjectName)
--begin
insert into Subjects(CourseName,SubjectName)values(@CourseName,@SubjectName)
set @kamal=1;
end
else
set @kamal=0;
--end
END
GO
/****** Object:  StoredProcedure [dbo].[sp_IssueBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_IssueBook]
(@StudentId nvarchar(50) ,@BookID nvarchar(50),@IssueDate datetime,@ActualReturnDate datetime,@Inserted int out,@totalbk int out)
as
begin

set @Inserted=0;

set @totalbk=0;
if exists(select 1 from StdRegistration, AddBook where BookID=@BookID and StudentID=@StudentId and Status=1 )
 
 begin

   if  exists(select count(StudentID) from StdIssueBook where StudentID=@StudentId HAVING count(1)<3)
begin   
 
--        Update StdIssueBook set Status=0 where BookID=@BookID
--Update FacultyIssueBook set Status=0 where BookID=@BookID
insert into StdIssueBook(StudentID,BookID,IssueDate,ActualReturnDate,Status)values(@StudentId,@BookID,@IssueDate,@ActualReturnDate,1)

    Update Addbook set Status=0 where BookID=@BookID
        set @totalbk=1;
        
           end;
 set @Inserted=1;

end
   else 
begin
set @totalbk=0;
    set @Inserted=0;
end

end
GO
/****** Object:  StoredProcedure [dbo].[sp_getReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_getReturnBook]
(@StudentId nvarchar(50))
as
begin
--StudentID,BookID,(select  convert(varchar, IssueDate, 103))as IssueDate,(select convert(varchar, ActualReturnDate, 103))as ActualReturnDate
    select  * from  StdIssueBook  where  StudentId =@StudentId and Status=1

end
GO
/****** Object:  StoredProcedure [dbo].[sp_getRefferenceReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_getRefferenceReturnBook]
(@StudentId nvarchar(50))
as
begin
--StudentID,BookID,(select  convert(varchar, IssueDate, 103))as IssueDate,(select convert(varchar, ActualReturnDate, 103))as ActualReturnDate
    select  * from  RefferenceBook  where  StudentId =@StudentId and Status=1

end
GO
/****** Object:  StoredProcedure [dbo].[sp_getnormalstdsubjectslist]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_getnormalstdsubjectslist]
	(@StudentId nvarchar(50))
	
AS
BEGIN

--select SubjectName from Subjects where CourseName=(select Year	 from BookBankReg where StudentID=@StudentId)

select SubjectName from Subjects where CourseName=(select Year	 from StdRegistration where StudentID=@StudentId)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_getFacultyReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_getFacultyReturnBook]
(@faculty_id nvarchar(50))
as
begin

    select * from  FacultyIssueBook  where  faculty_id =@faculty_id and Status=1

end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbookbanksubjectslist]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[sp_getbookbanksubjectslist]
	(@StudentID nvarchar(50))
	
AS
BEGIN

select SubjectName from Subjects where CourseName=(select Year	 from BookBankReg where StudentID=@StudentID)

--select SubjectName from Subjects where CourseName=(select Year	 from StdRegistration where StudentID=@StudentId)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_getBookBankstudentReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_getBookBankstudentReturnBook]
(@StudentID nvarchar(50))
as
begin

    select * from  BookBankAccount  where  StudentID =@StudentID and Status=1

end
GO
/****** Object:  StoredProcedure [dbo].[sp_getbookbankstudentdetails]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_getbookbankstudentdetails]
(@StudentId nvarchar(50))
as
begin

    select StudentName,Branch,Year  from  StdRegistration  where  StudentID =@StudentId 

end
GO
/****** Object:  StoredProcedure [dbo].[sp_FacUpdtReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FacUpdtReturnBook]
(@Faculty_ID nvarchar(50),@BookID nvarchar(50),@IssueDate datetime,@ReturnDate datetime)
as
begin


INSERT INTO  FacultyReturnBook VALUES( @Faculty_ID, @BookID, @IssueDate, @ReturnDate) 
Update FacultyIssueBook set Status=0 where BookID=@BookID
Update StdIssueBook set Status=0 where BookID=@BookID
Update Addbook set Status=1 where BookID=@BookID
delete FacultyIssueBook where Status=0  


end
GO
/****** Object:  StoredProcedure [dbo].[sp_FacUpdReturnBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FacUpdReturnBook](@faculty_id nvarchar(50),@BookId nvarchar(50),@IssueDate nvarchar(50),@ReturnDate nvarchar(50))
as
begin


INSERT INTO  FacultyReturnBook VALUES( @faculty_id, @BookID, @IssueDate, @ReturnDate) 
Update StdIssueBook set Status=0 where BookId=@BookId
Update FacultyIssueBook set Status=0 where BookId=@BookId
Update Addbook set Status=1 where BookId=@BookId
delete StdIssueBook where  Status=0 
delete FacultyIssueBook where  Status=0 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Facupdate]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Facupdate]
(@Faculty_ID nvarchar(50),@Password nvarchar(50),@Faculty_Name nvarchar(50),@Father_Name nvarchar(50),@DOB datetime,@Gender nvarchar(50),@MobileNO nvarchar(50),@Address nvarchar(50),@EmailID nvarchar(50))
as 
begin
update  Faculty_Reg set Password=@Password, Faculty_Name=@Faculty_Name,Father_Name=@Father_Name,DOB=@DOB,Gender=@Gender,MobileNO=@MobileNO,Address=@Address,EmailID=@EmailID where Faculty_ID=@Faculty_ID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_FacReg]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_FacReg]
(@Faculty_ID nvarchar(50),@Password nvarchar(50),@Faculty_Name nvarchar(50),@Father_Name nvarchar(50),@DOB datetime,@Gender nvarchar(50),
  @MobileNO nvarchar(50),@Address nvarchar(50),@EmailID nvarchar(50))
as 
begin
insert into Faculty_Reg(Faculty_ID,Password,Faculty_Name,Father_Name,DOB,Gender,MobileNO,Address,EmailID)
values(@Faculty_ID,@Password,@Faculty_Name,@father_name,@DOB,@Gender,@MobileNO,@Address,@EmailID)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_facissuebook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_facissuebook]
(@faculty_id nvarchar(50),@BookId nvarchar(50),@IssueDate nvarchar(50),@ReturnDate nvarchar(50),@Inserted int out)
as
begin


set @Inserted=0;


if exists(select 1 from AddBook where BookId=@BookId and Status=1)
 begin

    Update StdIssueBook set Status=0 where BookId=@BookId
    Update FacultyIssueBook set Status=0 where BookId=@BookId
     Update BookBankAccount set Status=0 where BookId=@BookId

    insert into FacultyIssueBook(faculty_id,BookId,IssueDate,ReturnDate,Status)values(@faculty_id,@BookId,@IssueDate,@ReturnDate,1)
	set @Inserted=1;

Update Addbook set Status=0 where BookId=@BookId

end;

else
set @Inserted=0;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_changepwd]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_changepwd]
(@Username nvarchar(50),@Password nvarchar(50))
as
begin
update AdminLogin set Password=@Password where UserName=@UserName
end
GO
/****** Object:  StoredProcedure [dbo].[sp_bookUpdate]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_bookUpdate]
(@BookID nvarchar(50),@Name nvarchar(50),@Edition nvarchar(50),@Author nvarchar(50),@NoofPages int,@Year nvarchar(50),@Source nvarchar(50),@Cost money,@InsertDate datetime)

as
begin

update AddBook set BookID=@BookID,Name=@Name,Edition=@Edition,Author=@Author,NoofPages=@NoofPages,Year=@Year,Source=@Source,Cost=@Cost,InsertDate=@InsertDate where BookID=@BookID



end
GO
/****** Object:  StoredProcedure [dbo].[sp_BookBankStdReg]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_BookBankStdReg]
(@StudentID nvarchar(50),@StudentName nvarchar(50),@Branch nvarchar(50),@Year nvarchar(50),@Fee money,@Inserted int out)
as
begin
set @Inserted=0;
if exists(select 1 from StdRegistration where StudentID=@StudentID)
begin
insert into BookBankReg(StudentID,StudentName,Branch,Year,Fee)values (@StudentID,@StudentName,@Branch,@Year,@Fee)
set @Inserted=1;
end;
else 
begin
set  @Inserted=0;
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Addbook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_Addbook]
(@BookID nvarchar(50),@Name nvarchar(50),@Edition nvarchar(50),@Author nvarchar(50),@NoofPages int,@Year nvarchar(50),@Source nvarchar(50),@Cost money,@InsertDate datetime)
as
begin

insert into AddBook(BookID,Name,Edition,Author,NoofPages,Year,Source,Cost,InsertDate,Status)values(@BookID,@Name,@Edition,@Author,@NoofPages,@Year,@Source,@Cost,getdate(),1)

end
GO
/****** Object:  StoredProcedure [dbo].[small]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[small]
(@NoOf_studentIssuebooks int output)
as
begin
select @NoOf_studentIssuebooks=(select COUNT(Status) FROM StdIssueBook where Status=1)

end
GO
/****** Object:  StoredProcedure [dbo].[Referencebook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Referencebook]
(@StudentId nvarchar(50),@BookId nvarchar(50),@IssueDate nvarchar(50),@ReturnDate nvarchar(50),@Inserted int out)
as
begin

set @Inserted=0;

if exists(select 1 from StdRegistration, AddBook where BookId=@BookId and StudentId=@StudentId and Status=1)

 begin
		
        Update StdIssueBook set Status=0 where BookId=@BookId
		Update FacultyIssueBook set Status=0 where BookId=@BookId
		insert into RefferenceBook(StudentId,BookId,IssueDate,ReturnDate,Status)values(@StudentId,@BookId,@IssueDate,@ReturnDate,1)
		
	    Update Addbook set Status=0 where BookId=@BookId

        
          
 set @Inserted=1;

end
   else 
begin
	
    set @Inserted=0;
end

end
GO
/****** Object:  StoredProcedure [dbo].[AddbookswithCource]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddbookswithCource]
	(@SubjectName nvarchar(50),@CourseName nvarchar(50),@Inserted int out)
	
AS
BEGIN

--select SubjectName from Subjects where CourseName=(select Year	 from BookBankReg where StudentID=@StudentId)
if exists (select 1 from  AddBook,AddCourse where Name=@SubjectName and CourseName=@CourseName)
begin
    if not exists(select 1from Subjects where CourseName=@CourseName and SubjectName=@SubjectName)
    begin
    insert into  Subjects(SubjectName,CourseName)values(@SubjectName,@CourseName)
    set @Inserted=1;
    end;
else
set @Inserted=0;
end
END
GO
/****** Object:  StoredProcedure [dbo].[BookBankIssueBook]    Script Date: 01/05/2017 22:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[BookBankIssueBook]
(@StudentId nvarchar(50),@BookId nvarchar(50),@IssueDate datetime,@ActualReturnDate datetime,@StudentTypeID int,@totalbk int out, @Inserted int out)
as
begin

set @Inserted=0;
set @totalbk=0;
 if not exists(select 1 from StdRegistration,AddBook where BookId=@BookId and StudentId=@StudentId and Status=1 and @StudentTypeID=@StudentTypeID )
 begin
				if exists(select count(StudentId) from StdIssueBook HAVING count(StudentId)<10)
				begin   
				 
				   Update StdIssueBook set Status=0 where BookId=@BookId
				   Update FacultyIssueBook set Status=0 where BookId=@BookId
				set @totalbk=1;

				   insert into StdIssueBook(StudentId,BookId,IssueDate,ActualReturnDate,Status)values(@StudentId,@BookId,getdate(),getdate(),1)
				   set @Inserted=1;
				   Update Addbook set Status=0 where BookId=@BookId

		end;
		else
				set @Inserted=0;
				set @totalbk=0;
		end
 else if  exists(select 1 from StdRegistration, AddBook where BookId=@BookId and StudentId=@StudentId and Status=1 )
 begin
		if exists(select count(StudentId) from StdIssueBook HAVING count(StudentId)<10)
		begin   
		 
		   Update StdIssueBook set Status=0 where BookId=@BookId
			Update FacultyIssueBook set Status=0 where BookId=@BookId
		set @totalbk=1;
end
    insert into StdIssueBook(StudentId,BookId,IssueDate,ActualReturnDate,Status)values(@StudentId,@BookId,@IssueDate,@ActualReturnDate,1)
	set @Inserted=1;
Update Addbook set Status=0 where BookId=@BookId

end;
else
set @Inserted=0;
set @totalbk=0;

end
GO
