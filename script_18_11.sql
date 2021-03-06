USE [VocationalGuidance]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[HollandMultipleChoices]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[HollandResult]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[HollandScore]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[HollandTables]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[HollandTrackers]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[MbtiResults]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[MbtiTables]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[MbtiTrackers]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[UserClaims]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[UserLogins]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/18/2021 7:14:38 PM ******/
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
/****** Object:  Table [dbo].[UserTokens]    Script Date: 11/18/2021 7:14:38 PM ******/
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
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (1, N'Sáng tạo để thành công', N'Sáng tạo để thành công', N'sang-tao-de-thanh-cong', 3, N'<h2><strong>Bài học thành công số 6: Thất bại là cơ hội để học hỏi</strong></h2><p><strong>Thất bại và thành công</strong>, hai khía cạnh tưởng chừng đối lập nhưng lại <strong>luôn song hành</strong>. Thất bại là cơ hội cho chúng ta học hỏi, thay đổi và nỗ lực hơn để thành công. Biết vươn lên sau thất bại chính là một loại thành công nhưng sau khi thành công mà buông bỏ một cách dễ dàng đó chính là thất bại. Vì vậy, hãy tạo cho mình suy nghĩ về sự thất bại như là cơ hội để học hỏi, dấu mốc của thành công và thất bại là một trong những <a href="https://www.mindalife.vn/cai-gia-cua-thanh-cong/"><strong>cái giá của thành công</strong></a>.</p><p>Henry Ford đã từng nói rằng “Thất bại là cơ hội để bắt đầu lại một lần nữa nhưng lần này là thông minh hơn”. Edison cũng đã làm với “10 nghìn” sai lầm của mình để có một thành công đặc biệt. Nói chung, mỗi thất bại là một bài học kinh nghiệm giúp bạn đi đúng hướng.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-7.png" alt="Bài học thành công số 6: Thất bại là cơ hội để học hỏi"></figure><p><i>Thất bại là cơ hội để học hỏi</i></p><h2><strong>Bài học thành công số 7: Sự khác biệt đến từ thái độ về sự thất bại</strong></h2><p>Bài học thành công trong kinh doanh số 7 chính là sự khác biệt đến từ thái độ về sự thất bại. Winston Churchill từng nói “Thành công là khả năng đi từ thất bại đến thất bại mà không mất đi sự nhiệt tình”. Anh quốc đã gặp rất nhiều bất lợi lớn trong thế chiến thứ II. Tuy nhiên, Winston Churchill luôn có thái độ tích cực về những bất lợi đó và có những thay đổi mang tính lịch sử trong trận chiến này.</p><h2><strong>Bài học thành công số 8: Không bao giờ bỏ cuộc</strong></h2><p>Dù có thất bại cũng không bao giờ nghĩ đến bỏ cuộc. Đây là bài học được chia sẻ từ những người thành công. Con đường kinh doanh của ông Phạm Nhật Vượng – Chủ tịch tập đoàn VinGroup không hề trải đầy “hoa hồng” như bạn vẫn nghĩ. Đã có rất nhiều khó khăn xuất hiện nhưng dựa vào tài năng, tầm nhìn và bản lĩnh “thép” trên thương trường, ông đã phát triển VinGroup mạnh mẽ như hôm nay.</p><p>Một trong những huấn luyện viên nổi tiếng của bộ môn bóng bầu dục Mỹ Vince Lombardi đã từng chia sẻ “Người chiến thắng không bao giờ bỏ cuộc, người bỏ cuộc không bao giờ chiến thắng”. Rất ít thành công không phải trải qua khó khăn và thất bại. Khi đó, những người biết đứng dậy sau thất bại và vững vàng bước tiếp về phía trước mới có thể chạm tới thành công.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1.jpg" alt="Bài học thành công số 8: Không bao giờ bỏ cuộc" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1.jpg 598w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1-415x400.jpg 415w" sizes="100vw" width="598"></figure><p><i>Dù có thất bại cũng không bao giờ nghĩ đến bỏ cuộc</i></p><h2><strong>Bài học thành công số 9: Không phải ai cũng ủng hộ bạn</strong></h2><p>Trên con đường thành công, không phải tất cả mọi người đều ủng hộ bạn. Một số người sẽ công kích, ghen tuông, giận dữ, dè bỉu nhưng thật ra tất cả đều không quan trọng như bạn nghĩ. Nhà văn nổi tiếng Dr. Seuss từng chia sẻ “Những người thực sự quan trọng sẽ chẳng mấy bận tâm, những kẻ bận tâm lại chẳng mấy quan trọng”. Cho nên, không cần phí công sức và thời gian để làm hài lòng mọi người, hãy dành năng lượng cho những con người thực sự quan trọng và những điều ý nghĩa đối với cuộc sống của bạn.</p><h2><strong>Bài học thành công số 10: Can đảm vượt qua thử thách</strong></h2><p>Can đảm vượt qua thử thách là một trong những yếu tố tạo nên thành công. John Stephen Akhwari từng chạy vòng tròn 400m khi vết thương ở chân vẫn đang chảy máu. Còn Akhwari đã ngã và bị thương trên đường chạy, tất cả mọi người đã đứng lên, vỗ tay cho đến khi anh về đích. Akhwari đã quên đi nỗi đau trước mắt, chỉ chú tâm vào mục đích lớn đó là hoàn thành cuộc thi.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8.jpg" alt="Bài học thành công số 10: Can đảm vượt qua thử thách" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8.jpg 600w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8-400x400.jpg 400w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8-280x280.jpg 280w" sizes="100vw" width="600"></figure><p><i>Can đảm là một trong những yếu tố tạo nên thành công</i></p><p>Để đến được với thành công bất cứ ai trong chúng ta cũng từng trải qua thất bại ít nhất một lần. Buồn tủi, lo lắng, chán nản, bỏ cuộc,… là cách mà nhiều người đã lựa chọn, kết quả chỉ là thất bại nối tiếp thất bại. Hãy biến thất bại thành những bài học thành công quý giá, làm hành trang trên con đường dẫn tới thành công.</p><p>Để lại bình luận bên dưới bài viết nếu bạn còn băn khoăn hoặc muốn thảo luận với Mindalife. Thường xuyên truy cập <a href="https://www.mindalife.vn/"><strong>mindalife.vn</strong></a> để không bỏ lỡ những bài chia sẻ hữu ích về kỹ năng, phương pháp phát triển bản thân hiệu quả.</p>', N'study-la-gi-e1625197257149.jpg', CAST(N'2021-11-12 17:22:13.1476557' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'2021-11-15 16:41:48.0529742' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', 1)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (2, N'Người thành công luôn có lối đi riêng', N'Bí quyết thành công', N'bi-quyet-thanh-cong', 1, N'Người thành công', N'congrat-removebg-preview.png', CAST(N'2021-11-13 15:07:16.0487055' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 2)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Tin tức')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Cẩm nang')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[HollandMultipleChoices] ON 

INSERT [dbo].[HollandMultipleChoices] ([Id], [Question], [HLTableId]) VALUES (1, N'Tôi có tính tự lập', 1)
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
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f39a6ba2-d19f-49ba-b75e-2f5c4f1aaaf2', N'Role pupil for person study in school (under 18)', N'pupil', N'pupil', N'e3271b21-55bd-47b9-aa1e-02bccc70d22d')
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a01ab883-d923-4c7d-bf6f-42d1592f2280', N'Administrator role', N'admin', N'admin', N'634a8c3b-9fe8-44a1-824f-0ab91fd0250e')
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef936e2f-d09a-4fdf-8842-459ed6350702', N'Role student for person study in university', N'student', N'student', N'e960cba1-666f-467c-8180-bc586a0a034c')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'937cf000-bf56-4dd5-8d83-08d9a65c9d57', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e46ac756-325d-4100-cf33-08d9a8e68ff7', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', N'a01ab883-d923-4c7d-bf6f-42d1592f2280')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'937cf000-bf56-4dd5-8d83-08d9a65c9d57', N'Đ Quân', N'Vũ Văn', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'0123987654', N'0123987654', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEO8i83UJ6fe3MbrqTgdx+zvas36vMg0Lc0lW2tiesfMO2E2QGZXEYImDIo2iCszNIA==', N'SICPJSERB5RFK3WX73IV4GJ7HLWESVTZ', N'712b2503-fd0a-4253-b923-44955301fa3c', N'0123987654', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e46ac756-325d-4100-cf33-08d9a8e68ff7', N'DEFFF', N'ABC', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'0123456987', N'0123456987', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEAVj6vaMElMfd2h+998ifuuETWTVnC2V+4BCse0l5fS7JuMZw4HoAOo2rR9TXlDxqQ==', N'CHPNYPH2VBPFCDQF2HXTEALMZPGCECFO', N'8c459674-f62b-4ea9-a16d-869b97a7ebff', N'0123456987', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'Minh', N'Van', CAST(N'1999-01-10 00:00:00.0000000' AS DateTime2), N'0234565578', N'0234565578', N'abcd@gmail.com', N'ABCD@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIeR+R+7Reo8b8qG+qY5p1BxdjCkWko+k+fvfwVIX7eQhy9eqwmezHYhhsTBKRcOGw==', N'', N'7f4ac347-11cd-4c47-a64d-dfc2020c7c2d', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', N'Anh', N'Quang', CAST(N'1998-02-23 00:00:00.0000000' AS DateTime2), N'0123456789', N'0123456789', N'abcxyz@gmail.com', N'ABCXYZ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKq1O8N9EtzCFTzKOC8HJ7ttaZ/xaIIgxoHRZFGGe+0eCBiQGoHZyO4+cxWnuwlmqQ==', N'', N'1805bfec-4816-4885-a30b-4c3090376382', NULL, 0, 0, NULL, 0, 0)
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryId]
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
