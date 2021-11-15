USE [VocationalGuidance]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/14/2021 8:48:51 PM ******/
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
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[HollandMultipleChoices]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[HollandResult]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[HollandScore]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[HollandTables]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[HollandTrackers]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[UserClaims]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[UserLogins]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/14/2021 8:48:52 PM ******/
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
/****** Object:  Table [dbo].[UserTokens]    Script Date: 11/14/2021 8:48:52 PM ******/
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
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (1, N'Sáng tạo để thành công', N'Sáng tạo để thành công', N'sang-tao-de-thanh-cong', 0, N'<h2><strong>Bài học thành công số 6: Thất bại là cơ hội để học hỏi</strong></h2><p><strong>Thất bại và thành công</strong>, hai khía cạnh tưởng chừng đối lập nhưng lại <strong>luôn song hành</strong>. Thất bại là cơ hội cho chúng ta học hỏi, thay đổi và nỗ lực hơn để thành công. Biết vươn lên sau thất bại chính là một loại thành công nhưng sau khi thành công mà buông bỏ một cách dễ dàng đó chính là thất bại. Vì vậy, hãy tạo cho mình suy nghĩ về sự thất bại như là cơ hội để học hỏi, dấu mốc của thành công và thất bại là một trong những <a href="https://www.mindalife.vn/cai-gia-cua-thanh-cong/"><strong>cái giá của thành công</strong></a>.</p><p>Henry Ford đã từng nói rằng “Thất bại là cơ hội để bắt đầu lại một lần nữa nhưng lần này là thông minh hơn”. Edison cũng đã làm với “10 nghìn” sai lầm của mình để có một thành công đặc biệt. Nói chung, mỗi thất bại là một bài học kinh nghiệm giúp bạn đi đúng hướng.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-7.png" alt="Bài học thành công số 6: Thất bại là cơ hội để học hỏi"></figure><p><i>Thất bại là cơ hội để học hỏi</i></p><h2><strong>Bài học thành công số 7: Sự khác biệt đến từ thái độ về sự thất bại</strong></h2><p>Bài học thành công trong kinh doanh số 7 chính là sự khác biệt đến từ thái độ về sự thất bại. Winston Churchill từng nói “Thành công là khả năng đi từ thất bại đến thất bại mà không mất đi sự nhiệt tình”. Anh quốc đã gặp rất nhiều bất lợi lớn trong thế chiến thứ II. Tuy nhiên, Winston Churchill luôn có thái độ tích cực về những bất lợi đó và có những thay đổi mang tính lịch sử trong trận chiến này.</p><h2><strong>Bài học thành công số 8: Không bao giờ bỏ cuộc</strong></h2><p>Dù có thất bại cũng không bao giờ nghĩ đến bỏ cuộc. Đây là bài học được chia sẻ từ những người thành công. Con đường kinh doanh của ông Phạm Nhật Vượng – Chủ tịch tập đoàn VinGroup không hề trải đầy “hoa hồng” như bạn vẫn nghĩ. Đã có rất nhiều khó khăn xuất hiện nhưng dựa vào tài năng, tầm nhìn và bản lĩnh “thép” trên thương trường, ông đã phát triển VinGroup mạnh mẽ như hôm nay.</p><p>Một trong những huấn luyện viên nổi tiếng của bộ môn bóng bầu dục Mỹ Vince Lombardi đã từng chia sẻ “Người chiến thắng không bao giờ bỏ cuộc, người bỏ cuộc không bao giờ chiến thắng”. Rất ít thành công không phải trải qua khó khăn và thất bại. Khi đó, những người biết đứng dậy sau thất bại và vững vàng bước tiếp về phía trước mới có thể chạm tới thành công.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1.jpg" alt="Bài học thành công số 8: Không bao giờ bỏ cuộc" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1.jpg 598w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-6-1-415x400.jpg 415w" sizes="100vw" width="598"></figure><p><i>Dù có thất bại cũng không bao giờ nghĩ đến bỏ cuộc</i></p><h2><strong>Bài học thành công số 9: Không phải ai cũng ủng hộ bạn</strong></h2><p>Trên con đường thành công, không phải tất cả mọi người đều ủng hộ bạn. Một số người sẽ công kích, ghen tuông, giận dữ, dè bỉu nhưng thật ra tất cả đều không quan trọng như bạn nghĩ. Nhà văn nổi tiếng Dr. Seuss từng chia sẻ “Những người thực sự quan trọng sẽ chẳng mấy bận tâm, những kẻ bận tâm lại chẳng mấy quan trọng”. Cho nên, không cần phí công sức và thời gian để làm hài lòng mọi người, hãy dành năng lượng cho những con người thực sự quan trọng và những điều ý nghĩa đối với cuộc sống của bạn.</p><h2><strong>Bài học thành công số 10: Can đảm vượt qua thử thách</strong></h2><p>Can đảm vượt qua thử thách là một trong những yếu tố tạo nên thành công. John Stephen Akhwari từng chạy vòng tròn 400m khi vết thương ở chân vẫn đang chảy máu. Còn Akhwari đã ngã và bị thương trên đường chạy, tất cả mọi người đã đứng lên, vỗ tay cho đến khi anh về đích. Akhwari đã quên đi nỗi đau trước mắt, chỉ chú tâm vào mục đích lớn đó là hoàn thành cuộc thi.</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8.jpg" alt="Bài học thành công số 10: Can đảm vượt qua thử thách" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8.jpg 600w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8-400x400.jpg 400w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-8-280x280.jpg 280w" sizes="100vw" width="600"></figure><p><i>Can đảm là một trong những yếu tố tạo nên thành công</i></p><p>Để đến được với thành công bất cứ ai trong chúng ta cũng từng trải qua thất bại ít nhất một lần. Buồn tủi, lo lắng, chán nản, bỏ cuộc,… là cách mà nhiều người đã lựa chọn, kết quả chỉ là thất bại nối tiếp thất bại. Hãy biến thất bại thành những bài học thành công quý giá, làm hành trang trên con đường dẫn tới thành công.</p><p>Để lại bình luận bên dưới bài viết nếu bạn còn băn khoăn hoặc muốn thảo luận với Mindalife. Thường xuyên truy cập <a href="https://www.mindalife.vn/"><strong>mindalife.vn</strong></a> để không bỏ lỡ những bài chia sẻ hữu ích về kỹ năng, phương pháp phát triển bản thân hiệu quả.</p>', N'study-la-gi-e1625197257149.jpg', CAST(N'2021-11-12 17:22:13.1476557' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'2021-11-13 15:26:03.2671122' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', 2)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (2, N'Người thành công luôn có lối đi riêng', N'Bí quyết thành công', N'bi-quyet-thanh-cong', 0, N'Người thành công', N'congrat-removebg-preview.png', CAST(N'2021-11-13 15:07:16.0487055' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 2)
INSERT [dbo].[Blogs] ([Id], [Name], [Title], [MetaTitle], [ViewCount], [Content], [Image], [CreatedAt], [CreatedBy], [ModifyDate], [ModifyBy], [CategoryId]) VALUES (3, N'Bài học cho các bạn trẻ', N'bài học', N'bai-hoc', 0, N'<h2><strong>Bài học thành công số 1: Chấp nhận thất bại và tiếp tục cố gắng</strong></h2><p>“Tôi có thể chấp nhận thất bại, bất cứ ai cũng có thể không thành công ở điều gì đó. Nhưng tôi không chấp nhận sự không cố gắng” – câu nói nổi tiếng của Michael Jordan. Thất bại là một trong những phương tiện đi đến một kết thúc nhưng không phải là sự kết thúc tất cả. Nó là một phần trong hành trình dẫn đến thành công. Chúng ta có thể không thành công ở một thời điểm nào đó nhưng điều quan trọng là phải can đảm để vượt qua và tiếp tục cố gắng.</p><h2><strong>Bài học thành công số 2: Tiến về phía trước, bất chấp thất bại</strong></h2><p>Jack Ma đã từng nói rằng, “Thất bại thực sự là khi bạn dừng tiến về phía trước”. Walt Disney – ông chủ hãng phim hoạt hình lớn nhất thế giới đã từng bị sa thải vì không có ý tưởng tốt. Bài học mà Mindalife muốn chia sẻ với bạn đó là bất chấp thất bại, luôn luôn hướng về phía trước.&nbsp;&nbsp;</p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-2.jpg" alt="Tiến về phía trước, bất chấp thất bại" srcset="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-2.jpg 600w, https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-2-596x400.jpg 596w" sizes="100vw" width="600"></figure><p><i>Tiến về phía trước, bất chấp thất bại</i></p><h2><strong>Bài học thành công số 3: Kiên trì theo đuổi thành công</strong></h2><p>Kiên trì là kỹ năng, thái độ khi theo đuổi mục tiêu mà mình đã đề ra. Đó là những nỗ lực, cố gắng, không bỏ cuộc dù gặp bất cứ khó khăn gì. Ông cha ta từng nói “Có công mài sắt, có ngày nên kim”. Lời răn dạy này mang ý nghĩa phải kiên trì, nỗ lực thì mới có thể gặt hái được thành công. Tất nhiên, sự kiên trì phải được sử dụng đúng lúc, đúng chỗ.</p><p>Trong cuộc sống, sẽ có lúc bạn phải đối mặt với rất nhiều áp lực và khó khăn khiến bạn muốn từ bỏ tất cả. Nhưng, từ bỏ không phải là lựa chọn đúng đắn. Kiên trì chính là gốc rễ của sự thành công, giúp mang đến những cơ hội mới khi khó khăn, mạnh mẽ để xử lý khủng hoảng và lạc quan hơn trong cuộc sống.&nbsp;&nbsp;</p><h2><strong>Bài học thành công số 4: Thay đổi để thành công</strong></h2><p>Bài học thành công số 4 mà Mindalife muốn chia sẻ đó chính là thay đổi để thành công. <a href="https://en.wikipedia.org/wiki/Ben_%26_Jerry%27s"><strong>Ben &amp; Jerry</strong></a> là những người đại diện cho việc thay đổi hướng đi để có thể đạt được thành công như hiện tại. Jerry Greenfield đã không thể thi vào trường Y, Ben Cohen đã bỏ học, cả hai quyết định rẽ sang hướng khác và họ đã thành công.</p><p><strong>&gt;&gt;&gt;&gt; Đừng bỏ lỡ </strong><a href="https://www.mindalife.vn/thay-doi-de-thanh-cong/"><strong>5 cách thay đổi để thành công trong công việc và cuộc sống</strong></a></p><figure class="image"><img src="https://www.mindalife.vn/wp-content/uploads/2020/05/bai-hoc-thanh-cong-3.jpg" alt="Thay đổi để thành công"></figure><p><i>Thay đổi để thành công</i></p><h2><strong>Bài học thành công số 5: Tin tưởng vào khả năng của bản thân</strong></h2><p>Khi bạn đủ tin tưởng vào bản thân, cả thế giới không tin tưởng cũng chẳng ảnh hưởng đến niềm vui sống của bạn. Niềm tin không phải tự nhiên mà có, nó cần được xây dựng từ chính bạn. Khi bạn có niềm tin vào chính mình, bạn sẽ có khả năng tin tưởng vào rất nhiều điều lớn lao khác.&nbsp;Ngay hôm nay, hãy đánh thức sự tự tin trong con người bạn, hãy <a href="https://www.mindalife.vn/hoc-cach-tu-tin/"><strong>học cách tự tin vào bản thân</strong></a>.</p><p>Hãy tưởng tượng chuyện gì sẽ đến nếu đức Phật không tin vào con đường riêng của mình mà chỉ tin lời cha “Con là một hoàng tử, hãy kế nghiệp cha và trị vì đất nước,…”. Chuyện gì sẽ xảy ra nếu Jesus không tin tưởng vào con đường của chính mình mà chỉ tin vào lời nói của mọi người “Ông chỉ là con trai của một người thợ mộc, không là gì cả, là một kẻ báng bổ, không giống con của Thượng Đế chút nào,…”.</p><p>Carol Burnett, Lucille Ball và Elvis Presley đã từng được khuyên nhủ nên thu xếp hành lý và trở về nhà bởi họ thực sự không có tài năng. Hãy tưởng tượng một thế giới không có sự hài hước của họ và không có âm nhạc sẽ ra sao? Thành công bắt đầu từ việc tin tưởng vào khả năng của bản thân, đừng để người khác cản trở con đường tiến tới thành công của bạn.</p>', N'study-la-gi-e1625197257149.jpg', CAST(N'2021-11-13 15:23:22.5703417' AS DateTime2), N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', 2)
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
SET IDENTITY_INSERT [dbo].[HollandTrackers] OFF
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f39a6ba2-d19f-49ba-b75e-2f5c4f1aaaf2', N'Role pupil for person study in school (under 18)', N'pupil', N'pupil', N'6d7b8bd2-bcca-40b5-ac81-982b7174f417')
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a01ab883-d923-4c7d-bf6f-42d1592f2280', N'Administrator role', N'admin', N'admin', N'238de137-a7cd-43c6-8b7a-e6762f442c5d')
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef936e2f-d09a-4fdf-8842-459ed6350702', N'Role student for person study in university', N'student', N'student', N'e23ba8a6-5b22-4dac-9c0f-9315adefa500')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'937cf000-bf56-4dd5-8d83-08d9a65c9d57', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'ef936e2f-d09a-4fdf-8842-459ed6350702')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', N'a01ab883-d923-4c7d-bf6f-42d1592f2280')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'937cf000-bf56-4dd5-8d83-08d9a65c9d57', N'Quân', N'Vũ Văn', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'0123987654', N'0123987654', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEO8i83UJ6fe3MbrqTgdx+zvas36vMg0Lc0lW2tiesfMO2E2QGZXEYImDIo2iCszNIA==', N'SICPJSERB5RFK3WX73IV4GJ7HLWESVTZ', N'712b2503-fd0a-4253-b923-44955301fa3c', N'0123987654', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4790b67c-8dd9-45c0-8457-0eaa334382ed', N'Minh', N'Van', CAST(N'1999-01-10 00:00:00.0000000' AS DateTime2), N'0234565578', N'0234565578', N'abcd@gmail.com', N'ABCD@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMbfa45KYONEIBK6E4R1k+I5ODTvIgvGKjQG/ebWt9CLCHuHbnFHqdWehecicvUjHQ==', N'', N'ee1e4d4c-5370-4478-9355-596ae293f97f', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DoB], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1c2e9655-416b-4ff8-9413-1e1d13e0f403', N'Anh', N'Quang', CAST(N'1998-02-23 00:00:00.0000000' AS DateTime2), N'0123456789', N'0123456789', N'abcxyz@gmail.com', N'ABCXYZ@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBJu1krAo303oKq6mjob/Kakta7vQXr9L8ZL0L1vSByS73PPwzp3OFM3yul4XBuZog==', N'', N'31799512-273e-42fc-91a7-68adbd464599', NULL, 0, 0, NULL, 0, 0)
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
