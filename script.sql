USE [VocationalGuidance]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/29/2021 12:31:41 PM ******/
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
/****** Object:  Table [dbo].[BigFiveQuestions]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BigFiveQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[BigFiveResultId] [int] NOT NULL,
 CONSTRAINT [PK_BigFiveQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BigFiveResults]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BigFiveResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Result] [ntext] NULL,
 CONSTRAINT [PK_BigFiveResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BigFiveTrackers]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BigFiveTrackers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[TimeStamp] [nvarchar](max) NULL,
	[ResultId] [int] NOT NULL,
 CONSTRAINT [PK_BigFiveTrackers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[MetaTitle] [nvarchar](max) NULL,
	[ViewCount] [int] NOT NULL,
	[Content] [ntext] NULL,
	[Image] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifyDate] [datetime2](7) NOT NULL,
	[ModifyBy] [uniqueidentifier] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EnnegramResults]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnnegramResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ResultCode] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_EnnegramResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EnnegramTrackers]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnnegramTrackers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[TimeStamp] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_EnnegramTrackers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HollandMultipleChoices]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HollandMultipleChoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](250) NULL,
	[HLTableId] [int] NOT NULL,
 CONSTRAINT [PK_HollandMultipleChoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HollandResult]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HollandResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Table] [int] NOT NULL,
	[Result] [ntext] NULL,
 CONSTRAINT [PK_HollandResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HollandScore]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HollandScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Table] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[TimeStamp] [varchar](50) NULL,
 CONSTRAINT [PK_HollandScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HollandTables]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HollandTables](
	[HLTableId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_HollandTables] PRIMARY KEY CLUSTERED 
(
	[HLTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HollandTrackers]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HollandTrackers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Step] [int] NOT NULL,
	[Times] [int] NOT NULL,
	[TimeStamp] [varchar](50) NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT ('00000000-0000-0000-0000-000000000000'),
	[FinalTable] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_HollandTrackers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MbtiResults]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MbtiResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FinalResult] [nvarchar](max) NULL,
	[Explaination] [ntext] NULL,
 CONSTRAINT [PK_MbtiResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MbtiTables]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MbtiTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[AnswerA] [nvarchar](max) NULL,
	[AnswerB] [nvarchar](max) NULL,
	[Position] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_MbtiTables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MbtiTrackers]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MbtiTrackers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FinalResult] [nvarchar](max) NULL,
	[TimeStamp] [varchar](50) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MbtiTrackers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MIQuestions]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MIQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[TableId] [int] NOT NULL,
 CONSTRAINT [PK_MIQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MITables]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MITables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_MITables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MITrackers]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MITrackers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[TimeStamp] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MITrackers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[DoB] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
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
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 11/29/2021 12:31:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211005103620_Initial', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211005160620_AddIdentity', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211005165327_SeedingDataIdentity', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211108034826_add-column-FinalTable', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211112032343_AddBlogTable', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211116082945_AddMbtiChoices', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211117082455_Add-Column_MbtiTable.Position', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211126223320_Add_BigFive_Model', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211128093503_Add-Ennegram-Model', N'5.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211129033104_Add_MI_Model', N'5.0.10')
SET IDENTITY_INSERT [dbo].[BigFiveQuestions] ON 

INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (1, N'Lượng từ vựng của tôi rất nhiều', 4)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (2, N'Tôi thích ngăn nắp.', 2)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (3, N'Tôi rất dễ buồn.', 5)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (4, N'Cảm xúc tôi thay đổi thường xuyên.', 5)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (5, N'Tôi là sức sống của bữa tiệc.', 1)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (6, N'Tôi cảm thấy thoải mái khi ở gần mọi người.', 1)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (7, N'Tôi tràn đầy những ý tưởng.', 4)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (8, N'Tôi thích nói nhiều.', 1)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (9, N'Tôi có trí tưởng tượng tốt', 4)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (10, N'Tôi dành thời gian cho những người khác.', 3)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (11, N'Tôi thật sự có hứng với người khác.', 3)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (12, N'Tôi ít khi lăng mạ người khác.', 3)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (13, N'Tôi lo đủ chuyện.', 5)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (14, N'Tôi lúc nào cũng chuẩn bị trước.', 2)
INSERT [dbo].[BigFiveQuestions] ([Id], [Question], [BigFiveResultId]) VALUES (15, N'Tôi phấn khích với công việc của mình', 2)
SET IDENTITY_INSERT [dbo].[BigFiveQuestions] OFF
SET IDENTITY_INSERT [dbo].[BigFiveResults] ON 

INSERT [dbo].[BigFiveResults] ([Id], [Name], [Result]) VALUES (1, N'Hướng ngoại (extraversion) – Hòa đồng/mạnh mẽ vs. đơn độc/kín đáo.', N'<h4>Hướng ngoại (extraversion) – hòa đồng/mạnh mẽ vs. đơn độc/kín đáo.</h4><p>Đặc điểm của tính cách hướng ngoại là bề rộng của các mối quan hệ và các hoạt động (đối nghịch với chiều sâu). Người có điểm hướng ngoại cao thường cảm thấy các bữa tiệc tùng và đủ loại hoạt động là nguồn năng lượng của mình. Họ thích tìm kiếm và cần các nguồn kích thích từ môi trường xung quanh, cơ hội để gia nhập với người khác. Họ cũng thường rất hăng hái, nhiệt tình, theo trường phái hành động, làm trước nghĩ sau, thích nói chuyện và khẳng định mình. Họ muốn thay đổi cả thế giới hơn là hiểu về nó, và họ thường học hành rất tốt ở trường trung học nhưng có thể nhận ra đại học quá khó cho mình. Người hướng ngoại như một biến số thích chuyển động, dễ hiểu và dễ tiếp cận. Thái độ của họ thường rất tự tin và thoải mái. Thường thì những người này được miêu tả như tràn trề sức sống và rất tích cực. Trong công việc, họ thường thích làm việc với người khác và thích các công việc có chiều&nbsp;rộng hơn chiều sâu.</p><p>Còn người hướng nội (người có điểm hướng ngoại thấp) thường ít hòa mình với xã hội. Nếu như các mối quan hệ, tiệc tùng, hoạt động là nguồn năng lượng của người hướng ngoại thì người hướng nội nạp năng lượng cho mình bằng cách ở một mình. Họ thường rất yên lặng, không nổi bật và không hòa nhập nhiều. Sự thiếu hụt hòa nhập xã hội này không nên được lý giải như ngại ngùng hay trầm uất, thay vào đó họ thường độc lập khỏi thế giới ngoại giao của mình hơn người hướng ngoại. Người hướng nội cần ít sự kích thích và cần nhiều thời gian ở một mình hơn người hướng ngoại. Điều này không có nghĩa là họ không thân thiện hay phản xã hội mà là họ thường kín đáo hơn trong các tình huống xã hội. Năng lượng của họ tập trung vào thế giới bên trong họ với những suy nghĩ hơn là sự kích thích bên ngoài. Thay vì thay đổi thế giới thì người hướng nội lại thích nghĩ và tìm hiểu về nó hơn. Họ suy nghĩ rất sâu về nhiều thứ và thường học tốt ở bậc đại học hơn là trung học. Họ cũng thích những công việc có chiều&nbsp;sâu hơn chiều&nbsp;rộng.</p>')
INSERT [dbo].[BigFiveResults] ([Id], [Name], [Result]) VALUES (2, N'Tận tâm (conscientiousness) – hiệu quả/thiết lập vs. dễ dãi/ bất cẩn', N'<h4>Tận tâm (conscientiousness) – Hiệu quả/thiết lập vs. dễ dãi/ bất cẩn</h4><p>Xu hướng làm việc theo hệ thống và đáng tin cậy, có kỷ luật cho bản thân mình, có trách nhiệm với công việc và thường lên kế hoạch mọi thứ trước hơn là hành động bộc phát bốc đồng. Người có điểm cao ở mặt này thường có mong muốn hoàn thành công việc được giao một cách tốt nhất, và thường đặt ra mục tiêu để đạt được những thành tựu trong công việc. Do đó có đôi khi họ được miêu tả như những người cứng đầu. Những đặc điểm tính cách của họ bao gồm ngăn nắp, có hệ thống, cẩn thận, hoàn hảo, suy tính thiệt hơn. Ví dụ như những quyển sách được sắp trên kệ sách nhà họ theo bảng chữ cái, hoặc theo chủ đề hơn là quăng lung tung trong phòng. Quần áo được xếp ngăn nắp bỏ vào tủ hơn là vương vãi trên sàn nhà. Trong công việc, họ là những nhân viên chăm chỉ , tuy nhiên ở mức độ cực điểm, họ có thể là những người “cuồng công việc”, theo chủ nghĩa hoàn hảo (perfectionism) và có những hành vi cưỡng chế (compulsive)</p><p>Những người có điểm thấp ở mặt tính cách này thường rất dễ dãi, không có mục tiêu nhất định, thường không đáng tin cậy. Một số nghiên cứu chỉ ra những người có điểm thấp thường có xu hướng phạm pháp, cũng như thất nghiệp, vô gia cư và tù tội. Họ cũng gặp khó khăn khi tiết kiệm tiền. Hơn nữa một người có chỉ số tận tâm và dễ chịu thấp thì thường lạm dụng chất kích thích nhiều hơn.</p>')
INSERT [dbo].[BigFiveResults] ([Id], [Name], [Result]) VALUES (3, N'Dễ chịu (agreeableness) – thân thiện/có lòng trắc ẩn vs. cứng nhắc/tách biệt', N'<h4>Dễ chịu (agreeableness) – thân thiện/có lòng trắc ẩn vs. cứng nhắc/tách biệt</h4><p>Xu hướng dễ động lòng và hợp tác hơn là nghi ngờ và đối nghịch. Những đặc điểm hành vi của mặt tính cách này được coi là tốt bụng, thông cảm, hợp tác, ấm áp và quan tâm. Những người có điểm cao ở mặt này thường có xu hướng tin rằng đa phần mọi người rất trung thực, tốt bụng và đáng tin cậy. Họ thường có lòng vị tha và hay giúp đỡ người khác. Những thực nghiệm cho thấy đa số người ta giúp đỡ những người nào giống mình, hoặc chỉ giúp đỡ khi thấy thấu cảm cho người khác. Tuy nhiên những người có chỉ số dễ chịu cao thường giúp người khác ngay khi những điều trên không có mặt. Nói cách khác, những người dễ chịu thường có “đặc tính giúp đỡ” và không cần bất cứ động lực gì khi giúp đỡ. Những người này được miêu tả như ngây thơ và dễ bảo.</p><p>Ngược lại với tính thích giúp đỡ của người dễ chịu, những người có điểm thấp ở mặt này thường gây tổn thương đến những người khác. Những nhà nghiên cứu chỉ ra mối tương quan giữa độ dễ chịu thấp với những suy nghĩ nóng nảy và kích động ở thanh thiếu niên. Những người có độ dễ chịu thấp cũng thường có định kiến chống lại những nhóm bị bêu xấu như béo phì. Độ dễ chịu thấp cũng có tương quan tới một số bệnh tâm lý như xu hướng ái kỷ (yêu bản thân) và phản xã hội. Những người này thường có tính cạnh tranh, thách thức cao, có đôi khi được coi là khiêu khích hoặc không đáng tin.</p>')
INSERT [dbo].[BigFiveResults] ([Id], [Name], [Result]) VALUES (4, N'Sẵn sàng trải nghiệm (openness to experience) – sáng tạo/hiếu kỳ vs. kiên định/chắc chắn', N'<h4>Sẵn sàng trải nghiệm (openness to experience) – sáng tạo/hiếu kỳ vs. kiên định/chắc chắn</h4><p>Thích phiêu lưu trải nghiệm, trân trọng&nbsp;nghệ thuật, hiếu kỳ, có những ý tưởng độc đáo, có óc thẩm mỹ… là các đặc điểm của mặt tính cách này. Nó phản ứng mức độ hiếu kỳ một cách thông minh, tính sáng tạo thích trải nghiệm mà một người có. Những người có điểm cao ở mặt này thường rất khó dự đoán và không tập trung. Họ dễ lĩnh hội những tin tức giải trí và thách thức những mặt văn hóa của cuộc sống cũng như những suy nghĩ và cảm xúc cá nhân. Một số nghiên cứu tìm ra mối tương quan tích cực&nbsp; giữa mặt tính cách này và các bài kiểm tra IQ.&nbsp; Họ có trí thông minh kết tinh, tức là khả năng vận dụng kiến thức, kỹ năng và kinh nghiệm cao. Các nghiên cứu khác cũng tìm ra những nền văn hóa đặt cao những giá trị sẵn sàng trải nghiệm này thường có tỷ lệ sử dụng chất kích thích cao.</p><p>Người có điểm thấp ở mặt này thường thực dụng, võ đoán và làm việc theo dữ liệu, đôi lúc thường được mô tả như quyết đoán và cứng nhắc. Họ thường rất truyền thống trong hành vi, và vẻ ngoài của mình, thích làm việc theo guồng quay nhất định, không thích trải nghiệm những thứ mới mẻ và có ít sở thích hơn. Vì thế họ thường gặp khó khăn khi thích ứng với sự thay đổi. Cảm xúc của họ rất phẳng lặng và khả năng chịu đựng thấp đối với những thế giới quan khác biệt.</p>')
INSERT [dbo].[BigFiveResults] ([Id], [Name], [Result]) VALUES (5, N'Tâm lý bất ổn (neuroticism) – nhạy cảm/hoảng sợ vs. vững chắc/tự tin.', N'<h4>Tâm lý bất ổn (neuroticism) – nhạy cảm/hoảng sợ vs. vững chắc/tự tin.</h4><p>Xu hướng dễ trải nghiệm những cảm xúc tiêu cực ví dụ như giận dữ, lo âu, trầm cảm, dễ tổn thương. Tâm lý bất ổn cũng chỉ mức độ vững chắc của cảm xúc và khả năng kiềm chế sự bốc bồng. Những người có điểm cao ở mặt này thường trải nghiệm những cảm xúc u uất, giận dữ, lo sợ, tội lỗi, và ganh ghét cao hơn người thường. Họ phản ứng rất tệ với stress và thường lý giải những tình huống bình thường dưới dạng nguy hiểm, đáng lo ngại và những khó khăn nhỏ là cực kỳ tuyệt vọng. Họ chú ý quá mức đến vẻ bề ngoài hoặc hành vi của bản thân và gặp khó khăn trong việc kiềm nén những sự thôi thúc.</p><p>Ngược lại, những người có chỉ số thấp thường có cảm xúc vững chãi hơn, ít dao động và ít phản ứng với stress hơn. Họ thường có xu hướng bình tĩnh, không nóng nảy, và ít khi cảm thấy căng thẳng. Mặc dù họ có ít cảm xúc tiêu cực nhưng điều này không có nghĩa là họ trải nghiệm cảm xúc tích cực cao. Trải nghiệm tích cực cao là một đặc điểm của mặt hướng ngoại. Những người hướng ngoại có tâm lý bất ổn có thể trải nghiệm cảm xúc tích cực lẫn tiêu cực cao, dao động y như tàu lượn siêu tốc. Còn những người có điểm tâm lý bất ổn thấp (đặc biệt với những người hướng ngoại) thì có những báo cáo cho thấy họ hạnh phúc và hài lòng với cuộc sống của mình hơn.</p>')
SET IDENTITY_INSERT [dbo].[BigFiveResults] OFF
SET IDENTITY_INSERT [dbo].[BigFiveTrackers] ON 

INSERT [dbo].[BigFiveTrackers] ([Id], [UserId], [TimeStamp], [ResultId]) VALUES (1, N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'11/28/2021 5:32:22 AM', 5)
INSERT [dbo].[BigFiveTrackers] ([Id], [UserId], [TimeStamp], [ResultId]) VALUES (2, N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'11/28/2021 5:35:53 AM', 3)
SET IDENTITY_INSERT [dbo].[BigFiveTrackers] OFF
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (1, N'Sáng tạo để thành công', N'Sáng tạo để thành công', N'sang-tao-de-thanh-cong', 5, N'<h2><strong>Bài học thành công số 6: Thất bại là cơ hội để học hỏi</strong></h2><p><strong>Thất bại và thành công</strong>, hai khía cạnh tưởng chừng đối lập nhưng lại <strong>luôn song hành</strong>. Thất bại là cơ hội cho chúng ta học hỏi, thay đổi và nỗ lực hơn để thành công. Biết vươn lên sau thất bại chính là một loại thành công nhưng sau khi thành công mà buông bỏ một cách dễ dàng đó chính là thất bại. Vì vậy, hãy tạo cho mình suy nghĩ về sự thất bại như là cơ hội để học hỏi, dấu mốc của thành công và thất bại là một trong những <a href="https://www.mindalife.vn/cai-gia-cua-thanh-cong/"><strong>cái giá của thành công</strong></a>.</p><p>Henry Ford đã từng nói rằng “Thất bại là cơ hội để bắt đầu lại một lần nữa nhưng lần này là thông minh hơn”. Edison cũng đã làm với “10 nghìn” sai lầm của mình để có một thành công đặc biệt. Nói chung, mỗi thất bại là một bài học kinh nghiệm giúp bạn đi đúng hướng.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-7.png" alt="Bài học thành công số 6: Thất bại là cơ hội để học hỏi"></figure><p><i>Thất bại là cơ hội để học hỏi</i></p><h2><strong>Bài học thành công số 7: Sự khác biệt đến từ thái độ về sự thất bại</strong></h2><p>Bài học thành công trong kinh doanh số 7 chính là sự khác biệt đến từ thái độ về sự thất bại. Winston Churchill từng nói “Thành công là khả năng đi từ thất bại đến thất bại mà không mất đi sự nhiệt tình”. Anh quốc đã gặp rất nhiều bất lợi lớn trong thế chiến thứ II. Tuy nhiên, Winston Churchill luôn có thái độ tích cực về những bất lợi đó và có những thay đổi mang tính lịch sử trong trận chiến này.</p><h2><strong>Bài học thành công số 8: Không bao giờ bỏ cuộc</strong></h2><p>Dù có thất bại cũng không bao giờ nghĩ đến bỏ cuộc. Đây là bài học được chia sẻ từ những người thành công. Con đường kinh doanh của ông Phạm Nhật Vượng – Chủ tịch tập đoàn VinGroup không hề trải đầy “hoa hồng” như bạn vẫn nghĩ. Đã có rất nhiều khó khăn xuất hiện nhưng dựa vào tài năng, tầm nhìn và bản lĩnh “thép” trên thương trường, ông đã phát triển VinGroup mạnh mẽ như hôm nay.</p><p>Một trong những huấn luyện viên nổi tiếng của bộ môn bóng bầu dục Mỹ Vince Lombardi đã từng chia sẻ “Người chiến thắng không bao giờ bỏ cuộc, người bỏ cuộc không bao giờ chiến thắng”. Rất ít thành công không phải trải qua khó khăn và thất bại. Khi đó, những người biết đứng dậy sau thất bại và vững vàng bước tiếp về phía trước mới có thể chạm tới thành công.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1.jpg" alt="Bài học thành công số 8: Không bao giờ bỏ cuộc" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1.jpg 598w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1-415x400.jpg 415w" sizes="100vw" width="598"></figure><p><i>Dù có thất bại cũng không bao giờ nghĩ đến bỏ cuộc</i></p><h2><strong>Bài học thành công số 9: Không phải ai cũng ủng hộ bạn</strong></h2><p>Trên con đường thành công, không phải tất cả mọi người đều ủng hộ bạn. Một số người sẽ công kích, ghen tuông, giận dữ, dè bỉu nhưng thật ra tất cả đều không quan trọng như bạn nghĩ. Nhà văn nổi tiếng Dr. Seuss từng chia sẻ “Những người thực sự quan trọng sẽ chẳng mấy bận tâm, những kẻ bận tâm lại chẳng mấy quan trọng”. Cho nên, không cần phí công sức và thời gian để làm hài lòng mọi người, hãy dành năng lượng cho những con người thực sự quan trọng và những điều ý nghĩa đối với cuộc sống của bạn.</p><h2><strong>Bài học thành công số 10: Can đảm vượt qua thử thách</strong></h2><p>Can đảm vượt qua thử thách là một trong những yếu tố tạo nên thành công. John Stephen Akhwari từng chạy vòng tròn 400m khi vết thương ở chân vẫn đang chảy máu. Còn Akhwari đã ngã và bị thương trên đường chạy, tất cả mọi người đã đứng lên, vỗ tay cho đến khi anh về đích. Akhwari đã quên đi nỗi đau trước mắt, chỉ chú tâm vào mục đích lớn đó là hoàn thành cuộc thi.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8.jpg" alt="Bài học thành công số 10: Can đảm vượt qua thử thách" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8.jpg 600w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8-400x400.jpg 400w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8-280x280.jpg 280w" sizes="100vw" width="600"></figure><p><i>Can đảm là một trong những yếu tố tạo nên thành công</i></p><p>Để đến được với thành công bất cứ ai trong chúng ta cũng từng trải qua thất bại ít nhất một lần. Buồn tủi, lo lắng, chán nản, bỏ cuộc,… là cách mà nhiều người đã lựa chọn, kết quả chỉ là thất bại nối tiếp thất bại. Hãy biến thất bại thành những bài học thành công quý giá, làm hành trang trên con đường dẫn tới thành công.</p><p>Để lại bình luận bên dưới bài viết nếu bạn còn băn khoăn hoặc muốn thảo luận với Mindalife. Thường xuyên truy cập <a href="https://www.mindalife.vn/"><strong>mindalife.vn</strong></a> để không bỏ lỡ những bài chia sẻ hữu ích về kỹ năng, phương pháp phát triển bản thân hiệu quả.</p>', N'study-la-gi-e1625197257149.jpg', CAST(N'2021-11-12 17:22:13.1476557' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'2021-11-15 16:41:48.0529742' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', 1)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (2, N'Người thành công luôn có lối đi riêng', N'Bí quyết thành công', N'bi-quyet-thanh-cong', 2, N'Người thành công', N'congrat-removebg-preview.png', CAST(N'2021-11-13 15:07:16.0487055' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 2)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (4, N'Tri ân thầy cô', N'Thầy cô chính là người cầm tay, mở ra trí óc và chạm đến trái tim', N'thay-co-chinh-la-nguoi-cam-tay,-mo-ra-tri-oc-va-cham-den-trai-tim', 1, N'<figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-696x375.jpg" alt="" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-696x375.jpg 696w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-300x162.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-1024x552.jpg 1024w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-768x414.jpg 768w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-150x81.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-1068x575.jpg 1068w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-780x420.jpg 780w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL-50x27.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/2021-1118_BLOG-THUMBNAIL.jpg 1201w" sizes="100vw" width="696"></figure><p>Mỗi năm, cứ đến tháng 11 thì không khí chào đón ngày <strong>Nhà giáo Việt Nam 20.11</strong> lại rộn ràng hơn bao giờ hết. Đây là cơ hội để học trò gần xa dù vẫn đang ngồi trên ghế nhà trường hay đã trải qua bao mùa thanh xuân giảng đường được gặp gỡ, chia sẻ, bày tỏ lòng biết ơn đến quý thầy cô – những người đã dìu dắt, dạy bảo chúng ta nên người.&nbsp;</p><p>Năm nay, dẫu không thể trực tiếp ngồi xuống để cùng thầy cô kính mến ôn lại kỷ niệm xưa thì đâu đó những tấm lòng vẫn luôn hướng về – bằng cách này hay cách khác.&nbsp;</p><p>Nhân dịp đặc biệt này, chúng em cũng xin gửi những lời chúc tốt đẹp nhất đến thầy cô, kính chúc quý thầy cô sức khỏe, hạnh phúc và luôn đủ<strong> tâm – trí – lực</strong> để cống hiến nhiều hơn nữa cho sự nghiệp trồng người!</p>', N'2021-1118_blog-thumbnail-696x375.jpg', CAST(N'2021-11-29 12:17:46.4228381' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (5, N'Thi khối D', N'Thi khối D gồm những ngành nào? Môn nào, các trường học khối D', N'thi-khoi-d-gom-nhung-nganh-nao?-mon-nao,-cac-truong-hoc-khoi-d', 1, N'<figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-696x391.jpg" alt="Sinh viên các trường đại học khối D" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-696x391.jpg 696w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-300x169.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-1024x576.jpg 1024w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-768x432.jpg 768w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-150x84.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-1068x601.jpg 1068w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-747x420.jpg 747w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d-50x28.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/sinh-vien-cac-truong-dai-hoc-khoi-d.jpg 1380w" sizes="100vw" width="696"></figure><p><i>Sinh viên các trường đại học khối D</i></p><p>Lựa chọn khối thi là điều hết sức quan trọng đối với bất kì một thí sinh nào, bởi việc xác định sớm khối thi sẽ giúp các em có định hướng học rõ ràng và từ đó lựa chọn ngành nghề phù hợp với bản thân. Trong đó, ban D luôn được nhiều thí sinh lựa chọn bởi đây là khối thi truyền thống và cũng là tổ hợp môn bắt buộc mà Bộ giáo dục yêu cầu.</p><p>Vậy <a href="https://jobtest.vn/hrblog/vi/post/thi-khoi-d-gom-nhung-nganh-nao/"><strong>thi khối D gồm những ngành nào?</strong></a> Thi khối D gồm những môn nào? Những nghề nghiệp khối D sẽ hot trong tương lai là gì? Hãy cùng tìm hiểu một cách chi tiết ngay trong bài viết dưới đây!</p><h2>Khối D gồm những môn nào? Các tổ hợp môn khối D</h2><p>Các tổ hợp môn thi khối D (từ D01 – D99) sẽ có công thức gồm 3 môn:</p><p>1 môn toán/ văn + 1 môn ngoại ngữ +1 môn tự nhiên/ xã hội, cụ thể là:</p><ul><li>D01: Ngữ văn, Toán, Tiếng Anh</li><li>D02: Ngữ văn, Toán, Tiếng Nga</li><li>D03: Ngữ văn, Toán, Tiếng Pháp</li><li>D04: Ngữ văn, Toán, Tiếng Trung</li><li>D05: Ngữ văn, Toán, Tiếng Đức</li><li>D06: Ngữ văn, Toán, Tiếng Nhật</li><li>D07: Toán, Hóa học, Tiếng Anh</li><li>D08: Toán, Sinh học, Tiếng Anh</li><li>D09: Toán, Lịch sử, Tiếng Anh</li><li>D10: Toán, Địa lí, Tiếng Anh</li><li>D11: Ngữ văn, Vật lí, Tiếng Anh</li><li>D12: Ngữ văn, Hóa học, Tiếng Anh</li><li>D13: Ngữ văn, Sinh học, Tiếng Anh</li><li>D14: Ngữ văn, Lịch sử, Tiếng Anh</li><li>D15: Ngữ văn, Địa lí, Tiếng Anh</li><li>D16: Toán, Địa lí, Tiếng Đức</li><li>D17: Toán, Địa lí, Tiếng Nga</li><li>D18: Toán, Địa lí, Tiếng Nhật</li><li>D19: Toán, Địa lí, Tiếng Pháp</li><li>D20: Toán, Địa lí, Tiếng Trung</li><li>D21: Toán, Hóa học, Tiếng Đức</li><li>D22: Toán, Hóa học, Tiếng Nga</li><li>D23: Toán, Hóa học, Tiếng Nhật</li><li>D24: Toán, Hóa học, Tiếng Pháp</li><li>D25: Toán, Hóa học, Tiếng Trung</li><li>D26: Toán, Vật lí, Tiếng Đức</li><li>D27: Toán, Vật lí, Tiếng Nga</li><li>D28: Toán, Vật lí, Tiếng Nhật</li><li>D29: Toán, Vật lí, Tiếng Pháp</li><li>D30: Toán, Vật lí, Tiếng Trung</li><li>D31: Toán, Sinh học, Tiếng Đức</li><li>D32: Toán, Sinh học, Tiếng Nga</li><li>D33: Toán, Sinh học, Tiếng Nhật</li><li>D34: Toán, Sinh học, Tiếng Pháp</li><li>D35: Toán, Sinh học, Tiếng Trung</li><li>D41: Ngữ văn, Địa lí, Tiếng Đức</li><li>D42: Ngữ văn, Địa lí, Tiếng Nga</li><li>D43: Ngữ văn, Địa lí, Tiếng Nhật</li><li>D44: Ngữ văn, Địa lí, Tiếng Pháp</li><li>D45: Ngữ văn, Địa lí, Tiếng Trung</li><li>D52: Ngữ văn, Vật lí, Tiếng Nga</li><li>D54: Ngữ văn, Vật lí, Tiếng Pháp</li><li>D55: Ngữ văn, Vật lí, Tiếng Trung</li><li>D61: Ngữ văn, Lịch sử, Tiếng Đức</li><li>D62: Ngữ văn, Lịch sử, Tiếng Nga</li><li>D63: Ngữ văn, Lịch sử, Tiếng Nhật</li><li>D64: Ngữ văn, Lịch sử, Tiếng Pháp</li><li>D65: Ngữ văn, Lịch sử, Tiếng Trung</li><li>D66: Ngữ văn, Giáo dục công dân, Tiếng Anh</li><li>D68: Ngữ văn, Giáo dục công dân, Tiếng Nga</li><li>D69: Ngữ Văn, Giáo dục công dân, Tiếng Nhật</li><li>D70: Ngữ Văn, Giáo dục công dân, Tiếng Pháp</li><li>D72: Ngữ văn, Khoa học tự nhiên, Tiếng Anh</li><li>D73: Ngữ văn, Khoa học tự nhiên, Tiếng Đức</li><li>D74: Ngữ văn, Khoa học tự nhiên, Tiếng Nga</li><li>D75 Ngữ văn, Khoa học tự nhiên, Tiếng Nhật</li><li>D76: Ngữ văn, Khoa học tự nhiên, Tiếng Pháp</li><li>D77: Ngữ văn, Khoa học tự nhiên, Tiếng Trung</li><li>D78: Ngữ văn, Khoa học xã hội, Tiếng Anh</li><li>D79: Ngữ văn, Khoa học xã hội, Tiếng Đức</li><li>D80: Ngữ văn, Khoa học xã hội, Tiếng Nga</li><li>D81: Ngữ văn, Khoa học xã hội, Tiếng Nhật</li><li>D82: Ngữ văn, Khoa học xã hội, Tiếng Pháp</li><li>D83: Ngữ văn, Khoa học xã hội, Tiếng Trung</li><li>D84: Toán, Giáo dục công dân, Tiếng Anh</li><li>D85: Toán, Giáo dục công dân, Tiếng Đức</li><li>D86: Toán, Giáo dục công dân, Tiếng Nga</li><li>D87: Toán, Giáo dục công dân, Tiếng Pháp</li><li>D88: Toán, Giáo dục công dân, Tiếng Nhật</li><li>D90: Toán, Khoa học tự nhiên, Tiếng Anh</li><li>D91: Toán, Khoa học tự nhiên, Tiếng Pháp</li><li>D92: Toán, Khoa học tự nhiên, Tiếng Đức</li><li>D93: Toán, Khoa học tự nhiên, Tiếng Nga</li><li>D94: Toán, Khoa học tự nhiên, Tiếng Nhật</li><li>D95: Toán, Khoa học tự nhiên, Tiếng Trung</li><li>D96: Toán, Khoa học xã hội, Anh</li><li>D97: Toán, Khoa học xã hội, Tiếng Pháp</li><li>D98: Toán, Khoa học xã hội, Tiếng Đức</li><li>D99: Toán, Khoa học xã hội, Tiếng Nga<br>&nbsp;</li></ul>', N'study-la-gi-e1625197257149.jpg', CAST(N'2021-11-29 12:18:57.8467706' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'2021-11-29 12:25:15.0314565' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', 2)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (6, N'8 Kỹ năng làm việc nhóm', N'8 Kỹ năng làm việc nhóm giúp bạn làm việc hiệu quả', N'8-ky-nang-lam-viec-nhom-giup-ban-lam-viec-hieu-qua', 1, N'<p><i><strong>Làm việc nhóm</strong> là cách giúp mọi người hoàn thành công việc tốt nhất vì một mục tiêu chung. Với </i><a href="https://jobtest.vn/hrblog/vi/post/ky-nang-lam-viec-nhom/"><i><strong>kỹ năng năng làm việc nhóm</strong></i></a><i>, mỗi cá nhân sẽ được trợ giúp, bổ sung những thiếu sót của nhau và phát huy thế mạnh của họ từ đó hoàn thành tốt công việc được giao.</i></p><p><i>Cùng tìm hiểu chi tiết các kỹ năng giúp bạn làm việc hiệu quả ngay nhé!</i></p><figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-300x169.jpg" alt="Kỹ năng làm việc nhóm" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-300x169.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-1024x576.jpg 1024w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-768x432.jpg 768w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-150x84.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-696x392.jpg 696w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-1068x601.jpg 1068w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-747x420.jpg 747w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom-50x28.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/ky-nang-lam-viec-nhom.jpg 1280w" sizes="100vw" width="600"></figure><p><i>Kỹ năng làm việc nhóm</i></p><h2>1. Kỹ năng làm việc nhóm là gì?</h2><p><strong>Kỹ năng làm việc nhóm</strong> được hiểu là tập hợp các năng lực có liên quan với nhau cho phép mỗi cá nhân làm việc hiệu quả vì mục tiêu chung của nhóm.&nbsp;</p><p><strong>Làm việc nhóm</strong> chính là khả năng thiết lập, duy trì những mối quan hệ làm việc tích cực giữa các thành viên với nhau mà đích đến cuối cùng chính là kết quả, mục tiêu công việc cần đạt được. Qua làm việc nhóm, mỗi người sẽ thúc đẩy được kỹ năng phát triển bản thân, tiếp nhận kiến thức, đưa ra ý kiến và học hỏi kinh nghiệm từ người khác.</p><h2>2. Những lợi ích và ý nghĩa của việc làm việc nhóm</h2><p>Chúng ta chắc hẳn không còn mấy xa lạ đến câu nói :”Một cây làm chẳng nên non, ba cây chụm lại nên hòn núi cao” khi nói đến hiệu quả của làm việc nhóm.&nbsp; Cùng điểm qua những lợi ích và ý nghĩa của <strong>làm việc nhóm</strong>:&nbsp;</p><h3>2.1 Cải thiện kỹ năng giao tiếp giữa các thành viên</h3><p><strong>Làm việc nhóm </strong>đòi hỏi mỗi thành viên phải giao tiếp, thảo luận với nhau và từ đó thống nhất đưa ra quyết định cuối cùng để hoàn thành mục tiêu chung.&nbsp; Làm việc theo nhóm thường xuyên sẽ giúp phát triển kỹ năng làm việc theo nhóm: trình bày ý kiến, giao tiếp, tranh luận,… từ đó cải thiện kỹ năng giao tiếp giữa các thành viên.</p><p>Việc thường xuyên làm việc nhóm giúp bạn rèn luyện tư duy phản biện, tranh luận, và cũng là cơ hội để gắn kết, sẻ chia, giúp đỡ nhau trong công việc và cuộc sống.</p><h3>2.2 Giải quyết vấn đề và tăng năng suất công việc</h3><p>Một trong những lợi ích và ý nghĩa của việc làm việc nhóm quan trọng nhất chính là giải quyết được vấn đề từ đó tăng năng suất công việc. <strong>Làm việc nhóm</strong> là tổ hợp đa ý tưởng của các thành viên, tận dụng từng thế mạnh của mỗi người, họ sẽ cùng nhau đóng góp ý kiến, chọn lọc, cùng nhau chỉnh sửa để đi đến kết quả cuối cùng tốt nhất, giải quyết vấn đề hiệu quả, nhờ vậy mà năng suất công việc tăng cao.</p><h3>2.3 Thúc đẩy sự sáng tạo và đưa ra quyết định đúng đắn</h3><figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-300x189.jpg" alt="Thúc đẩy sự sáng tạo và đưa ra quyết định đúng đắn" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-300x189.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-1024x645.jpg 1024w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-768x484.jpg 768w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-1536x968.jpg 1536w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-150x95.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-696x438.jpg 696w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-1068x673.jpg 1068w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-667x420.jpg 667w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan-50x32.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/thuc-day-su-sang-tao-va-dua-ra-quyet-dinh-dung-dan.jpg 1600w" sizes="100vw" width="600"></figure><p><i>Thúc đẩy sự sáng tạo và đưa ra quyết định đúng đắn</i></p><p><strong>Làm việc nhóm</strong> là cùng nhau chia sẻ, đóng góp để đi đến mục tiêu công việc chung. Từ những ý tưởng của cá nhân, thì mỗi thành viên sẽ cùng nhau đóng góp để hoàn thiện hơn ý tưởng đó. Mỗi người được tự do nêu lên quan điểm và tận dụng thế mạnh của mình, thúc đẩy sự sáng tạo và đưa ra quyết định đúng nhất.&nbsp;</p><h3>2.4 Rèn tính kỷ luật</h3><p>Làm việc theo nhóm là làm trong một tập thể vì vậy mỗi cá nhân phải có ý thức, tuân theo quy định chung của nhóm để tránh ảnh hưởng đến công việc chung. Nhờ vậy mà mỗi cá nhân sẽ rèn luyện được tính kỷ luật cao.</p>', N'top-16-truong-co-muc-hoc-phi-thap-tai-tpchm.jpg', CAST(N'2021-11-29 12:22:09.6670949' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'2021-11-29 12:25:54.7257575' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', 2)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (7, N'ABCq', N'abc', N'abc', 0, N'<p>Seeding data</p>', N'', CAST(N'2021-11-29 12:22:42.4459792' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (8, N'Học Phí các trường ở TP HCM', N'Học Phí Các Trường Đại Học Công Lập Ở TPHCM Trường Nào Thấp?', N'hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-truong-nao-thap?', 0, N'<p>Trường đại học công lập luôn trở thành sự lựa chọn của nhiều những bạn thí sinh, bên cạnh mức học phí tương đối thấp so với các trường dân lập thì trường đại học công lập cũng có nhiều những ưu điểm khác. Vậy cụ thể <a href="https://jobtest.vn/hrblog/vi/post/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm/"><strong>học phí các trường đại học Công lập ở TPHCM</strong></a> là như thế nào? Và một số vấn đề liên quan đến trường công lập khác mà bạn cần biết là gì, qua bài viết dưới đây chúng ta sẽ cùng tìm hiểu.</p><figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-300x200.jpg" alt="Học phí các trường công lập ở TPHCM là bao nhiêu?" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-300x200.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-1024x683.jpg 1024w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-768x512.jpg 768w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-150x100.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-696x464.jpg 696w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-1068x712.jpg 1068w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-630x420.jpg 630w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-50x33.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm.jpg 1500w" sizes="100vw" width="600"></figure><p><i>Học phí các trường công lập ở TPHCM là bao nhiêu?</i></p><h2>1. Học phí đại học công lập ở Việt Nam có gì đáng chú ý?</h2><p>Một trong những điểm thay đổi đáng được các bạn thí sinh chuẩn bị lựa chọn vào các trường công lập quan tâm chính là quyết định của chính phủ về việc cho các trường công lập tự chủ về mặt tài chính. Điều đó có nghĩa là tùy theo điều kiện và chất lượng giáo dục cũng như dịch vụ kèm theo của từng trường mà có sẽ có những chính sách học phí khác nhau.</p><p>Những năm học tới, ngân sách nhà nước trước giờ dành cho các trường công lập sẽ được cắt giảm, điều này tương đương với việc các trường sẽ tăng mức học phí để bù vào mức cắt giảm đó. Chính vì thế khoảng cách học phí của các trường dân lập và công lập sẽ không còn lớn như nhưng năm học trước đó nữa.</p><figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-300x207.jpg" alt="Học phí trường đại học công lập TPHCM có gì đáng chú ý" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-300x207.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-150x104.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-218x150.jpg 218w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-696x480.jpg 696w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-609x420.jpg 609w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-100x70.jpg 100w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y-50x35.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/hoc-phi-truong-dai-hoc-cong-lap-o-viet-nam-co-gi-dang-chu-y.jpg 752w" sizes="100vw" width="600"></figure><p><i>Học phí trường đại học công lập TPHCM có gì đáng chú ý</i></p><p>Nếu như năm học 2021-2022 chưa ghi nhận nhiều mức tăng về học phí thì trong năm học tiếp theo là 2022-2023 mức học phí dự sẽ tăng trần rất cao.</p><p>Theo nghị định 81/2021 thì mức học phí các năm học từ 2022-2025 sẽ tăng đều mỗi năm. Đây sẽ là thông tin các bạn cần quan tâm rất nhiều để có thể chuẩn bị sẵn sàng tài chính để theo đuổi con đường học vấn mà không bị gián đoạn và áp lực về kinh tế khi lựa chọn theo học một ngôi trường nào đó.</p><p>Hiện tại các trường công lập tại Việt Nam được chia ra thành 2 nhóm trường, sự phân chia này được dựa theo sự tự chủ về tài chính</p><p>Nhóm trường đầu tiên là nhóm trường chưa tự chủ về tài chính và vẫn được ngân sách nhà nước hỗ trợ một phần. Điều này tất nhiên sẽ dẫn đến mức học phí ở nhóm trường này vẫn chưa tăng và duy trì như mức trước giờ. Mức học phí ở những nhóm trường này còn khá thấp, trung bình dao động từ 9 triệu đến 11 triệu đồng.</p><p>Nhóm trường thứ 2 là nhóm trường đã có chủ trương tự chủ về tài chính. Theo đó, mức học phí của những nhóm trường này sẽ tăng trần từ 2 đến 3 lần. Hiện tại danh sách có khoản hơn 20 trường đã tự chủ về tài chính và đã có kế hoạch công bố mức học phí mới.</p><p>Đó là phân theo các nhóm trường và nói về mức học phí trung bình. Trong mỗi trường lại có rất nhiều ngành đào tạo và chương trình học khác nhau, căn cứ vào đó sẽ có mức học phí tương thích.</p><h2>2. Danh sách 23 trường đại học công lập ở TPHCM tự chủ tài chính</h2><figure class="image"><img src="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/danh-sach-cac-truong-dai-hoc-cong-lap-tphcm-tu-chu-tai-chinh-300x193.jpg" alt="Danh sách các trường công lập TPHCM tự chủ tài chính" srcset="https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/danh-sach-cac-truong-dai-hoc-cong-lap-tphcm-tu-chu-tai-chinh-300x193.jpg 300w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/danh-sach-cac-truong-dai-hoc-cong-lap-tphcm-tu-chu-tai-chinh-150x97.jpg 150w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/danh-sach-cac-truong-dai-hoc-cong-lap-tphcm-tu-chu-tai-chinh-50x32.jpg 50w, https://jobtest.vn/hrblog/vi/wp-content/uploads/2021/11/danh-sach-cac-truong-dai-hoc-cong-lap-tphcm-tu-chu-tai-chinh.jpg 618w" sizes="100vw" width="600"></figure><p><i>Danh sách các trường công lập TPHCM tự chủ tài chính</i></p><p>Điều các bạn quan tâm hiện tại chắc chắn là danh sách các trường đã thực hiện quy định về tự chủ tài chính. Dưới đây là danh sách 23 trường công lập ở TPHCM đã tự chủ về tài chính:</p><p>Trường Đại học Bách Khoa – Đại học Quốc Gia TPHCM (ĐHQG TPHCM)</p><p>Trường Đại học Quốc tế – ĐHQG TPHCM</p><p>Trường Đại học Kinh tế – Luật</p><p>Khoa Y – ĐHQG TPHCM</p><p>Trường Đại học Tài chính – Marketing</p><p>Trường Đại học Công nghiệp TPHCM</p><p>Trường Đại học Kinh tế TPHCM</p><p>Trường Đại học Công nghiệp Thực phẩm TPHCM</p><p>Trường Đại học Luật TPHCM</p><p>Trường Đại học Y khoa Phạm Ngọc Thạch</p><p>Trường Đại học Ngoại thương</p><p>Trường Đại học Tôn Đức Thắng</p><p>Trường Đại học Hà Nội</p><p>Trường Đại học Mở TPHCM</p><p>Trường Đại học Kinh tế Quốc dân</p><p>Học viện Công nghệ Bưu chính Viễn thông</p><p>Trường Đại học Điện lực</p><p>Trường Đại học Bách Khoa Hà Nội</p><p>Trường Đại học Công nghiệp Hà Nội</p><p>Viện Đại học mở Hà Nội</p><p>Trường Đại học Sư phạm Kỹ thuật TPHCM</p><p>Trường Đại học Y dược Cần Thơ</p><p>Học viện nông nghiệp Việt Nam</p>', N'hoc-phi-cac-truong-dai-hoc-cong-lap-o-tphcm-630x420.jpg', CAST(N'2021-11-29 12:23:46.7768285' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 1)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Tin tức')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Cẩm nang')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[EnnegramResults] ON 

INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (1, N'CZ: THE REFORMER – Người cầu toàn', N'CZ', N'<figure class="image"><img src="https://lh6.googleusercontent.com/yyuvRH36MrBYynOluf6QgxDJGAMcgntF1ky5bA9nAQV6on2US2z8eA-bMpm2KXbzKALINp_l6Glgbme2uS-N3nLTMexwZZbz-5dfJ8oOawuVcwTul5NSg1-J-B0-vMw7ZePMMwE4"></figure><p>Họ là những người tận tâm, chu đáo, cẩn thận và sống dựa trên các tiêu chuẩn đạo đức và ý thức mạnh mẽ về cái đúng, cái sai. Họ là các giáo viên, những người tham gia các cuộc cải cách, vận động và những người ủng hộ cho sự thay đổi: luôn luôn cố gắng để cải thiện mọi thứ nhưng lại sợ gây ra lỗi lầm.</p><p>Có tổ chức, theo thứ tự và khó chiều, họ nỗ lực để duy trì những tiêu chuẩn cao nhất nhưng điều này dễ khiến họ sa vào cầu toàn và phán xét.</p><p>👉🏻<strong> Lời khuyên nho nhỏ</strong>: đừng quá chú ý vào chi tiết, học cách ủy nhiệm, không nên quá khắt khe, trước khi phê bình người khác cần suy nghĩ thấu đáo để tránh ứng xử quá hà khắc và gay gắt. Và quan trọng, phải hài lòng với bản thân.</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (2, N'CX: THE HELPER – Người tình cảm', N'CX', N'<figure class="image"><img src="https://lh4.googleusercontent.com/7197TcOdTM5FE10DFv7fUDm6S51xY9o3CWQ1caAKEWkd_MdIFHOi8vvdpsGEs0GTqDc_tBtb-mZLVmpcDAo44hkxvijQqNES3Qq210_Ar7c2XaBkc70y0Sp2P-AKWJuqh9cgejCJ"></figure><p>Họ là những người dễ cảm thông, thân thiện và có trái tim ấm áp. Họ gần gũi, hào phóng và sẵn sàng hy sinh bản thân mình nhưng cũng rất ủy mị, ưa nịnh và cố gắng làm hài lòng mọi người.</p><p>Họ có thiện chí và chủ động để hòa hợp với mọi người nhưng dễ bị sa vào hiện tượng sẵn sàng làm bất cứ thứ gì cho bất cứ ai chỉ để được công nhận.</p><p>👉🏻<strong>Lời khuyên nho nhỏ</strong>: cần quan tâm đến bản thân nhiều hơn, tự tạo lập ý thức cá nhân mạnh mẽ, học cách cân bằng giữa cảm xúc và thực tế.</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (3, N'AZ: THE ACHIEVER – Người tham vọng', N'AZ', N'<figure class="image"><img src="https://lh5.googleusercontent.com/xPSIJv34sIOx7sXgBvcAmpCXG1m7Tli3qrQX1pYMX9clf0dFo8N92Cor9vLZUqGzj7dftV-qG8KlqNDtQoCgOE8xs9VVk4_w88Oha-lWsUDYMJuCCZQ_0rHHKMsBCa8XfaFRvX-w"></figure><p>Họ là những người dễ tạo sự tin tưởng, hấp dẫn và lôi cuốn. Sống có hoài bão, tài năng và tràn đầy năng lượng, nhóm 3 cũng muốn nhận được sự công nhận từ phía xã hội và có lực đẩy lớn vào sự cải tiến.</p><p>Họ có tài ngoại giao, đĩnh đạc nhưng đôi khi cũng quan tâm thái quá vào hình ảnh bên ngoài và điều người khác nghĩ về họ.</p><p>👉🏻<strong>Lời khuyên nho nhỏ</strong>: 3 yêu bản thân và thích thể hiện nhưng không được thái quá nếu không&nbsp;sẽ khiến người khác phản cảm. Vì tính hiếu thắng nên khó có bạn bè, sợ người khác nhìn thấu bản thân nên dễ cảm thấy cô độc. Nếu sống thật với con người của mình, 3 sẽ thấy hạnh phúc hơn.</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (4, N'BY: THE INDIVIDUALIST – Người chủ nghĩa cá nhân', N'BY', N'<figure class="image"><img src="https://lh5.googleusercontent.com/uzvOt35QZ-EIPE_KQuZHAaZDJ2lb7U6uUwNWFeuyXi-7QXDEb31bfVX9kgBFV3bvri4OHVjGgp7zsOZNwrPh7A4LfWAIPF83RPJD6vAd_9HWqMx7Zhc6WTvi6InPEDLJ9krg-PPm"></figure><p>Nhóm 4 nhận thức được bản thân mình, họ nhạy cảm và dè dặt. Họ có cảm xúc chân thành, là người sáng tạo cá tính nhưng hay thay đổi tâm trạng. Từ chối không giúp đỡ người khác vì cảm thấy bị tổn thương và bản thân yếu kém, họ sẽ bất cần và tách biệt khỏi cuộc sống bình thường.</p><p>👉🏻<strong>Lời khuyên nho nhỏ</strong>: học cách đặt ra kỷ luật cho bản thân vì ngay cả những công việc mang tính sáng tạo cũng đòi hỏi khắt khe về thời gian, không nên quá tách rời với mọi người xung quanh.&nbsp;</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (5, N'BZ: THE INVESTIGATOR – Người lý trí ', N'BZ', N'<figure class="image"><img src="https://lh4.googleusercontent.com/Q91xsEXLL7Tkjgx3U7SR8GOpsu5RWvvdaSNWpM8x_5Cadn0OAW3JDwMEeqHzN4ChcgXzslRn2MfZJZ_4ebfgFhDnrJQVy2GpahJWPVLzgu6h4xc1iORpWTjXGzHi4FpTq_2RrHy6"></figure><p>Nhóm 5 hay cảnh giác, cũng rất sáng suốt và tò mò. Họ có thể tập trung vào một ý tưởng hay kỹ năng phức tạp. Họ độc lập, cải tiến, có óc sáng tạo, họ thường bận rộn với những suy nghĩ và tưởng tượng của bản thân. Họ vô tư nhưng cũng dễ xúc động và tách rời.</p><p>👉🏻<strong>Lời khuyên nho nhỏ</strong>: chú ý cân bằng giữa lý luận và thực tiễn. Chia sẻ nhiều hơn về bản thân – những suy nghĩ, cảm xúc, và kinh nghiệm cá nhân.</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (6, N'CY: THE LOYALIST – Người trung thành', N'CY', N'<figure class="image"><img src="https://lh5.googleusercontent.com/3Jl6IWQBRkOW0wSfBMn42YRSmDS0N4GY_zPWkq7PeduEio2JRAl2nkiLqN4b79NoXYvHoVsVKj29lvLFISoiO2HvCBHgk_ZWUAbki_blYWlcz6qXNnZGwM1K4wGq3467L0v3O4ug"></figure><p>Họ là người có sự cam kết cao, hướng đến sự an toàn, rất đáng tin cậy, chăm chỉ, có trách nhiệm và nỗ lực để xứng đáng với sự tin cậy đó. Nhóm 6 là những người xuất sắc trong việc tìm kiếm và giải quyết các vấn đề nhưng cũng hành động trong thế phòng ngự, đôi khi lẩn tránh và lo lắng.</p><p>Họ thận trọng và do dự nhưng cũng biết phản kháng, có chút ương ngạnh và chống đối.</p><p>👉🏻<strong>Lời khuyên nho nhỏ</strong>: Tin tưởng chính mình nhiều hơn bằng cách hỏi bản thân cái gì bạn sẽ khuyên người khác trong tình huống tương tự.&nbsp;</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (7, N'AX: THE ENTHUSIASTIC – Người nhiệt tình', N'AX', N'<figure class="image"><img src="https://lh3.googleusercontent.com/SO-2hhse_H2TZD0q_D-8WTFpl7iNTb0etFWSq56eZ530sf8Dj4cPHi4zd063IWTalPFXX6WnQo-WbaXzdMGTM0bq4i7dLyhzj-ILKNu6k7TxqNS81edeRERlCqsCbrpE1jgBKG6Z"></figure><p>Họ là những người hướng ngoại, lạc quan, tháo vát và rất linh hoạt. Tinh nghịch, có tinh thần cao và thực tế, nhưng đôi khi tài năng của họ không đúng lúc đúng chỗ gây thái quá, dễ bị phân tán và thiếu kỉ luật.</p><p>Họ liên tục tìm kiếm những trải nghiệm mới lạ, thú vị nhưng cũng có thể bị xao nhãng và cảm thấy kiệt sức ngay chính trong những việc họ đang làm.</p><p>👉🏻<strong>Lời khuyên nho nhỏ: </strong>Nói ít lại, nghe nhiều hơn, tập suy nghĩ trưởng thành hơn, và tập trung cân bằng giữa điều hành và tự phát ý tưởng.</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (8, N'AY: THE CHALLENGER – Người thách thức', N'AY', N'<figure class="image"><img src="https://lh3.googleusercontent.com/xTBtz2hWcsH49yivTYop127rW-Fzwcf0KhsWpb-IsX7VsHTJ9k1CTXyPL1ZVOGeA9b-WNqbIkMtc23wsmasKpeECFf84d-SwNFqdjEUS8AU566wBDPFTK5xk5T5n9b8kGAWG-Ms5"></figure><p>Nhóm 8 rất tự tin vào bản thân, can đảm và quyết đoán. Luôn muốn bảo vệ người khác, tháo vát, thẳng thắn và dứt khoát nhưng cũng rất cứng đầu và độc đoán.</p><p>&nbsp;Người nhóm này cảm thấy họ buộc phải kiểm soát mọi thứ xung quanh, đặc biệt là mọi người, thi thoảng thích đối đầu và rất đáng sợ.</p><p>👉🏻<strong>Lời khuyên nho nhỏ:</strong> đừng can thiệp quá sâu vào việc của người khác và để ý những việc vụn vặt. Cởi mở và thoải mái hơn khi nói về các điểm yếu, nỗi buồn và sự lo lắng của bản thân.</p>')
INSERT [dbo].[EnnegramResults] ([Id], [Name], [ResultCode], [Content]) VALUES (9, N'BX: THE PEACEMAKER – Người ôn hòa', N'BX', N'<figure class="image"><img src="https://lh4.googleusercontent.com/lU5is3RVgzSrOo6bmqNoO4Vn76rNYy1wwapv0wJAJohhWAZTx2hS_aMAx3fSRJwr6Loy8T87B2ewSj3OaS12zHdY3zu4sV2Vhc4RgcESO6btPAvaeTIbwCTnRu7YoPZ7sosI8xSZ"></figure><p>Nhóm 9 là những người đáng tin, cởi mở, dễ chấp thuận. Họ thường rất sáng tạo, lạc quan và thông cảm với người khác, đồng thời, sẵn sàng thỏa hiệp với mọi người để giữ hòa khí.</p><p>Họ muốn mọi thứ được vận hành một cách mượt mà và luôn như vậy mà không xảy ra mâu thuẫn nhưng điều này có thể khiến họ có xu hướng tự thỏa mãn, hài lòng, đơn giản hóa vấn đề và tối thiểu hóa các tình huống gây lo lắng.</p><p>👉🏻<strong>Lời khuyên nho nhỏ:</strong> Thể hiện chính mình – suy nghĩ, cảm xúc, nhu cầu và các quan điểm – thậm chí ngay cả khi chúng đối chọi với của người khác.&nbsp;</p>')
SET IDENTITY_INSERT [dbo].[EnnegramResults] OFF
SET IDENTITY_INSERT [dbo].[EnnegramTrackers] ON 

INSERT [dbo].[EnnegramTrackers] ([Id], [Result], [TimeStamp], [UserId]) VALUES (1, N'by', N'11/28/2021 5:56:44 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed')
INSERT [dbo].[EnnegramTrackers] ([Id], [Result], [TimeStamp], [UserId]) VALUES (2, N'az', N'11/28/2021 6:38:25 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed')
SET IDENTITY_INSERT [dbo].[EnnegramTrackers] OFF
SET IDENTITY_INSERT [dbo].[HollandMultipleChoices] ON 

INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1, N'Tôi có tính tự lập.', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (2, N'Tôi suy nghĩ thực tế', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (3, N'Tôi là người thích nghi với môi trường mới', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (4, N'Tôi có thể vận hành, điều khiển các máy móc thiết bị', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (5, N'Tôi làm các công việc thủ công như gấp giấy, đan, móc', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (6, N'Tôi thích tiếp xúc với thiên nhiên, động vật, cây cỏ', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (7, N'Tôi thích những công việc sử dụng tay chân hơn là trí óc', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (8, N'Tôi thích những công việc thấy ngay kết quả', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (9, N'Tôi thích làmviệc ngoài trời hơn là trong phòng học, văn phòng', 1)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (10, N'Tôi có tìm hiểu khám phá nhiều vấn đề mới', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (11, N'Tôi có khả năng phân tích vấn đề', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (12, N'Tôi biết suy nghĩ một cách mạch lạc, chặt chẽ', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (13, N'Tôi thích thực hiện các thí nghiệm hay nghiên cứu', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (14, N'Tôi có khả năng tổng hợp, khái quát, suy đoán những vấn đề', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (15, N'Tôi thích những hoạt động điều tra, phân loại, kiểm tra, đánh giá', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (16, N'Tôi tự tổ chức công việc mình phái làm', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (17, N'Tôi thích suy nghĩ về những vấn đề phức tạp, làm những công việc phức tạp', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (18, N'Tôi có khả năng giải quyết các vấn đề', 2)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1005, N'Tôi là người dễ xúc động', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1006, N'Tôi có óc tưởng tượng phong phú', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1007, N'Tôi thích sự tự do, không theo những quy định , quy tắc', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1008, N'Tôi có khả năng thuyết trình, diễn xuất', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1009, N'Tôi có thể chụp hình hoặc vẽ tranh, trang trí, điêu khắc', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1010, N'Tôi có năng khiếu âm nhạc', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1011, N'Tôi có khả năng viết, trình bày những ý tưởng của mình', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1012, N'Tôi thích làm những công việc mới, những công việc đòi hỏi sự sáng tạo', 3)
INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1013, N'Tôi thoải mái bộc lộ những ý thích', 3)
SET IDENTITY_INSERT [dbo].[HollandMultipleChoices] OFF
SET IDENTITY_INSERT [dbo].[HollandResult] ON 

INSERT [dbo].[HollandResult] ([Id], [Table], [Result]) VALUES (1, 1, N'Kiểu người R (Realistic - Người thực tế): (tổng điểm số của bảng A là cao nhất so với các bảng khác)
Người thuộc nhóm sở thích nghề nghiệp này thường có khả năng về kỹ thuật, công nghệ, hệ thống; ưa thích làm việc với đồ vật, máy móc, động thực vật; thích làm các công việc ngoài trời.
Ngành nghề phù hợp với nhóm này bao gồm những nghề về kiến trúc, an toàn lao động, nghề mộc, xây dựng, thủy sản, kỹ thuật, máy tàu thủy, lái xe, huấn luyện viên, nông - lâm nghiệp (quản lý trang trại, nhân giống cá, lâm nghiệp...), cơ khí (chế tạo máy, bảo trì và sửa chữa thiết bị, luyện kim, cơ khí ứng dụng, tự động...), điện - điện tử, địa lý - địa chất (đo đạc, vẽ bản đồ địa chính), dầu khí, hải dương học, quản lý công nghiệp...
')
INSERT [dbo].[HollandResult] ([Id], [Table], [Result]) VALUES (2, 2, N'Kiểu người I (Investigative - Người nghiên cứu): (tổng điểm số của bảng B là cao nhất so với các bảng khác)
Có khả năng về quan sát, khám phá, phân tích đánh giá và giải quyết các vấn đề.
Ngành nghề phù hợp với nhóm này bao gồm: Các ngành thuộc lĩnh vực khoa học tự nhiên (toán, lý, hóa, sinh, địa lý, địa chất, thống kê...); khoa học xã hội (nhân học, tâm lý, địa lý...); y - dược (bác sĩ gây mê, hồi sức, bác sĩ phẫu thuật, nha sĩ...); khoa học công nghệ (công nghệ thông tin, môi trường, điện, vật lý kỹ thuật, xây dựng...); nông lâm (nông học, thú y...).
')
INSERT [dbo].[HollandResult] ([Id], [Table], [Result]) VALUES (3, 3, N'Kiểu người I (Investigative - Người nghiên cứu): (tổng điểm số của bảng B là cao nhất so với các bảng khác)
Có khả năng về quan sát, khám phá, phân tích đánh giá và giải quyết các vấn đề.
Ngành nghề phù hợp với nhóm này bao gồm: Các ngành thuộc lĩnh vực khoa học tự nhiên (toán, lý, hóa, sinh, địa lý, địa chất, thống kê...); khoa học xã hội (nhân học, tâm lý, địa lý...); y - dược (bác sĩ gây mê, hồi sức, bác sĩ phẫu thuật, nha sĩ...); khoa học công nghệ (công nghệ thông tin, môi trường, điện, vật lý kỹ thuật, xây dựng...); nông lâm (nông học, thú y...).
')
SET IDENTITY_INSERT [dbo].[HollandResult] OFF
SET IDENTITY_INSERT [dbo].[HollandScore] ON 

INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (2, 1, 16, N'11/2/2021 4:14:39 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (3, 2, 21, N'11/2/2021 4:14:39 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (4, 3, 18, N'11/2/2021 4:14:39 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (5, 1, 18, N'11/3/2021 2:36:47 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (6, 2, 20, N'11/3/2021 2:36:47 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (7, 3, 17, N'11/3/2021 2:36:47 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (1002, 3, 20, N'11/5/2021 4:42:37 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (1003, 3, 20, N'11/5/2021 4:42:37 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (1004, 1, 19, N'11/9/2021 9:37:22 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (1005, 2, 19, N'11/9/2021 9:37:22 PM')
INSERT [dbo].[HollandScore] ([Id], [Table], [Score], [TimeStamp]) VALUES (1006, 3, 16, N'11/9/2021 9:37:22 PM')
SET IDENTITY_INSERT [dbo].[HollandScore] OFF
SET IDENTITY_INSERT [dbo].[HollandTables] ON 

INSERT [dbo].[HollandTables] ([HLTableId], [Name]) VALUES (1, N'Bảng A (R: Realistic - Người thực tế)')
INSERT [dbo].[HollandTables] ([HLTableId], [Name]) VALUES (2, N'Bảng B (I: Investigative - Người thích nghiên cứu)')
INSERT [dbo].[HollandTables] ([HLTableId], [Name]) VALUES (3, N'Bảng C (A : Artistic - Người có tính nghệ sĩ )')
INSERT [dbo].[HollandTables] ([HLTableId], [Name]) VALUES (4, N'Bảng D ( S: Social - Người có Tính xã hội )')
INSERT [dbo].[HollandTables] ([HLTableId], [Name]) VALUES (5, N'Bảng E ( E: Enterprising - Người dám nghĩ dám làm)')
INSERT [dbo].[HollandTables] ([HLTableId], [Name]) VALUES (6, N'Bảng F ( C : Conventional - Người công chức )')
SET IDENTITY_INSERT [dbo].[HollandTables] OFF
SET IDENTITY_INSERT [dbo].[HollandTrackers] ON 

INSERT [dbo].[HollandTrackers] ([Id], [Step], [Times], [TimeStamp], [UserId], [FinalTable]) VALUES (4, 3, 1, N'11/2/2021 4:14:39 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed', 1)
INSERT [dbo].[HollandTrackers] ([Id], [Step], [Times], [TimeStamp], [UserId], [FinalTable]) VALUES (5, 3, 1, N'11/3/2021 2:36:47 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed', 2)
INSERT [dbo].[HollandTrackers] ([Id], [Step], [Times], [TimeStamp], [UserId], [FinalTable]) VALUES (6, 3, 1, N'11/5/2021 4:42:37 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed', 3)
INSERT [dbo].[HollandTrackers] ([Id], [Step], [Times], [TimeStamp], [UserId], [FinalTable]) VALUES (1002, 3, 1, N'11/9/2021 9:37:22 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed', 1)
INSERT [dbo].[HollandTrackers] ([Id], [Step], [Times], [TimeStamp], [UserId], [FinalTable]) VALUES (1003, 1, 0, N'11/15/2021 4:45:56 PM', N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', 0)
SET IDENTITY_INSERT [dbo].[HollandTrackers] OFF
SET IDENTITY_INSERT [dbo].[MbtiResults] ON 

INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (1, N'ENFJ', N'<h3><strong>ENFJ – Người cho đi</strong></h3><p>Nhóm tính cách ENFJ rất ấm áp, tình cảm, dễ hòa hợp và luôn quan đến cảm nhận mọi người. Trẻ thuộc nhóm này có khả năng nhận thấy năng lực của người khác và chủ động giúp họ phát triển tiềm năng của mình. Đồng thời, trẻ có tác động quan trọng tới sự phát triển của cá nhân và cả nhóm.</p><p>Ưu điểm:</p><ul><li>Luôn quan tâm đến mọi người, có lòng đồng cảm và khoan dung.</li><li>Trẻ ở nhóm ENFJ khéo léo và có kỹ năng đối nhân xử thế rất tốt. Đặc biệt khả năng duy trì và tạo dựng mối quan hệ tài tình.</li><li>Nhóm tính cách này thường rất kiên nhẫn và nỗ lực khi làm việc mình thích.</li></ul><p>Nhược điểm:</p><ul><li>Đặc tính của ENFJ thường khá khép kín và không thích đám đông.</li><li>Hành động quá duy tình, dễ bị tổn thương và lay động.</li><li>Đôi khi thiếu tính quyết đoán khi phải đưa ra quyết định quan trọng</li></ul><p>Trẻ thuộc nhóm ENFJ phù hợp với môi trường làm việc luôn được giúp đỡ và động viên tinh thần. Đặc biệt giỏi trong các công việc giao tiếp và thấu hiểu mọi người, như:</p><ul><li>Nhà ngoại giao</li><li>Nhà tâm lý học</li><li>Nhà xã hội học</li><li>Nhà tư vấn</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (2, N'ENFP', N'<h3><strong>ENFP – Người truyền cảm hứng</strong></h3><p>Trong các loại tính cách MBTI trẻ thuộc nhóm ENFP rất thông minh, tương tác tốt và giàu trí tưởng tượng. Nhóm ENFP nhìn nhận mọi thứ đầy tính khả thi. Trẻ tự tin làm mọi điều dựa trên những mẫu mà nó nhìn thấy. Tuy nhiên, trẻ cũng cần nhiều lời khẳng định, đánh giá và hỗ trợ của người khác để quyết tâm. Nhóm trẻ ENFP thường tự phát, linh hoạt theo hướng ứng biến.</p><p>Ưu điểm:</p><ul><li>Tràn đầy năng lượng, nhiệt tình trong đời sống cá nhân và công việc</li><li>Mạnh mẽ và sẵn sàng thách thức chính mình với những trải nghiệm mới</li><li>Giỏi truyền thông và điều hướng các cuộc giao tiếp</li></ul><p>Nhược điểm:</p><ul><li>Dễ nhàm chán với mọi công việc mình làm</li><li>Khả năng làm tốt nhiều thứ nhưng lại thường bị lỡ đãng, phân tán trong công việc</li><li>Năng lực thực hành không tốt như lời nói</li></ul><p>Trẻ thuộc nhóm ENFP phù hợp với công việc sáng tạo mà họ không bao giờ hết ý tưởng. Đặc biệt, khi nó có một lượng khán giả của mình để nỗ lực. Một số công việc như:</p><ul><li>Nhà báo, phóng viên</li><li>Nhà văn, nhà thơ</li><li>Diễn viên</li><li>Nhà giáo</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (3, N'ENTJ', N'<h3><strong>ENTJ – Nhà điều hành</strong></h3><p>Trẻ thuộc nhóm ENTJ rất thẳng thắn, quyết đoán và có năng lực đảm nhận tốt công việc lãnh đạo. Trẻ hứng thú với các kế hoạch dài hạn và xây dựng mục tiêu. Trong nhóm, trẻ ENTJ thường là người nắm bắt tin tức, đọc nhiều, học hỏi kiến thức và truyền lại cho các thành viên.</p><p>Ưu điểm:</p><ul><li>Tự tin vào năng lực của bản thân và không ngần ngại thể hiện quan điểm</li><li>Tiếp cận tốt các vấn đề toàn diện</li><li>Nghị lực, ý chí và quyết tâm theo đuổi mục tiêu cuối cùng</li></ul><p>Nhược điểm:</p><ul><li>Tính cách khuôn khổ và kiêu ngạo</li><li>Chỉ tập trung vào mục tiêu của mình mà không quan tâm đến cảm xúc người khác</li><li>Ít đồng cảm, dễ làm tổn thương người có năng lực thấp hơn</li></ul><p>Trẻ thuộc nhóm ENTJ sẽ làm tốt công việc tổ chức và lãnh đạo. Không chấp nhận những công việc phải phục tùng người khác.</p><p>Ví dụ như:</p><ul><li>Doanh nhân</li><li>Giám đốc điều hành</li><li>Quan tòa</li><li>Giảng viên</li></ul><p>…</p>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (4, N'ENTP', N'<h3><strong>ENTP – người có tầm nhìn</strong></h3><p>Trẻ ENTP có tính cách khéo léo, cảnh giác và dễ bộc phát. Có khả năng giải quyết các vấn đề mới và đầy thử thách. Nhóm ENTP thích nhìn nhận vấn đề một cách khái niệm. Sau đó, phân tích chúng thành một chiến lược. Tuy nhiên, thói quen lặp lại sẽ khiến trẻ chán nản và dễ hình thành sở thích mới. Trẻ giỏi đọc vị người khác.</p><p>Ưu điểm:</p><ul><li>Dễ dàng nảy sinh ra ý tưởng mới mà không cần phải nỗ lực nhiều</li><li>Luôn nhiệt tình và tràn đầy năng lượng một khi đã đam mê với công việc</li><li>Thích học hỏi và tích lũy nhiều kiến thức mới</li></ul><p>Nhược điểm:</p><ul><li>Thường suy nghĩ các vấn đề quá rộng mà khó tập trung vào cái then chốt</li><li>Thường giỏi đưa ra ý tưởng nhưng không tốt khi triển khai trên thực tế</li><li>Nhanh chóng cảm thấy chán nản với công việc</li></ul><p>Trẻ ENTP có khả năng đa dạng và phù hợp với nhiều lĩnh vực. Đặc biệt tốt với những công việc không gò bó, tự do và sáng tạo. Một số công việc như:</p><ul><li>Diễn viên</li><li>Cố vấn</li><li>Nhà khoa học</li><li>Doanh nhân</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (5, N'ESFJ', N'<h3><strong>ESFJ – Người quan tâm</strong></h3><p>Trẻ thuộc nhóm ESFJ có suy nghĩ thương người nhất trong các loại tính cách MBTI. Nhóm ESFJ quan tâm đến toàn bộ vấn đề của mọi người, dù là nhỏ nhất. Sở hữu nhiều năng lượng ấm áp nhưng lại thích làm việc một mình. Trẻ ESFJ có xu hướng làm việc rất quyết tâm và trách nghiệm. Trẻ thuộc tính cách quan tâm luôn muốn được mọi người đánh cao về những gì chúng làm.</p><p>Ưu điểm:</p><ul><li>Tính cách trung thành và có trách nhiệm với công việc của mình</li><li>Luôn hoàn tốt các công việc thực tế</li><li>Khá nhạy cảm, ấm áp và dễ kết nối với mọi người</li></ul><p>Nhược điểm:</p><ul><li>Quá duy tình và thiếu quyết đoán</li><li>Tâm hồn dễ nhạy cảm và tổn thương</li><li>Không giỏi điều khiển mọi người xung quanh. Nếu cố làm sẽ dễ bị mất thiện cảm</li></ul><p>Trẻ thuộc nhóm tính cách ESFJ sẽ làm tốt những công việc phục vụ mọi người. ESFJ cũng phù hợp với công việc sáng tạo hoặc tuân theo trật tự. Một số công việc như:</p><ul><li>Y tá</li><li>Chăm sóc trẻ em</li><li>Giáo viên</li><li>Công tác xã hội</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (6, N'ESFP', N'<h3><strong>ESFP – Người trình diễn</strong></h3><p>ESFP là nhóm có thiên hướng hướng ngoại nhất trong nhóm tính cách MBTI. Trẻ thuộc nhóm ESFP yêu thích điều mới mẻ và luôn muốn làm tâm điểm của sự chú ý. ESFP có khả năng giao tiếp tốt, lạc quan. Đặc biệt có khiếu nhận thức thẩm mỹ rất tốt.</p><p>Ưu điểm:</p><ul><li>Sẵn sàng bước ra khỏi vùng an toàn để thể hiện bản thân và trải nghiệm điều mới</li><li><a href="https://teky.edu.vn/blog/ky-nang-giao-tiep-ung-xu/">Kỹ năng giao tiếp</a> thường rất tốt</li><li>Có cảm nhận thẩm mỹ và cái đẹp tuyệt vời</li></ul><p>Nhược điểm:</p><ul><li>Thiếu kiên nhẫn và tập trung trong công việc</li><li>Ít tận tâm với công việc</li><li>Tư duy lên kế hoạch hạn chế</li><li>Thường đưa bản thân vào thế khó khi không đạt được mục tiêu</li></ul><p>Trẻ thuộc nhóm tính cách ESFP phù hợp với những công việc giao tiếp với công chúng. Trẻ cũng sẽ làm tốt những công việc chứa nhiều thách thức mới và không bị gò bó. Một số công việc như:</p><ul><li>Nhà thiết kế thời trang</li><li>Nhiếp ảnh gia</li><li>Diễn viên</li><li>Trang trí</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (7, N'ESTJ', N'<h3><strong>ESTJ – Người bảo hộ</strong></h3><p>Nhóm ESTJ suy nghĩ rất thực tế và nhận thức trách nhiệm cao. Trẻ ESTJ có tính quyết đoán và ra quyết định nhanh chóng. Những đứa trẻ thuộc nhóm tính cách này hay chú ý đến tiểu tiết. Chúng làm việc luôn tuân theo chuẩn logic và hệ thống đã đề ra.</p><p>Ưu điểm:</p><ul><li>Chỉn chu và tận tâm với công việc</li><li>Kiên nhẫn, kiên trì và đáng tin cậy</li><li>Tính tổ chức rất cao và luôn chấp hành tốt nội quy</li></ul><p>Nhược điểm:</p><ul><li>Suy nghĩ quá nhiều địa vị xã hội của bản thân</li><li>Phản ứng và suy nghĩ thái quá về các lỗi lầm của người khác</li><li>Quá cứng nhắc và đề cao các quy tắc</li></ul><p>Trẻ ESTJ phù hợp với những công việc đòi hỏi phải duy trì trật tự và cấu trúc. Một số công việc phù hợp:</p><ul><li>Nhà quản lý</li><li>Lãnh đạo quân đội</li><li>Quan tòa</li><li>Cảnh sát</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (8, N'ESTP', N'<h3><strong>ESTP – Người thực thi</strong></h3><p>Trẻ thuộc nhóm ESTP thường linh hoạt và khoan dung. Chúng luôn tiếp cận vấn đề từ thực tế và tập trung vào kết quả. Trẻ ESTP dễ bị chán nản bởi lý thuyết khái niệm. Chúng thích thú với hiện tại, tính chủ động và học nhanh khi trực tiếp làm.</p><p>Trẻ thuộc nhóm ESTP rất thân thiện và thẳng thắn. Thường lan truyền năng lực tích cực và cũng nắm bắt tốt động cơ của các loại tính cách MBTI khác.</p><p>Ưu điểm:</p><ul><li>Trẻ thể hiện trung thực và thẳng thắn</li><li>Có khả năng kết nối, <a href="https://teky.edu.vn/blog/ky-nang-hop-tac/">hợp tác</a> và tương tác với mọi người tuyệt vời</li><li>Thích thử nghiệm và sáng tạo những điều mới</li></ul><p>Nhược điểm:</p><ul><li>Gặp nhiều hạn chế với những việc đòi hỏi tính kiên nhẫn</li><li>Không cái nhìn toàn diện và thường bỏ lỡ các vấn đề lớn</li><li>Tính cách thiếu nghiêm túc và quy tắc</li></ul><p>ESTP sẽ thích hợp với vai trò suy nghĩ tại chỗ. Tuy nhiên vị trí đó lại không có quá nhiều những quy định phức tạp. Một số công việc phù hợp:</p><ul><li>Quân đội, cảnh sát</li><li>Quản lý</li><li>Nhà giáo</li><li>Vận động viên thể thao</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (9, N'INFJ', N'<h3><strong>INFJ – Người che chở</strong></h3><p>Trẻ thuộc nhóm INFJ có tư duy trực giác tuyệt vời. Chúng thích lý giải ý nghĩa, sự kết nối trong tư tưởng, mối quan hệ và vật chất sở hữu. Trẻ INFJ luôn tò mò về những gì kích thích con người hành động. Trẻ tận tâm chu đáo và phù hợp với phương hướng làm việc vì lợi ích chung.</p><p>Ưu điểm:</p><ul><li>Luôn làm việc chăm chỉ</li><li>Khả năng tư duy tưởng tượng sinh động và sâu sắc</li><li>Sở hữu phong cách viết truyền cảm</li><li>Giao tiếp với mọi người linh hoạt nhưng cũng rất quyết đoán</li></ul><p>Nhược điểm:</p><ul><li>Tâm lý dễ tổn thương bởi các lời phê bình và xung đột</li><li>Luôn đề phòng và ít tin tưởng người khác</li><li>Đôi khi rất bảo thủ, cứng nhắc và thay đổi</li></ul><p>Trẻ thuộc nhóm INFJ sẽ làm tốt những công việc mà nó có thể sống với những giá trị của chính mình. Hay làm một công việc lớn lao và ý nghĩa nào đó. Một số công việc phù hợp:</p><ul><li>Bác sĩ</li><li>Nhà tâm lý học</li><li>Giáo viên</li><li>Nhạc sĩ, họa sĩ</li><li>Thiết kế</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (10, N'INFP', N'<h3><strong>INFP – Người lý tưởng hóa</strong></h3><p>Nhóm INFP sẽ rất chu đáo, nhiệt tình, thấu cảm và biết lắng nghe. Trẻ INFP thường rất cầu toàn và đặt ra yêu cầu cao trong công việc. Chúng mong muốn một cuộc sống bên ngoài phù hợp với giá trị của mình. Đồng thời, trẻ cũng có tính thích nghi tốt và rất linh hoạt.</p><p>Ưu điểm:</p><ul><li>Đam mê, ngập tràn năng lượng và luôn cống hiến hết mình</li><li>Luôn hướng đến sự hòa hợp cao nhất</li><li>Tư duy thoáng và linh hoạt</li><li>Khả năng thấu hiểu các ý nghĩa khái niệm tốt</li></ul><p>Nhược điểm:</p><ul><li>Không giỏi xử lý dữ liệu</li><li>Hay mơ mộng và lý tưởng hóa quá mức</li><li>Mang tư tưởng cá nhân cao dễ bị cô lập với mọi người</li></ul><p>Trẻ thuộc nhóm INFP phù hợp với công việc phù hợp với giá trị của chính mình và đóng góp được nhiều giá trị tốt đẹp cho nhân loại. Một số công việc phù hợp:</p><ul><li>Nhà văn</li><li>Nhà tâm lý học</li><li>Giáo viên</li><li>Nhạc sĩ</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (11, N'INTJ', N'<h3><strong>INTJ – Nhà khoa học</strong></h3><p>Trẻ thuộc nhóm INTJ có thiên hướng tư duy logic và hoạch định chiến lược rõ ràng. Trẻ thường suy nghĩ độc lập, đa nghi, cầu toàn và đặt ra tiêu chuẩn cao cho bản thân. Một khi đã quyết định làm việc gì, INTJ sẽ quyết tâm để hoàn thành nó. Ngoài ra, trẻ INTJ phát triển tư duy bao quát và mô phỏng lại các sự kiện xung quanh nó rất tốt.</p><p>Ưu điểm:</p><ul><li>Năng lực phân tích và áp dụng trên thực tế tuyệt vời</li><li>Tư duy nhanh nhạy và linh hoạt</li><li>Rất sáng tạo và giàu trí tưởng tượng</li><li>Suy nghĩ thông thoáng và quyết đoán trong mọi việc mình làm</li></ul><p>Nhược điểm:</p><ul><li>Tính cách quá cầu toàn thường gây khó chịu và mâu thuẫn với mọi người xung quanh</li><li>Ít quan tâm để cảm xúc của người khác và dễ làm tổn thương họ</li></ul><p>Trẻ INTJ phù hợp với công việc yêu cầu tư duy độc lập và có tầm nhìn sâu về lĩnh vực đó. Một số công việc phù hợp như:</p><ul><li>Cố vấn</li><li>Nhà hoạch định chiến lược</li><li>Lãnh đạo</li><li>Luật sư</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (12, N'INTP', N'<h3><strong>INTP – Nhà tư duy</strong></h3><p>INTP có thiên hướng tư duy lý thuyết, trừu tượng và lưu tâm nhiều đến các tương tác xã hội. Trẻ thuộc nhóm tính cách này thường yên tĩnh nhưng rất linh hoạt và có tính thích nghi tốt. Do luôn tư duy lý thuyết, trẻ INTP có khả năng tập trung tư duy sâu trong mọi vấn đề. Tuy nhiên, nhóm trẻ này thường đa nghi và bình phẩm người khác.</p><p>Ưu điểm:</p><ul><li>Nhân cách thẳng thắn, khách quan và trung thực</li><li><a href="https://teky.edu.vn/blog/phat-trien-nang-luc-tu-duy-sang-tao/">Tư duy sáng tạo</a> và giàu trí tưởng tượng</li><li>Có suy nghĩ thông thoáng và sẵn sàng tiếp nhận những tư tưởng khác họ</li><li>Rất nhiệt tình và cuốn hút với những gì trẻ quan tâm</li></ul><p>Nhược điểm:</p><ul><li>Thường bỏ qua các vấn đề xung quanh nếu chúng không quan tâm</li><li>Khả năng xử lý các vấn đề cảm xúc không tốt</li><li>Ngại ngùng và nhút nhát trong môi trường đám đông</li></ul><p>Trẻ INTP phù hợp với những công việc đi tìm kiếm và phân tích một khái niệm hay vấn đề nào đó. Một số công việc phù hợp:</p><ul><li>Nhà khoa học</li><li>Chiến lược gia</li><li>Luật sư</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (13, N'ISFJ', N'<h3><strong>ISFJ – Người nuôi dưỡng</strong></h3><p>ISFJ có tính cách thân thiện, dễ gần, thích yên tĩnh và trách nhiệm với công việc của mình. Trẻ ISFJ xử lý công việc kỹ lưỡng, chăm chỉ và chính xác. Nhóm trẻ này sống rất tình cảm, thường quan tâm đến cảm xúc của mọi người. Chúng luôn cố gắng tạo dựng một trật từ hài hòa giữa các mối quan hệ, công việc và tình cảm.</p><p>Ưu điểm:</p><ul><li>Nhiệt tình giúp đỡ và chia sẻ với mọi người</li><li>Siêng năng với công việc</li><li>Cảm nhận tình cảm tốt, có thể nhận biết cảm xúc của người khác qua những dấu hiệu nhỏ nhất</li><li>Khả năng thực hành tốt</li></ul><p>Nhược điểm:</p><ul><li>Quá siêng năng đến nỗi quá tải trong công việc</li><li>Thường gặp nhiều vấn đề trong việc tách biệt công việc và tình cảm</li><li>Khó khăn khi phải thích nghi với sự thay đổi</li><li>Nhút nhát</li></ul><p>Trẻ ISFJ phù hợp với công việc yêu cầu khả năng quan sát và xác định nhu cầu của người khác. Một số công việc phù hợp:</p><ul><li>Chăm sóc trẻ em</li><li>Y tá</li><li>Công tác xã hội</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (14, N'ISFP', N'<h3><strong>ISFP – Người nghệ sĩ</strong></h3><p>ISFP có tính cách thân thiện, nhạy cảm và tốt bụng. Trẻ thuộc nhóm tính cách này thích tận hưởng mọi khoảnh khắc xung quanh nó. Chúng thích tìm kiếm không gian riêng để cảm nhận cuộc sống và làm việc. Trẻ ISFP ghét sự bất đồng và không bao giờ ép suy nghĩ của mình lên người khác. Đồng thời, nhóm ISFP rất có năng khiếu nghệ thuật và bị cuốn hút bởi cái đẹp.</p><p>Ưu điểm:</p><ul><li>Rất nhạy cảm và dễ nhận ra cảm xúc của người khác</li><li>Giỏi nắm bắt và tạo ra xu hướng cho xã hội</li><li>Cực kỳ đam mê với những thứ cuốn hút mình</li></ul><p>Nhược điểm:</p><ul><li>Không có năng khiếu với các tri thức khoa học và nghiên cứu</li><li>Thường tiêu cực khi giải quyết các vấn đề xung đột và căng thẳng</li><li>Không đề cao lòng tự trọng của bản thân</li></ul><p>Trong các loại tính cách MBTI, ISFP là nhóm sản sinh ra nhiều nghệ sinh nổi tiếng nhất. Trẻ ISFP phù hợp với tự do sáng tạo và có không gian riêng. Một số công việc phù hợp:</p><ul><li>Nhạc sĩ</li><li>Nghệ sĩ</li><li>Nhà thiết kế</li><li>Nhà văn, nhà thơ</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (15, N'ISTJ', N'<h3><strong>ISTJ – Người có trách nhiệm</strong></h3><p>Đây là nhóm tính cách thực tế và có trách nhiệm với công việc của mình. Trẻ ISTJ khá nghiêm túc, kỹ lưỡng trong công việc và thích sự yên tĩnh. Nhóm ISTJ thích thú mọi thứ có trật tự và tổ chức. Ngoài ra, trẻ thuộc nhóm này rất coi trọng các giá trị truyền thống và lòng trung thành.</p><p>Ưu điểm:</p><ul><li>Có khả năng làm việc tốt ở nhiều lĩnh vực</li><li>Rất có trách nghiệm và luôn đề cao bổn phận của bản thân</li><li>Có tư duy tổ chức và <a href="https://teky.edu.vn/blog/bang-phan-cong-cong-viec/">lập bảng phân công công việc</a> chỉn chu</li><li>Hành động bình tĩnh và thực tế</li></ul><p>Nhược điểm:</p><ul><li>Đôi khi ấu trĩ và khó chấp nhận một quan điểm khác mình</li><li>Suy nghĩ có phần quá sách vở và khó hòa nhập với môi trường mới</li><li>Tâm hồn nhạy cảm và dễ bị tổn thương</li></ul><p>Trẻ ISTJ phù hợp với những giá trị truyền thống, công việc an toàn và ổn định. Hoặc những công việc trình tự trong tổ chức. Một số công việc phù hợp:</p><ul><li>Quân đội, công an</li><li>Bác sĩ</li><li>Thẩm phán</li><li>Luật sư</li><li>…</li></ul>')
INSERT [dbo].[MbtiResults] ([Id], [FinalResult], [Explaination]) VALUES (16, N'ISTP', N'<h3><strong>ISTP – Nhà cơ học</strong></h3><p>ISTP là nhóm biết quan sát, linh hoạt và khoan dung. Trẻ thuộc nhóm ISTP thường thầm lặng quan sát cho đến khi ra vấn đề. Khi giải quyết vấn, trẻ có xu hướng tìm giải pháp và hành động nhanh chóng. ISTP phân tích kỹ lượng những việc mình làm và sẵn sàng kiểm tra chất lượng công việc mọi lúc. Chúng quan tâm đến mối quan hệ nguyên nhân – kết quả, tính logic cao và đề cao hiệu quả.</p><p>Ưu điểm:</p><ul><li>Vui vẻ và ngập tràn năng lượng</li><li>Kỹ năng giải quyết các tình huống khủng hoảng tốt</li><li>có nhiều năng lực và linh hoạt</li><li>Trí tưởng tượng phong phú và thực tế</li></ul><p>Nhược điểm:</p><ul><li>Dễ bị căng thẳng, nổi cáu khi bị kích động</li><li>Khó tập trung vào một vấn đề trong khoảng thời gian dài</li><li>Ít để tâm đến cảm xúc của người khác nên dễ làm tổn thương người xung quanh</li><li>Không thích phải cam kết hay giằng buộc với điều gì</li></ul><p>Trẻ ISTP phù hợp với môi trường làm việc linh hoạt và áp dụng những kỹ năng đã học vào thực tế. Một số công việc phù hợp:</p><ul><li>Kỹ sư</li><li>Thợ cơ khí</li><li>Lập trình viên công nghệ</li><li>Thợ mộc</li><li>…</li></ul>')
SET IDENTITY_INSERT [dbo].[MbtiResults] OFF
SET IDENTITY_INSERT [dbo].[MbtiTables] ON 

INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (1, N'Ở bữa tiệc các bạn thường?', N'Nói chuyện với nhiều người, kể cả người lạ', N'Chỉ nói chuyện với số ít những người thân quen', 1)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (2, N'Bạn thấy mình là người thuộc nhóm nào?', N'Thực tế', N'Mơ mộng', 2)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (3, N'Bạn quan tâm đến điều gì nhiều hơn', N'Dữ liệu thực tế', N'Các câu chuyện', 3)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (4, N'Bạn thường đối xử như thế nào nhiều hơn?', N'Công bằng', N'Đối xử tốt theo tình cảm', 4)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (5, N'Bạn thường', N'Vô tư, không bao giờ thiên vị', N'Cảm thông, đôi khi xử lí tình huống theo cảm tính', 5)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (6, N'Bạn thích làm việc theo kiểu nào hơn', N'Theo đúng thời hạn', N'Theo cảm hứng', 6)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (7, N'Bạn sẽ lựa chọn?', N'Rất cẩn thận', N'Phần nào theo cảm nhận', 7)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (8, N'Ở các bữa tiệc bạn thường', N'Ở lại muộn, cảm thấy ngày càng thoải mái khoẻ khoắn cao hứng hơn', N'Ra về sớm và cảm thấy mệt mỏi dần', 8)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (9, N'Bạn là người', N'Nhạy cảm', N'Suy nghĩ thận trọng', 9)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (10, N'Bạn thích', N'Dữ liệu, sự kiện thực tế', N'Các ý tưởng khác nhau', 10)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (11, N'Về bản chất, bạn thường', N'Công bằng với mọi người', N'Tốt với mọi người', 11)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (12, N'Lần đầu tiên tiếp xúc bạn thường', N'Im lặng và cảm thấy xấu hổ', N'Nói nhiều và tỏ ra thân thiện', 12)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (13, N'Thường thì bạn là người', N'Đúng giờ, chuẩn mực', N'Thong thả', 13)
INSERT [dbo].[MbtiTables] ([Id], [Question], [AnswerA], [AnswerB], [Position]) VALUES (14, N'Trường hợp nào bạn cảm thấy số ruột hơn', N'Khi mọi việc chưa hoàn thành', N'Khi mọi việc đã hoàn thành', 14)
SET IDENTITY_INSERT [dbo].[MbtiTables] OFF
SET IDENTITY_INSERT [dbo].[MbtiTrackers] ON 

INSERT [dbo].[MbtiTrackers] ([Id], [FinalResult], [TimeStamp], [UserId]) VALUES (1, N'ISTP', N'11/18/2021 4:42:46 AM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed')
INSERT [dbo].[MbtiTrackers] ([Id], [FinalResult], [TimeStamp], [UserId]) VALUES (2, N'ENTJ', N'11/18/2021 5:47:45 PM', N'4790b67c-8dd9-45c0-8457-0eaa334382ed')
SET IDENTITY_INSERT [dbo].[MbtiTrackers] OFF
SET IDENTITY_INSERT [dbo].[MIQuestions] ON 

INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (1, N'Tôi hay hát hoặc ngân nga nhiều lần trong ngày', 4)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (2, N'Tôi thích các trò chơi ô chữ và các trò chơi ghép hình', 3)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (3, N'Tôi thích dành thời gian cho bản thân', 8)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (4, N'Tôi học tốt nhất khi tôi có thể nói về các ý tưởng mới', 7)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (5, N'Bảng biểu, bản đồ, hình ảnh minh họa giúp tôi học tốt hơn', 5)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (6, N'Tôi thích nghệ thuật, nhiếp ảnh, hoặc làm các dự án thủ công', 5)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (7, N'ôi có thể học các bài học toán mới một cách dễ dàng', 2)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (8, N'Tôi yêu các dự án liên quan đến diễn xuất hoặc di chuyển', 6)
INSERT [dbo].[MIQuestions] ([Id], [Question], [TableId]) VALUES (9, N'Nếu được lựa chọn, tôi thích ở bên ngoài hơn là bên trong', 1)
SET IDENTITY_INSERT [dbo].[MIQuestions] OFF
SET IDENTITY_INSERT [dbo].[MITables] ON 

INSERT [dbo].[MITables] ([Id], [Name]) VALUES (1, N'Thiên nhiên')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (2, N'Toán học - Logic')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (3, N'Ngôn ngữ - Lời nói')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (4, N'Âm nhạc - nhịp điệu')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (5, N'Không gian - thị giác')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (6, N'Cơ thể - vận động')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (7, N'Giao tiếp')
INSERT [dbo].[MITables] ([Id], [Name]) VALUES (8, N'Nội tâm')
SET IDENTITY_INSERT [dbo].[MITables] OFF
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f39a6ba2-d19f-49ba-b75e-2f5c4f1aaaf2', N'Role pupil for person study in school (under 18)', N'pupil', N'pupil', N'752dab68-69c9-471d-976c-4c359317ec0c')
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a01ab883-d923-4c7d-bf6f-42d1592f2280', N'Administrator role', N'admin', N'admin', N'154ad415-741e-4c10-95f8-4f434424efb7')
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef936e2f-d09a-4fdf-8842-459ed6350702', N'Role student for person study in university', N'student', N'student', N'4732db38-6746-4ca1-867f-464dd486f76f')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'937cf000-bf56-4dd5-8d83-08d9a65c9d57', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e46ac756-325d-4100-cf33-08d9a8e68ff7', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', N'a01ab883-d923-4c7d-bf6f-42d1592f2280')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'937cf000-bf56-4dd5-8d83-08d9a65c9d57', N'Đ Quân', N'Vũ Văn', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'0123987654', N'0123987654', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEO8i83UJ6fe3MbrqTgdx+zvas36vMg0Lc0lW2tiesfMO2E2QGZXEYImDIo2iCszNIA==', N'SICPJSERB5RFK3WX73IV4GJ7HLWESVTZ', N'712b2503-fd0a-4253-b923-44955301fa3c', N'0123987654', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e46ac756-325d-4100-cf33-08d9a8e68ff7', N'DEFFF', N'ABC', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'0123456987', N'0123456987', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEAVj6vaMElMfd2h+998ifuuETWTVnC2V+4BCse0l5fS7JuMZw4HoAOo2rR9TXlDxqQ==', N'CHPNYPH2VBPFCDQF2HXTEALMZPGCECFO', N'8c459674-f62b-4ea9-a16d-869b97a7ebff', N'0123456987', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'Minh', N'Van', CAST(N'1999-01-10 00:00:00.0000000' AS DateTime2), N'0234565578', N'0234565578', N'abcd@gmail.com', N'ABCD@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIeR+R+7Reo8b8qG+qY5p1BxdjCkWko+k+fvfwVIX7eQhy9eqwmezHYhhsTBKRcOGw==', N'', N'76b6649c-ff60-42f4-b881-c6612cba93a4', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', N'Anh', N'Quang', CAST(N'1998-02-23 00:00:00.0000000' AS DateTime2), N'0123456789', N'0123456789', N'abcxyz@gmail.com', N'ABCXYZ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEODuflA8RhnjAHtZYo8Vhl+MR8QS5Ev0Kozf98t1uuOkGvtHCU+zN83OGkHYAOP5gA==', N'', N'1e74b34c-df7a-4140-a870-2cf392999c2f', NULL, 0, 0, NULL, 0, 0)
ALTER TABLE [dbo].[BigFiveQuestions]  WITH CHECK ADD  CONSTRAINT [FK_BigFiveQuestions_BigFiveResults_BigFiveResultId] FOREIGN KEY([BigFiveResultId])
REFERENCES [dbo].[BigFiveResults] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BigFiveQuestions] CHECK CONSTRAINT [FK_BigFiveQuestions_BigFiveResults_BigFiveResultId]
GO
ALTER TABLE [dbo].[BigFiveTrackers]  WITH CHECK ADD  CONSTRAINT [FK_BigFiveTrackers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BigFiveTrackers] CHECK CONSTRAINT [FK_BigFiveTrackers_Users_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[EnnegramTrackers]  WITH CHECK ADD  CONSTRAINT [FK_EnnegramTrackers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EnnegramTrackers] CHECK CONSTRAINT [FK_EnnegramTrackers_Users_UserId]
GO
ALTER TABLE [dbo].[HollandMultipleChoices]  WITH CHECK ADD  CONSTRAINT [FK_HollandMultipleChoices_HollandTables_HLTableId] FOREIGN KEY([HLTableId])
REFERENCES [dbo].[HollandTables] ([HLTableId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HollandMultipleChoices] CHECK CONSTRAINT [FK_HollandMultipleChoices_HollandTables_HLTableId]
GO
ALTER TABLE [dbo].[HollandTrackers]  WITH CHECK ADD  CONSTRAINT [FK_HollandTrackers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HollandTrackers] CHECK CONSTRAINT [FK_HollandTrackers_Users_UserId]
GO
ALTER TABLE [dbo].[MbtiTrackers]  WITH CHECK ADD  CONSTRAINT [FK_MbtiTrackers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MbtiTrackers] CHECK CONSTRAINT [FK_MbtiTrackers_Users_UserId]
GO
ALTER TABLE [dbo].[MIQuestions]  WITH CHECK ADD  CONSTRAINT [FK_MIQuestions_MITables_TableId] FOREIGN KEY([TableId])
REFERENCES [dbo].[MITables] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MIQuestions] CHECK CONSTRAINT [FK_MIQuestions_MITables_TableId]
GO
ALTER TABLE [dbo].[MITrackers]  WITH CHECK ADD  CONSTRAINT [FK_MITrackers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MITrackers] CHECK CONSTRAINT [FK_MITrackers_Users_UserId]
GO
