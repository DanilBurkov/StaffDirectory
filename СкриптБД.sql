USE [StaffDirectory]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 19.12.2023 13:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forms]    Script Date: 19.12.2023 13:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forms](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Forms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 19.12.2023 13:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDForms] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[INN] [varchar](12) NOT NULL,
	[KPP] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Period]    Script Date: 19.12.2023 13:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Period](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Start] [date] NOT NULL,
	[End] [date] NOT NULL,
 CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 19.12.2023 13:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDOrganization] [int] NOT NULL,
	[Name1] [varchar](100) NOT NULL,
	[Name2] [varchar](100) NOT NULL,
	[Name3] [varchar](100) NULL,
	[IDPost] [int] NOT NULL,
	[IDPeriod] [int] NOT NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 19.12.2023 13:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([ID], [Login], [Password]) VALUES (1, N'log1', N'pas1')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Forms] ON 

INSERT [dbo].[Forms] ([ID], [Name]) VALUES (1, N'ООО')
INSERT [dbo].[Forms] ([ID], [Name]) VALUES (2, N'ОДО')
INSERT [dbo].[Forms] ([ID], [Name]) VALUES (3, N'АО')
SET IDENTITY_INSERT [dbo].[Forms] OFF
GO
SET IDENTITY_INSERT [dbo].[Organization] ON 

INSERT [dbo].[Organization] ([ID], [IDForms], [Name], [INN], [KPP]) VALUES (2, 1, N'ЦИТ', N'869574937584', N'458574384')
INSERT [dbo].[Organization] ([ID], [IDForms], [Name], [INN], [KPP]) VALUES (3, 2, N'Кактус', N'495838574764', N'959038573')
INSERT [dbo].[Organization] ([ID], [IDForms], [Name], [INN], [KPP]) VALUES (4, 3, N'Листовка', N'786789678907', N'675903845')
SET IDENTITY_INSERT [dbo].[Organization] OFF
GO
SET IDENTITY_INSERT [dbo].[Period] ON 

INSERT [dbo].[Period] ([ID], [Name], [Start], [End]) VALUES (1, N'1 квартал', CAST(N'2024-01-13' AS Date), CAST(N'2024-03-31' AS Date))
INSERT [dbo].[Period] ([ID], [Name], [Start], [End]) VALUES (2, N'2-я половина года', CAST(N'2024-07-01' AS Date), CAST(N'2024-12-31' AS Date))
INSERT [dbo].[Period] ([ID], [Name], [Start], [End]) VALUES (3, N'Июнь', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-30' AS Date))
SET IDENTITY_INSERT [dbo].[Period] OFF
GO
SET IDENTITY_INSERT [dbo].[Personal] ON 

INSERT [dbo].[Personal] ([ID], [IDOrganization], [Name1], [Name2], [Name3], [IDPost], [IDPeriod]) VALUES (1, 2, N'Андрей', N'Жириновский', N'Валерьевич', 1, 1)
INSERT [dbo].[Personal] ([ID], [IDOrganization], [Name1], [Name2], [Name3], [IDPost], [IDPeriod]) VALUES (2, 3, N'Наталья', N'Валентиновна', N'Капачёва', 2, 2)
INSERT [dbo].[Personal] ([ID], [IDOrganization], [Name1], [Name2], [Name3], [IDPost], [IDPeriod]) VALUES (3, 4, N'Антон', N'Верницкий', NULL, 3, 3)
SET IDENTITY_INSERT [dbo].[Personal] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([ID], [Name]) VALUES (1, N'Инженер')
INSERT [dbo].[Post] ([ID], [Name]) VALUES (2, N'Строитель')
INSERT [dbo].[Post] ([ID], [Name]) VALUES (3, N'Кладовщик')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Forms] FOREIGN KEY([IDForms])
REFERENCES [dbo].[Forms] ([ID])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Forms]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Organization] FOREIGN KEY([IDOrganization])
REFERENCES [dbo].[Organization] ([ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Organization]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Period] FOREIGN KEY([IDPeriod])
REFERENCES [dbo].[Period] ([ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Period]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Post] FOREIGN KEY([IDPost])
REFERENCES [dbo].[Post] ([ID])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Post]
GO
