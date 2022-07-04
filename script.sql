USE [Online_Learn]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/4/2022 10:14:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](150) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[fulll_name] [nvarchar](max) NULL,
	[role_id] [int] NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
	[address] [varchar](max) NULL,
	[phone] [varchar](10) NULL,
	[language] [varchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[amount] [int] NULL,
	[desc] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Course]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Course](
	[account_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK_Account_Course] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Token]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Token](
	[at_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](max) NULL,
	[token] [nvarchar](50) NULL,
	[create_token] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Account_Token] PRIMARY KEY CLUSTERED 
(
	[at_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[update_at] [date] NOT NULL,
	[department_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [varchar](max) NOT NULL,
	[price] [float] NOT NULL,
	[department_id] [int] NOT NULL,
	[image] [nvarchar](max) NULL,
	[rate] [int] NULL,
	[language] [varchar](max) NULL,
	[account_id] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[is_sale] [int] NULL,
	[update_at] [date] NOT NULL,
	[level_id] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_name] [varchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[time] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[lecture_id] [int] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] NOT NULL,
	[course_id] [int] NULL,
	[massage] [nvarchar](max) NULL,
	[rate] [int] NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback_Account]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_Account](
	[feedback_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
 CONSTRAINT [PK_Feedback_Account] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC,
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[lecture_id] [int] IDENTITY(1,1) NOT NULL,
	[lecture_name] [varchar](max) NULL,
	[video] [nvarchar](max) NULL,
	[main] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[lecture_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture_Account]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture_Account](
	[account_id] [int] NOT NULL,
	[lecture_id] [int] NOT NULL,
 CONSTRAINT [PK_Lecture_Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC,
	[lecture_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] NOT NULL,
	[lecture_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[lesson_name] [varchar](max) NULL,
 CONSTRAINT [PK_Lesson_1] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[level_id] [int] IDENTITY(1,1) NOT NULL,
	[level] [varchar](max) NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [date] NULL,
	[account_id] [int] NULL,
	[total_price] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[orderdetail_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NULL,
	[order_id] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[program_id] [int] IDENTITY(1,1) NOT NULL,
	[program_name] [varchar](max) NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[program_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[question_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz] [nvarchar](max) NOT NULL,
	[op1] [nvarchar](max) NOT NULL,
	[op2] [nvarchar](max) NOT NULL,
	[op3] [nvarchar](max) NOT NULL,
	[op4] [nvarchar](max) NOT NULL,
	[solution] [varchar](4) NOT NULL,
	[lecture_id] [int] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[result_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[score] [float] NULL,
	[correctAnswer] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
	[time] [int] NOT NULL,
 CONSTRAINT [PK_Result_1] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Exam]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Exam](
	[result_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
 CONSTRAINT [PK_Result_Exam] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC,
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[course_id] [int] NOT NULL,
	[program_id] [int] NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[program_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhistList]    Script Date: 7/4/2022 10:14:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhistList](
	[account_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK_WhistList] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC,
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (1, N'admin', N'202cb962ac59075b964b07152d234b70', N'admin', 1, 1, CAST(N'2001-05-12' AS Date), N'VN', N'0123456789', N'VN', NULL, N'admin@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (2, N'hainam12', N'123456', N'Tran Hai Nam', 2, 1, CAST(N'2002-08-09' AS Date), N'Chua Lang - Dong Da - Ha Noi', N'0912123131', N'Viet Nam', NULL, N'hainam1201@gmail.com', 1000, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (3, N'phuvinh1010', N'123456', N'Le Phu Vinh', 2, 1, CAST(N'2000-10-10' AS Date), N'Hoang Hoa Tham- Tay Ho - Ha Noi', N'0812483929', N'Viet Nam', NULL, N'vinhqphu1010@gmail..com', 560, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (4, N'duckienvippro123', N'123456', N'Nguyen Duc Kien', 4, 0, CAST(N'2003-01-07' AS Date), N'Dai Lo - Dong Tay', N'0122131243', N'EngList', NULL, N'kiencuong12@gmail.com', 999, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (9, N'Mr.A', N'12345', N'PN', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (21, N'tuan', N'0a49dd9af0104d505403a2aba1f1293a', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuan@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (22, N'test1', N'e10adc3949ba59abbe56e057f20f883e', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, N'test1@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (23, N'test2', N'e10adc3949ba59abbe56e057f20f883e', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, N'test2@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (24, N'test3', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'test3@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (25, N'user', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'chieuvhhe151117@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (26, N'user', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'chieuvhhe151117@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (27, N'user', N'be2c9c01514c2bc6729c5c254478f97d', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuannvhe151098@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (28, N'user', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuan22420011@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (29, N'user', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuanht22042001@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (30, N'user', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuan4@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (31, N'user', N'827ccb0eea8a706c4c34a16891f84e7b', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuanht22042001a@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (32, N'user', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'chieuvhhe15a1117@fpt.edu.vn', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (33, N'tuannvhe151098', N'e10adc3949ba59abbe56e057f20f883e', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, N'tuanht220420101@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (34, N'hoang', N'e10adc3949ba59abbe56e057f20f883e', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, N'hoang@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (35, N'vinh', N'e10adc3949ba59abbe56e057f20f883e', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'vinh@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (36, N'vinh', N'0a49dd9af0104d505403a2aba1f1293a', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'vinh1@gmail.com', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (37, N'tuan123', N'0a49dd9af0104d505403a2aba1f1293a', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuan@1121', NULL, NULL)
INSERT [dbo].[Account] ([account_id], [username], [password], [fulll_name], [role_id], [gender], [dob], [address], [phone], [language], [image], [email], [amount], [desc]) VALUES (38, N'tuannguyen', N'0a49dd9af0104d505403a2aba1f1293a', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'tuan224@gmail.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 5)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 7)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 10)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 11)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 12)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 13)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 16)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 27)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 30)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 31)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 32)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 36)
INSERT [dbo].[Account_Course] ([account_id], [course_id]) VALUES (4, 38)
GO
SET IDENTITY_INSERT [dbo].[Account_Token] ON 

INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (1, N'tuannvhe151098@fpt.edu.vn', N'zPtamL6lBJivAsMGfBUFpXrvFJqK4E', CAST(N'2022-06-19T21:58:52.460' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (2, N'tuannvhe151098@fpt.edu.vn', N'PoQCVEW1I60XE0tgX8cbvIBM5fCd5R', CAST(N'2022-06-19T21:58:58.430' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (3, N'tuannvhe151098@fpt.edu.vn', N'Y6AndwDPBBcZr9yjWujEBBjMLkU61t', CAST(N'2022-06-19T21:59:21.273' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (4, N'tuannvhe151098@fpt.edu.vn', N'VlH3VIBUGvIIPz3mHETpX3vmuFqSXS', CAST(N'2022-06-19T22:15:26.263' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (5, N'tuanht22042001@gmail.com', N'VuYQnW5N0d0Z1Kk7reoF3u7sJTxxtI', CAST(N'2022-06-19T22:19:50.907' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (6, N'tuanht220420011@gmail.com', N'flSNKwaJ4XYh0O8yrA6jfiAB2OdV0f', CAST(N'2022-06-19T22:20:56.963' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (7, N'tuannvhe151098@fpt.edu.vn', N'9b61hJcLFa9yYthCqmNpwuNmNDJ4ss', CAST(N'2022-06-19T23:22:25.203' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (8, N'tuannvhe151098@fpt.edu.vn', N'wlEvkWkW3pEncwLZuN9ZcjfmOMLAZV', CAST(N'2022-06-19T23:26:39.673' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (9, N'tuannvhe151098@fpt.edu.vn', N'4ZUl1m7DxpMzlxv1amzPUYSPwDXmDn', CAST(N'2022-06-19T23:34:00.547' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (10, N'tuannvhe151098@fpt.edu.vn', N'wraP93Nse7hxP878qIzX3C9TfqTzng', CAST(N'2022-06-19T23:39:12.743' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (11, N'tuannvhe151098@fpt.edu.vn', N'KPmqFFvkyq5lMwfF21FihEKA1IpD19', CAST(N'2022-06-19T23:40:26.640' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (12, N'tuannvhe151098@fpt.edu.vn', N'9sWU8n8jDjLRESXqQs1Ut67Ne7ycfp', CAST(N'2022-06-19T23:44:04.533' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (13, N'tuannvhe151098@fpt.edu.vn', N'WpKWInP2unpOpQ0SjVwRxm5c7kESOw', CAST(N'2022-06-19T23:47:18.157' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (14, N'tuannvhe151098@fpt.edu.vn', N'1bJ4HTTwqkNzxg2ll9hKLlxvAtWYC8', CAST(N'2022-06-19T23:49:08.087' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (15, N'tuannvhe151098@fpt.edu.vn', N'ZSR4u9OiN8xhnG1Em8qr8FiweZVLuQ', CAST(N'2022-06-19T23:52:28.203' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (16, N'tuannvhe151098@fpt.edu.vn', N'vu5zJmEnoCz2kpJR4onPptkPGwTJ9M', CAST(N'2022-06-19T23:56:53.163' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (17, N'tuannvhe151098@fpt.edu.vn', N'JzEzXIH4fx0bGGwBrSFWRaa1TYWkio', CAST(N'2022-06-19T23:59:09.330' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (18, N'tuannvhe151098@fpt.edu.vn', N'lvzFk29JCgHG5Ibxb5KSK9DvVbt8GY', CAST(N'2022-06-20T00:00:51.863' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (19, N'tuannvhe151098@fpt.edu.vn', N'at23aHLk72UMUzta8Homg6dzjL9E6a', CAST(N'2022-06-20T00:03:17.053' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (20, N'tuannvhe151098@fpt.edu.vn', N'rcpK4HdSm6C4xQFlgmLnbI7SMKC1Bo', CAST(N'2022-06-20T00:08:26.120' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (21, N'tuannvhe151098@fpt.edu.vn', N'xkFTbej7ZIPXeJVPxeeIJ6NTXU2LiK', CAST(N'2022-06-20T00:11:34.013' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (22, N'tuannvhe151098@fpt.edu.vn', N'4FmVrqGAJdMFCv5FV4GOGtXVCT8b7u', CAST(N'2022-06-20T00:14:25.987' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (23, N'tuannvhe151098@fpt.edu.vn', N'gcXJRLcQJf3Mib1AscHZDpPaeXPZy5', CAST(N'2022-06-20T00:14:28.723' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (24, N'tuannvhe151098@fpt.edu.vn', N'LYNPDQZwidMOVYupVAey6pkHnKJnif', CAST(N'2022-06-20T00:33:33.370' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (25, N'tuannvhe151098@fpt.edu.vn', N'FaiYkZaQ8FZVjvLq1D6LbOFf1Ww5FI', CAST(N'2022-06-20T00:33:36.877' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (26, N'tuanht22042001@gmail.com', N'OVA8iPF7EZM3koCesgrW51XakKpvqP', CAST(N'2022-06-20T07:51:34.813' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (27, N'tuanht22042001@gmail.com', N'xNP9VPtbL5YOVsUa44za36ikBS03Yk', CAST(N'2022-06-20T07:51:50.830' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (28, N'tuanht22042001@gmail.com', N'yHK0CrSKUxic15UrR0NrU5wAEIrPtO', CAST(N'2022-06-20T07:53:01.957' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (29, N'tuanht22042001@gmail.com', N'4u9cphCPF0VTcFD9L12frYebmyq5P6', CAST(N'2022-06-20T07:53:03.970' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (30, N'tuannvhe151098@fpt.edu.vn', N'UxCZ3ufnD5Lg8yOf3JQ1ZFf1YxRs1n', CAST(N'2022-06-20T07:54:35.450' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (31, N'tuanht22042001@gmail.com', N'JRh3pk4DUzalKOjxhNMIsYzW3pJjFS', CAST(N'2022-06-20T08:01:16.290' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (32, N'tuanht22042001@gmail.com', N'qxdPrg3sc8i2cgEihcl1P0eVm21siI', CAST(N'2022-06-20T08:02:35.357' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (33, N'tuanht22042001@gmail.com', N'HbWMEBBeEUbVC5ma6DbWURcyQMSmQD', CAST(N'2022-06-20T08:05:00.233' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (34, N'tuanht22042001@gmail.com', N'ODB1HaTB9XY9AkWT1HceOQAdq6s63Y', CAST(N'2022-06-20T08:08:02.720' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (35, N'tuanht22042001@gmail.com', N'pit1bGOkYp6oT2vu13wLSdoaqjh5Hw', CAST(N'2022-06-20T08:08:28.693' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (36, N'tuanht22042001@gmail.com', N'g194YuhXZ5dRhepgKYNLhPyjFWlNoY', CAST(N'2022-06-20T08:10:10.100' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (37, N'tuannvhe151098@fpt.edu.vn', N'5APkt4CNoB0Kx8sWPGBRCtMyW3KKDb', CAST(N'2022-06-20T08:11:11.373' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (38, N'tuanht22042001@gmail.com', N'Uj5E3b3AofhCWw3x38gB97XuyMw7Tv', CAST(N'2022-06-20T08:13:25.033' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (39, N'tuanht22042001@gmail.com', N'z0HDwWGzVKaHGgDDoTqr4WWCwvCqQg', CAST(N'2022-06-20T08:16:13.920' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (40, N'tuanht22042001@gmail.com', N'aMsgbOcmgp8yZjjbSBz1ddoZlzjHMl', CAST(N'2022-06-20T08:21:10.987' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (41, N'tuannvhe151098@fpt.edu.vn', N'd6Y1etCn75HILOjzzazCLOnUXq9NqQ', CAST(N'2022-06-20T08:23:53.660' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (42, N'tuannvhe151098@fpt.edu.vn', N'fblVJHwsIhlMw3L31KWYtiMuiYIkZG', CAST(N'2022-06-20T08:28:47.910' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (43, N'tuannvhe151098@fpt.edu.vn', N'F6FcJy7JQjUH5S8bsvP6vu79KSHrGe', CAST(N'2022-06-20T08:34:45.287' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (44, N'vinhlqhe153037@fpt.edu.vn', N'BDsVxPn7Yy21O8bucTenRrpF2vCHZY', CAST(N'2022-06-20T08:39:22.983' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (45, N'vinhlqhe153037@fpt.edu.vn', N'D6WuesuqXUWx9zqLOy50hiNiLRVQDF', CAST(N'2022-06-20T08:40:19.040' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (46, N'vinhlqhe153037@fpt.edu.vn', N'3DrRgbAvdZV1q0T83w5Q2i34pLByWX', CAST(N'2022-06-20T08:42:09.613' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (47, N'tuanht22042001@gmail.com', N'85yZIK4nuI88JiOaUKEL1l2TS93loL', CAST(N'2022-06-20T08:43:19.720' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (48, N'tuanht22042001@gmail.com', N'2uprbGUSFvFD0IjBcTnv3Ukidvf8JL', CAST(N'2022-06-20T08:46:53.613' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (49, N'tuanht22042001@gmail.com', N'RZzfTWCfirkwJesYVXkrO9aSyHHVRw', CAST(N'2022-06-20T08:52:18.017' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (50, N'tuanht22042001@gmail.com', N'fPJa4JgWH1mzhN8cBj7BYzAhfqa3nK', CAST(N'2022-06-20T08:58:53.690' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (51, N'tuanht22042001@gmail.com', N'QveZNTVdKiCmzxyXl3kBhnXuZEmEMo', CAST(N'2022-06-20T11:18:02.713' AS DateTime), 0)
INSERT [dbo].[Account_Token] ([at_id], [email], [token], [create_token], [status]) VALUES (52, N'asds', N'Gwcsemw1VNQKMwB88tauwdomA0nPXI', CAST(N'2022-06-25T16:29:44.253' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Account_Token] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (2, N'Create a New React App1', N'When starting a React project, a simple HTML page with script tags might still be the best option. It only takes a minute to set up!

As your application grows, you might want to consider a more integrated setup. There are several JavaScript toolchains we recommend for larger applications. Each of them can work with little to no configuration and lets you take full advantage of the rich React ecosystem. Learn how.', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (4, N'vasvdsad', N'asdasdas', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (5, N'aasda', N'asdasd', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (6, N'aaaaaaaaa', N'aaaaaaaaaaa', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (7, N'aaaaaaaaaa', N'aaaaaaaaaa', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (8, N'aaaaaaaaaaaaaaaaaaaaaaaaaa', N'aaaaaaaaaaaa', CAST(N'2022-06-14' AS Date), 2, 2)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (9, N'2022-06-14', N'1111', CAST(N'2022-06-14' AS Date), 2, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (10, N'vvvvvvvvvvv', N'vvvvvvvv', CAST(N'2022-06-14' AS Date), 1, 2)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (11, N'cccccccccc', N'aaaaaaa', CAST(N'2022-06-14' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (12, N'aaaaaa', N'sssssss', CAST(N'2022-05-01' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (13, N'1 hour CSS', N'2021-05-01', CAST(N'2021-05-01' AS Date), 1, 1)
INSERT [dbo].[Blog] ([blog_id], [title], [content], [update_at], [department_id], [account_id]) VALUES (21, N'1', N'1', CAST(N'2021-05-03' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (3, N'.NET Core Microservices - The Complete Guide (.NET 6 MVC)', 19.99, 1, N'c.udemycdn.com/course/240x135/4062064_c372.jpg', 5, N'English', 1, N'abhdjf', 0, CAST(N'2021-10-13' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (4, N'.NET Core Microservices - The Complete Guide (.NET 6 MVC)', 19.99, 1, N'https://img-c.udemycdn.com/course/240x135/4062064_c372.jpg', 5, N'English', 21, N'.NET is a free, cross-platform, open-source developer platform for building many different types of applications.', NULL, CAST(N'2022-06-17' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (5, N'Complete ASP.NET Core ', 119, 1, N'https://img-c.udemycdn.com/course/240x135/2725016_0ae7_2.jpg', 4, N'English', 1, N'Lorem abasj jasdfmskd jsafkasdf ajsfksadnf jasfksdm ajsdfksadnf asfksanf jasnfnksa kasfasdfk asdjfksdafnsakfnaskf jasnfksafsanfksanasdfkdfn', 20, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (6, N'Complete ASP.NET Core and Entity Framework Development', 119.99, 1, N'https://img-c.udemycdn.com/course/240x135/2725016_0ae7_2.jpg', 4, N'English', 21, N'ASP.NET extends the .NET developer platform with tools and libraries specifically for building web apps.', NULL, CAST(N'2022-06-17' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (7, N'.NET Core Microservices - The Complete Guide (.NET 6 MVC)', 19.99, 2, N'https://img-c.udemycdn.com/course/240x135/2725016_0ae7_2.jpg', 5, N'VietNamese', 2, N'Lorem afsdaj kjadsfmisda kasdfmsdafmksafms asidfsdafmska aksfmosdafmkafmas smfisdamfisdamfsdam iasdfismdafisadmf iasdfismadfis', 10, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (8, N'JavaScript - The Complete Guide 2022 (Beginner + Advanced)', 84, 1, N'https://img-c.udemycdn.com/course/240x135/2508942_11d3_3.jpg', 4, N'English', 1, N'orem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet, libero ducimus doloribus temporibus dolorem nostrum ea, nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa, obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut sed ipsam quidem? Aliquid, reiciendis harum', 15, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (9, N'Next.js & React - The Complete Guide', 50, 1, N'https://img-c.udemycdn.com/course/240x135/3873464_403c.jpg', 4, N'English', 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 70, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (10, N'Advanced React and Redux', 99, 1, N'https://img-c.udemycdn.com/course/240x135/781532_8b4d_6.jpg', 5, N'VietNamese', 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 99, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (11, N'The Complete React Developer Course (w/ Hooks and Redux)', 79, 3, N'https://img-c.udemycdn.com/course/240x135/1286908_1773_6.jpg', 4, N'English', 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 25, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (12, N'React Front To Back 2022', 85, 1, N'https://img-c.udemycdn.com/course/240x135/2018828_41a9_3.jpg', 4, N'English', 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (13, N'React, NodeJS, Express & MongoDB - The MERN Fullstack Guide', 99, 1, N'https://img-c.udemycdn.com/course/240x135/2640372_5b44_5.jpg', 4, N'English', 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (14, N'JavaScript - The Complete Guide 2022 (Beginner + Adced)', 30, 1, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-06-17' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (15, N'.NET Core Microservices - The Complete Guide (.NEVC)', 25, 1, NULL, 5, NULL, 1, NULL, NULL, CAST(N'2022-06-17' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (16, N'Agular for beginner', 100, 1, N'https://img-c.udemycdn.com/course/240x135/1455016_0b2d_2.jpg  - aNGULAR', 5, N'English', 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 3)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (18, N'Flutter - Beginners Course', 149, 3, N'https://img-c.udemycdn.com/course/240x135/1632804_aa69_4.jpg', 5, N'English', 3, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 10, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (19, N'Fluter - Intermediate', 84, 3, N'https://img-c.udemycdn.com/course/240x135/1671196_037e_3.jpg', 5, N'English, Vietnamese', 3, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 3)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (21, N'Dart - Advanced', 49, 2, N'https://img-c.udemycdn.com/course/240x135/1548958_ad47_4.jpg', 4, N'English, France', 2, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 11, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (22, N'Dart - Beginners Course', 99, 2, N'https://img-c.udemycdn.com/course/240x135/1599220_c25d_4.jpg', 5, N'Vietnamese', 3, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (23, N'JavaScript - The Complete Guide 2022 (Beginner + Advanced)', 84.99, 4, N'https://img-c.udemycdn.com/course/240x135/2508942_11d3_3.jpg', NULL, N'English', 1, N'For years JavaScript frameworks have dominated the front end/client side development! But things are about to change with Blazor!Blazor is an exciting new part of .NET Core (.NET 6) designed for building rich web user interfaces in C#. This course will help developers transition from building basic sample apps to implementing more real world concepts, design patterns, and features.', NULL, CAST(N'0001-01-01' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (24, N'Become a Game Designer the Complete Series Coding to Design', 69, 1, N'https://img-c.udemycdn.com/course/240x135/526534_04bb_4.jpg', 4, N'English', 1, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 3)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (25, N'Advanced React and Redux', 9.99, 1, N'https://img-c.udemycdn.com/course/240x135/781532_8b4d_6.jpg', 5, N'English', 1, N'Good news is, with well written unit test''s this would be a thing of the past.

Automated testing has been a buzz word for a while but many times developers struggle to find a course that covers the fundamentals of unit testing while implementing what they learned in a real world project! That is the main focus of this course.', NULL, CAST(N'2022-06-05' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (26, N'The Complete React Developer Course (w/ Hooks and Redux)', 24.99, 2, N'https://img-c.udemycdn.com/course/240x135/1286908_1773_6.jpg', NULL, N'English', 1, N'These are pretty common questions and I will answer them all but most of the times manual testing is much more time consuming and it is not as through as unit test. Unit tests take time once to write and can be executed for free every time! As application grows, the cost of manual testing grows exponentially. And manual testing will never give 100% confidence with all the edge cases.. Automated tests help you to catch the bugs while it is in development phase, because of which they would be easier to resolve.', NULL, CAST(N'0001-01-01' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (27, N'A Gentle Introduction To ASP.NET Web Forms For Beginners', 99, 2, N'https://img-c.udemycdn.com/course/240x135/1780798_1bfc.jpg', 3, N'Vietnamese', 1, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (28, N'Step-by-step HTML and CSS for Absolute Beginners', 49, 1, N'https://img-c.udemycdn.com/course/240x135/73080_7783_6.jpg', 5, N'France', 2, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (29, N'Build Responsive Real-World Websites with HTML and CSS', 68, 1, N'https://img-c.udemycdn.com/course/240x135/437398_46c3_10.jpg', 4, N'English', 3, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (30, N'Complete guide to building an app with .Net Core and React', 199, 3, N'https://img-c.udemycdn.com/course/240x135/2472180_0143.jpg', 5, N'Vietnamese', 2, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 5, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (31, N'Sketch from A to Z (2022): Become an app designer', 58, 2, N'https://img-c.udemycdn.com/course/240x135/371074_6c73_2.jpg', 5, N'English', 1, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (32, N'1 Hour CSS', 10, 2, N'https://img-c.udemycdn.com/course/240x135/64605_e18f_4.jpg', 5, N'France', 3, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 0, CAST(N'2022-06-12' AS Date), 3)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (33, N'Learn HTML and CSS from Scratch - Build Responsive Websites', 84, 1, N'https://img-c.udemycdn.com/course/240x135/2146254_ca25_4.jpg', 4, N'English', 2, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 9, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (34, N'ASP.NET MVC Interview Questions with Answers', 79, 2, N'https://img-c.udemycdn.com/course/240x135/4081184_b548.jpg', 5, N'English', 1, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 80, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (35, N'The Complete ASP.Net Core Web APIs Course With JWT Security', 84, 3, N'https://img-c.udemycdn.com/course/240x135/2621174_c597_2.jpg', 4, N'Vietnamese', 1, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 20, CAST(N'2022-06-12' AS Date), 2)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (36, N'Design Patterns in C# and .NET', 99, 2, N'https://img-c.udemycdn.com/course/240x135/1148688_4313_5.jpg', 4, N'France, Vietnamese', 3, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 10, CAST(N'2022-06-12' AS Date), 3)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (38, N'1 Hour JavaScript', 129, 1, N'https://img-c.udemycdn.com/course/240x135/63612_8797_4.jpg', 5, N'English', 2, N'
Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga delectus molestiae, odio commodi minus eveniet,
 libero ducimus doloribus temporibus dolorem nostrum ea,
 nemo sapiente? Laudantium et rem modi blanditiis quia!
Aliquam voluptatem quaerat molestias provident nulla a, omnis aspernatur recusandae ipsa,
 obcaecati sed, sunt dolorum. Odit beatae quasi veritatis harum, facere dolor nesciunt ut 
 sed ipsam quidem? Aliquid, reiciendis harum', 1, CAST(N'2022-06-12' AS Date), 1)
INSERT [dbo].[Course] ([course_id], [course_name], [price], [department_id], [image], [rate], [language], [account_id], [description], [is_sale], [update_at], [level_id]) VALUES (62, N'.NET Core Microservices - The Complete Guide (.NET 6 MVC)', 1999.99, 1, N'https://img-c.udemycdn.com/course/240x135/4062064_c372.jpg', NULL, N'English', 1, N'hen choosing a technology to build the APIs , organizations and teams mostly rely on their previous experience and/or pick the ones that are widely used . And more often than not they do not provide a precise solution for all business needs. Any third party vendor solutions or other workarounds adopted impact the performance of the API in a negative way.', NULL, CAST(N'2022-06-17' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (1, N'Web Development')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (2, N'Graphic Design')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (3, N'Software Enigneering')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (4, N'Mobile Development')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (5, N'Mobile Development')
INSERT [dbo].[Department] ([department_id], [department_name]) VALUES (6, N'Programing Languages')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([exam_id], [exam_name], [quantity], [time], [start_date], [lecture_id]) VALUES (1, N'test', 10, 5, CAST(N'2022-07-03' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([lecture_id], [lecture_name], [video], [main]) VALUES (1, N'test', N'https://www.youtube.com/watch?v=Wyyqesj4tXE', N'test')
SET IDENTITY_INSERT [dbo].[Lecture] OFF
GO
INSERT [dbo].[Lesson] ([lesson_id], [lecture_id], [course_id], [lesson_name]) VALUES (1, 1, 3, N'test')
GO
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([level_id], [level]) VALUES (1, N'easy')
INSERT [dbo].[Level] ([level_id], [level]) VALUES (2, N'medium')
INSERT [dbo].[Level] ([level_id], [level]) VALUES (3, N'hard')
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
SET IDENTITY_INSERT [dbo].[Program] ON 

INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (1, N'C/C++')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (2, N'Java')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (3, N'Python')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (4, N'Ruby')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (5, N'C#')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (6, N'SQL')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (7, N'Spring boot')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (8, N'ASP.NET')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (9, N'Java script')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (10, N'ReactJs')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (11, N'VueJs')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (12, N'Angular')
INSERT [dbo].[Program] ([program_id], [program_name]) VALUES (13, N'Django')
SET IDENTITY_INSERT [dbo].[Program] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (2, N'1+1', N'1', N'2', N'3', N'4', N'2', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (3, N'2+2', N'1', N'2', N'3', N'4', N'4', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (4, N'React', N'1', N'2', N'3', N'4', N'1', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (5, N'testttt', N'2', N'3', N'4', N'1', N'3', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (6, N'asd', N'aa', N'bbb', N'vvv', N'ddd', N'2', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (7, N'xxxxxxx', N'zzzzz', N'vvvvvvv', N'aaaaaaa', N'ccccccccc', N'4', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (8, N'adaqwe', N'ad', N'ad', N'zc', N'z', N'3', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (9, N'z  ad', N'a', N'z', N'e', N'q', N'4', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (10, N'c', N'v', N'b', N'n', N'q', N'2', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (11, N'aaaaaaa', N'aaaaa', N'ass', N'zxc', N'aasdasd', N'1', 1)
INSERT [dbo].[Question] ([question_id], [quiz], [op1], [op2], [op3], [op4], [solution], [lecture_id]) VALUES (12, N'test', N'test', N'test', N'test', N'test', N'3', 1)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Result] ON 

INSERT [dbo].[Result] ([result_id], [exam_id], [score], [correctAnswer], [status], [time]) VALUES (1, 1, 2, 2, N'Not Pass', 1)
INSERT [dbo].[Result] ([result_id], [exam_id], [score], [correctAnswer], [status], [time]) VALUES (2, 1, 2, 2, N'Not Pass', 1)
SET IDENTITY_INSERT [dbo].[Result] OFF
GO
INSERT [dbo].[Technology] ([course_id], [program_id]) VALUES (5, 2)
INSERT [dbo].[Technology] ([course_id], [program_id]) VALUES (5, 3)
INSERT [dbo].[Technology] ([course_id], [program_id]) VALUES (5, 6)
INSERT [dbo].[Technology] ([course_id], [program_id]) VALUES (7, 2)
INSERT [dbo].[Technology] ([course_id], [program_id]) VALUES (7, 6)
INSERT [dbo].[Technology] ([course_id], [program_id]) VALUES (7, 8)
GO
INSERT [dbo].[WhistList] ([account_id], [course_id]) VALUES (21, 4)
INSERT [dbo].[WhistList] ([account_id], [course_id]) VALUES (21, 6)
INSERT [dbo].[WhistList] ([account_id], [course_id]) VALUES (21, 7)
INSERT [dbo].[WhistList] ([account_id], [course_id]) VALUES (21, 13)
GO
ALTER TABLE [dbo].[Account_Token] ADD  CONSTRAINT [DF_Account_Token_status]  DEFAULT ((0)) FOR [create_token]
GO
ALTER TABLE [dbo].[Account_Token] ADD  CONSTRAINT [DF_Account_Token_status_1]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Blog] ADD  CONSTRAINT [DF_Blog_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF_Course_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_start_date]  DEFAULT (getdate()) FOR [start_date]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_order_date]  DEFAULT (getdate()) FOR [order_date]
GO
ALTER TABLE [dbo].[Account_Course]  WITH CHECK ADD  CONSTRAINT [FK_Account_Course_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Account_Course] CHECK CONSTRAINT [FK_Account_Course_Account]
GO
ALTER TABLE [dbo].[Account_Course]  WITH CHECK ADD  CONSTRAINT [FK_Account_Course_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Account_Course] CHECK CONSTRAINT [FK_Account_Course_Course]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Account]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Department]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Account]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Level] FOREIGN KEY([level_id])
REFERENCES [dbo].[Level] ([level_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Level]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Lecture] FOREIGN KEY([lecture_id])
REFERENCES [dbo].[Lecture] ([lecture_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Lecture]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Course]
GO
ALTER TABLE [dbo].[Feedback_Account]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Feedback_Account] CHECK CONSTRAINT [FK_Feedback_Account_Account]
GO
ALTER TABLE [dbo].[Feedback_Account]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account_Feedback] FOREIGN KEY([feedback_id])
REFERENCES [dbo].[Feedback] ([feedback_id])
GO
ALTER TABLE [dbo].[Feedback_Account] CHECK CONSTRAINT [FK_Feedback_Account_Feedback]
GO
ALTER TABLE [dbo].[Lecture_Account]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Account_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Lecture_Account] CHECK CONSTRAINT [FK_Lecture_Account_Account]
GO
ALTER TABLE [dbo].[Lecture_Account]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Account_Lecture] FOREIGN KEY([lecture_id])
REFERENCES [dbo].[Lecture] ([lecture_id])
GO
ALTER TABLE [dbo].[Lecture_Account] CHECK CONSTRAINT [FK_Lecture_Account_Lecture]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Course]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Lecture] FOREIGN KEY([lecture_id])
REFERENCES [dbo].[Lecture] ([lecture_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Lecture]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Course]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Lecture] FOREIGN KEY([lecture_id])
REFERENCES [dbo].[Lecture] ([lecture_id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Lecture]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Exam1] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Exam1]
GO
ALTER TABLE [dbo].[Result_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Result_Exam_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Result_Exam] CHECK CONSTRAINT [FK_Result_Exam_Account]
GO
ALTER TABLE [dbo].[Result_Exam]  WITH CHECK ADD  CONSTRAINT [FK_Result_Exam_Result] FOREIGN KEY([result_id])
REFERENCES [dbo].[Result] ([result_id])
GO
ALTER TABLE [dbo].[Result_Exam] CHECK CONSTRAINT [FK_Result_Exam_Result]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_Course]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_Program] FOREIGN KEY([program_id])
REFERENCES [dbo].[Program] ([program_id])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_Program]
GO
ALTER TABLE [dbo].[WhistList]  WITH CHECK ADD  CONSTRAINT [FK_WhistList_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[WhistList] CHECK CONSTRAINT [FK_WhistList_Account]
GO
ALTER TABLE [dbo].[WhistList]  WITH CHECK ADD  CONSTRAINT [FK_WhistList_Course] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[WhistList] CHECK CONSTRAINT [FK_WhistList_Course]
GO
