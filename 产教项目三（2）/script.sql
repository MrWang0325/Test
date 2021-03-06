create database [PetBlog]
go

USE [PetBlog]
GO
/****** Object:  Table [dbo].[Articl_Words]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articl_Words](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WordPattern] [nvarchar](max) NOT NULL,
	[IsForbid] [bit] NOT NULL,
	[IsMod] [bit] NOT NULL,
	[ReplaceWord] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Articl_Words] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImgList]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IngUrl] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[NewsID] [int] NOT NULL,
 CONSTRAINT [PK_ImgList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Det] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ImgUrl] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[Count] [int] NOT NULL,
	[UserInfoID] [int] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PetComment]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Det] [nvarchar](max) NOT NULL,
	[CommentTime] [datetime] NOT NULL,
	[UsersID] [int] NOT NULL,
 CONSTRAINT [PK_PetComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PetInfo]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImgUrl] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Det] [nvarchar](max) NOT NULL,
	[Count] [int] NOT NULL,
	[PetTypeID] [int] NOT NULL,
	[UsersID] [int] NOT NULL,
	[UserInfoID] [int] NOT NULL,
 CONSTRAINT [PK_PetInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PetServer]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetServer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[ImgUrl] [nvarchar](max) NOT NULL,
	[Eamil] [nvarchar](max) NOT NULL,
	[BusinessTime] [nvarchar](max) NOT NULL,
	[Classify] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[LocalX] [float] NOT NULL,
	[LocalY] [float] NOT NULL,
 CONSTRAINT [PK_PetServer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PetType]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_PetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[UserPass] [nvarchar](max) NOT NULL,
	[RegTime] [datetime] NOT NULL,
	[Eamil] [nvarchar](max) NOT NULL,
	[HeadUrl] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2018/10/17 19:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Pwd] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[HeadImg] [nvarchar](max) NOT NULL,
	[Eamil] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (6, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (7, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (8, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (9, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/9045ee6c-533f-4010-b5d1-b0037e9cfb4c.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (15, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (16, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (17, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (18, N'法国斗牛犬可以顺产吗，在我们看来狗狗一般情况下都是顺产的，很少有刨腹产的。但是，也有例外，狗狗也有刨腹产的。法国斗牛犬由于头大和骨骼也比较大。所以纯种的狗狗在生狗宝宝时有时会出现难产的症状，不过，多数法国斗牛犬还是可以顺产的。下面我们就来了解下吧。', N'法国斗牛犬可以顺产吗难产如何快速解决', CAST(0x0000A95700000000 AS DateTime), N'/Admin/Img/News/1.jpg', 0, 0, 1)
INSERT [dbo].[News] ([ID], [Det], [Title], [CreateTime], [ImgUrl], [IsDelete], [Count], [UserInfoID]) VALUES (19, N'sss', N'沙漠', CAST(0x0000A97B00ACCC7B AS DateTime), N'/Admin/Img/News/958a9881-1626-4f81-864c-adc4b32e2613.jpg', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[PetInfo] ON 

INSERT [dbo].[PetInfo] ([ID], [ImgUrl], [IsDelete], [CreateTime], [Det], [Count], [PetTypeID], [UsersID], [UserInfoID]) VALUES (5, N'http://192.168.52.194:5744/Admin/Img/Pet/1.jpg', 0, CAST(0x0000A48F00000000 AS DateTime), N'可爱吗', 0, 1, 55, 1)
INSERT [dbo].[PetInfo] ([ID], [ImgUrl], [IsDelete], [CreateTime], [Det], [Count], [PetTypeID], [UsersID], [UserInfoID]) VALUES (6, N'http://192.168.52.194:5744/Admin/Img/Pet/2.jpg', 0, CAST(0x0000A48F00000000 AS DateTime), N'可爱吗', 0, 1, 55, 1)
INSERT [dbo].[PetInfo] ([ID], [ImgUrl], [IsDelete], [CreateTime], [Det], [Count], [PetTypeID], [UsersID], [UserInfoID]) VALUES (7, N'http://192.168.52.194:5744/Admin/Img/Pet/3.jpg', 0, CAST(0x0000A48F00000000 AS DateTime), N'可爱吗', 0, 1, 55, 1)
SET IDENTITY_INSERT [dbo].[PetInfo] OFF
SET IDENTITY_INSERT [dbo].[PetServer] ON 

INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (2, N'贝利健宠物医院(南坪店)', N'重庆市南岸区金山路163号附10号', N'(023)86361215', N'/Admin/Img/server1.jpg', N'beijian@qq.com', N'12:00AM 14:00PM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (4, N'天使宠物医院(洛川中路店)', N'洛川中路612号(近共和新路)', N'021-56031628', N'/Admin/Img/server2.jpg', N'tianshi@qq.com', N'09  5 2018 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (5, N'贝利健宠物医院(南坪店)', N'重庆市南岸区金山路163号附10号', N'(023)86361215', N'/Admin/Img/server1.jpg', N'beijian@qq.com', N'08  9 2015 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (6, N'天使宠物医院(洛川中路店)', N'洛川中路612号(近共和新路)', N'021-56031628', N'/Admin/Img/server2.jpg', N'tianshi@qq.com', N'09  5 2018 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (7, N'贝利健宠物医院(南坪店)', N'重庆市南岸区金山路163号附10号', N'(023)86361215', N'/Admin/Img/server1.jpg', N'beijian@qq.com', N'08  9 2015 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (9, N'贝利健宠物医院(南坪店)', N'重庆市南岸区金山路163号附10号', N'(023)86361215', N'/Admin/Img/server1.jpg', N'beijian@qq.com', N'08  9 2015 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (10, N'天使宠物医院(洛川中路店)', N'洛川中路612号(近共和新路)', N'021-56031628', N'/Admin/Img/server2.jpg', N'tianshi@qq.com', N'09  5 2018 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (11, N'贝利健宠物医院(南坪店)', N'重庆市南岸区金山路163号附10号', N'(023)86361215', N'/Admin/Img/server1.jpg', N'beijian@qq.com', N'08  9 2015 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (12, N'天使宠物医院(洛川中路店)', N'洛川中路612号(近共和新路)', N'021-56031628', N'/Admin/Img/server2.jpg', N'tianshi@qq.com', N'09  5 2018 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (13, N'贝利健宠物医院(南坪店)', N'重庆市南岸区金山路163号附10号', N'(023)86361215', N'/Admin/Img/server1.jpg', N'beijian@qq.com', N'08  9 2015 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (14, N'天使宠物医院(洛川中路店)', N'洛川中路612号(近共和新路)', N'021-56031628', N'/Admin/Img/server2.jpg', N'tianshi@qq.com', N'09  5 2018 12:00AM', N'医院', 0, 0, 0)
INSERT [dbo].[PetServer] ([ID], [Name], [Address], [Phone], [ImgUrl], [Eamil], [BusinessTime], [Classify], [IsDelete], [LocalX], [LocalY]) VALUES (15, N'嘻嘻嘻', N'daaaaa', N'08518235841', N'/Admin/Img/6b0f078b-48cd-481f-af20-35ab0a734363.jpg', N'zzz@qq.com', N'早上 9:00  下午 14:00', N'宠物洗澡', 0, 10, 20)
SET IDENTITY_INSERT [dbo].[PetServer] OFF
SET IDENTITY_INSERT [dbo].[PetType] ON 

INSERT [dbo].[PetType] ([ID], [Type], [IsDelete]) VALUES (1, N'猫', 0)
INSERT [dbo].[PetType] ([ID], [Type], [IsDelete]) VALUES (2, N'狗', 0)
INSERT [dbo].[PetType] ([ID], [Type], [IsDelete]) VALUES (3, N'仓鼠', 0)
SET IDENTITY_INSERT [dbo].[PetType] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([ID], [UserName], [UserPass], [RegTime], [Eamil], [HeadUrl]) VALUES (1, N'admin', N'123456', CAST(0x0000A93300000000 AS DateTime), N'aa@qq.com', N'http://192.168.52.194:5744/Admin/Img/1.jpg')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (55, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (56, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (57, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (60, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (61, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (62, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (63, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (64, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (65, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (66, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (67, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (68, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (69, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (70, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (71, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (72, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (73, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (74, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (75, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (76, N'白羽', N'12349789888', N'123456', 23, N'女', N'重庆市', N'/Admin/Img/9f0db2e8-5e79-4158-a795-7fccac2c7a0c.jpg', N'wang@qq.com', CAST(0x0000A977012E743F AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (77, N'丽家的车', N'13598445656', N'000000', 18, N'女', N'重庆市', N'/Admin/Img/7fb48327-bad4-4b2e-8f5d-6370236926df.jpg', N'lijia@qq.com', CAST(0x0000A977012EA89A AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (78, N'hollo ket', N'15852589635', N'123456', 19, N'女', N'贵阳', N'/Admin/Img/18c9e30d-e979-40b1-a7d9-7c1c5db800d6.jpg', N'1764424695@qq.com', CAST(0x0000A977012F96AC AS DateTime), 0)
INSERT [dbo].[Users] ([ID], [UserName], [Phone], [Pwd], [Age], [Sex], [Address], [HeadImg], [Eamil], [CreateTime], [IsDelete]) VALUES (79, N'xxxxx', N'0000000', N'000000', 20, N'男', N'谢谢', N'2', N'2', CAST(0x0000A48C00000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [IX_FK_NewsImgList]    Script Date: 2018/10/17 19:39:59 ******/
CREATE NONCLUSTERED INDEX [IX_FK_NewsImgList] ON [dbo].[ImgList]
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_UserInfoNews]    Script Date: 2018/10/17 19:39:59 ******/
CREATE NONCLUSTERED INDEX [IX_FK_UserInfoNews] ON [dbo].[News]
(
	[UserInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_UsersPetComment]    Script Date: 2018/10/17 19:39:59 ******/
CREATE NONCLUSTERED INDEX [IX_FK_UsersPetComment] ON [dbo].[PetComment]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_PetTypePetInfo]    Script Date: 2018/10/17 19:39:59 ******/
CREATE NONCLUSTERED INDEX [IX_FK_PetTypePetInfo] ON [dbo].[PetInfo]
(
	[PetTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_UserInfoPetInfo]    Script Date: 2018/10/17 19:39:59 ******/
CREATE NONCLUSTERED INDEX [IX_FK_UserInfoPetInfo] ON [dbo].[PetInfo]
(
	[UserInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_UsersPetInfo]    Script Date: 2018/10/17 19:39:59 ******/
CREATE NONCLUSTERED INDEX [IX_FK_UsersPetInfo] ON [dbo].[PetInfo]
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ImgList]  WITH CHECK ADD  CONSTRAINT [FK_NewsImgList] FOREIGN KEY([NewsID])
REFERENCES [dbo].[News] ([ID])
GO
ALTER TABLE [dbo].[ImgList] CHECK CONSTRAINT [FK_NewsImgList]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoNews] FOREIGN KEY([UserInfoID])
REFERENCES [dbo].[UserInfo] ([ID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_UserInfoNews]
GO
ALTER TABLE [dbo].[PetComment]  WITH CHECK ADD  CONSTRAINT [FK_UsersPetComment] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[PetComment] CHECK CONSTRAINT [FK_UsersPetComment]
GO
ALTER TABLE [dbo].[PetInfo]  WITH CHECK ADD  CONSTRAINT [FK_PetTypePetInfo] FOREIGN KEY([PetTypeID])
REFERENCES [dbo].[PetType] ([ID])
GO
ALTER TABLE [dbo].[PetInfo] CHECK CONSTRAINT [FK_PetTypePetInfo]
GO
ALTER TABLE [dbo].[PetInfo]  WITH CHECK ADD  CONSTRAINT [FK_UserInfoPetInfo] FOREIGN KEY([UserInfoID])
REFERENCES [dbo].[UserInfo] ([ID])
GO
ALTER TABLE [dbo].[PetInfo] CHECK CONSTRAINT [FK_UserInfoPetInfo]
GO
ALTER TABLE [dbo].[PetInfo]  WITH CHECK ADD  CONSTRAINT [FK_UsersPetInfo] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[PetInfo] CHECK CONSTRAINT [FK_UsersPetInfo]
GO
USE [master]
GO
ALTER DATABASE [PetBlog] SET  READ_WRITE 
GO
