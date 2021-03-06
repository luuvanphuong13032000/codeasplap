USE [quantri]
GO
/****** Object:  Table [dbo].[danhmucsanpham]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmucsanpham](
	[madanhmucsanpham] [int] NOT NULL,
	[tendanhmucsanpham] [nvarchar](50) NULL,
 CONSTRAINT [PK_danhmucsanpham] PRIMARY KEY CLUSTERED 
(
	[madanhmucsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[danhmuctintuc]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuctintuc](
	[madanhmuctintuc] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuctintuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_danhmuctintuc] PRIMARY KEY CLUSTERED 
(
	[madanhmuctintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makhachhang] [int] IDENTITY(1,1) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[tennhanvien] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masanpham] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[tensanpham] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
	[gia] [nvarchar](50) NULL,
	[madanhmucsanpham] [int] NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tintuc]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[matintuc] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](50) NULL,
	[tentintuc] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
	[chitiet] [nvarchar](50) NULL,
	[madanhmuctintuc] [int] NULL,
 CONSTRAINT [PK_tintuc1] PRIMARY KEY CLUSTERED 
(
	[matintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_table]    Script Date: 05/28/21 7:10:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[pass_word] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_user_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (1, N'v')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (11, N'aaa')
INSERT [dbo].[danhmucsanpham] ([madanhmucsanpham], [tendanhmucsanpham]) VALUES (12, N'ss')
SET IDENTITY_INSERT [dbo].[danhmuctintuc] ON 

INSERT [dbo].[danhmuctintuc] ([madanhmuctintuc], [tendanhmuctintuc]) VALUES (1, N'a')
INSERT [dbo].[danhmuctintuc] ([madanhmuctintuc], [tendanhmuctintuc]) VALUES (2, N'wwwee')
SET IDENTITY_INSERT [dbo].[danhmuctintuc] OFF
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([makhachhang], [tenkhachhang], [ngaysinh], [diachi], [sodienthoai], [email]) VALUES (1, N's', CAST(N'1999-01-01' AS Date), N'a', N'11111', N'111')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([manhanvien], [anh], [tennhanvien], [ngaysinh], [diachi], [sodienthoai]) VALUES (2, N'..', N'a', CAST(N'1999-01-01' AS Date), N'a', N'111')
INSERT [dbo].[nhanvien] ([manhanvien], [anh], [tennhanvien], [ngaysinh], [diachi], [sodienthoai]) VALUES (3, N'hinhnen.jpg', N'a', CAST(N'1999-01-01' AS Date), N'a', N'111')
INSERT [dbo].[nhanvien] ([manhanvien], [anh], [tennhanvien], [ngaysinh], [diachi], [sodienthoai]) VALUES (4, N'thumb-ponyo049.png', N'a', CAST(N'1999-01-01' AS Date), N'a', N'1111')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
SET IDENTITY_INSERT [dbo].[sanpham] ON 

INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (3, NULL, NULL, N'<p><img alt="aa" src="/Anh/images/hinhnen.png" style="height:162px; width:300px" /></p>
', N'11', 11)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (4, N'thumb-ponyo049.png', N'a', N'<p><img alt="" src="/Anh/images/hinhnen.png" style="height:162px; width:300px" /></p>
', N'111111', 11)
INSERT [dbo].[sanpham] ([masanpham], [anh], [tensanpham], [mota], [gia], [madanhmucsanpham]) VALUES (5, N'thumb-ponyo049.png', N'a', N'<p><img alt="" src="/Anh/images/hinhnen.png" style="height:162px; width:300px" /></p>', N'111112', 12)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
SET IDENTITY_INSERT [dbo].[tintuc] ON 

INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (1, N'thumb-chihiro043.png', N'a', N'a', N'a', 1)
INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (2, N'hinhnen.png', N'a', N'a', N'a', 1)
INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (3, N'hinhnen.png', N'b', N'b', N'b', 1)
INSERT [dbo].[tintuc] ([matintuc], [anh], [tentintuc], [mota], [chitiet], [madanhmuctintuc]) VALUES (5, N'thumb-chihiro043.png', N'a', N'<p><img alt="" src="/Anh/images/hinhnen.png" style="height:162px; width:300px" /></p>
', N'a', 1)
SET IDENTITY_INSERT [dbo].[tintuc] OFF
SET IDENTITY_INSERT [dbo].[user_table] ON 

INSERT [dbo].[user_table] ([id], [user_name], [pass_word], [full_name]) VALUES (1, N'phuong', N'123', N'luuphuong')
INSERT [dbo].[user_table] ([id], [user_name], [pass_word], [full_name]) VALUES (2, N'a', N'a', N'a')
SET IDENTITY_INSERT [dbo].[user_table] OFF
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_danhmucsanpham] FOREIGN KEY([madanhmucsanpham])
REFERENCES [dbo].[danhmucsanpham] ([madanhmucsanpham])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_danhmucsanpham]
GO
ALTER TABLE [dbo].[tintuc]  WITH CHECK ADD  CONSTRAINT [FK_tintuc_danhmuctintuc] FOREIGN KEY([madanhmuctintuc])
REFERENCES [dbo].[danhmuctintuc] ([madanhmuctintuc])
GO
ALTER TABLE [dbo].[tintuc] CHECK CONSTRAINT [FK_tintuc_danhmuctintuc]
GO
