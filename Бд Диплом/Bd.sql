USE [practice]
GO
/****** Object:  Table [dbo].[Auditorium]    Script Date: 21.05.2024 19:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditorium](
	[IdAuditorium] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](4) NOT NULL,
	[IdStock] [int] NOT NULL,
 CONSTRAINT [PK_Auditorium] PRIMARY KEY CLUSTERED 
(
	[IdAuditorium] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipments]    Script Date: 21.05.2024 19:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipments](
	[IdEquipment] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Okpd] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Model] [nvarchar](100) NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_InformationEquipment] PRIMARY KEY CLUSTERED 
(
	[IdEquipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EqupmentsStocks]    Script Date: 21.05.2024 19:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EqupmentsStocks](
	[IdEqupment] [int] NOT NULL,
	[IdStock] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_EqupmentsStocks] PRIMARY KEY CLUSTERED 
(
	[IdEqupment] ASC,
	[IdStock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 21.05.2024 19:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[IdStock] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[IdStock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.05.2024 19:27:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Auditorium] ON 

INSERT [dbo].[Auditorium] ([IdAuditorium], [Name], [IdStock]) VALUES (2, N'0109', 1)
INSERT [dbo].[Auditorium] ([IdAuditorium], [Name], [IdStock]) VALUES (3, N'0110', 3)
INSERT [dbo].[Auditorium] ([IdAuditorium], [Name], [IdStock]) VALUES (5, N'0111', 5)
INSERT [dbo].[Auditorium] ([IdAuditorium], [Name], [IdStock]) VALUES (6, N'0112', 7)
SET IDENTITY_INSERT [dbo].[Auditorium] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipments] ON 

INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2, N'Холодильный шкаф', N'Оборудование', N'Корпус - Металл, Тип дверей - Стекло', N'27.51.11.110', N'Снеж', N'Россия', N'Bonvini 350 BGC', N'шт', CAST(37500.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (3, N'Бумага', N'Расходные материалы', N'пачка бумаги А4', N'17.12', N'Бумага "Снегурочка"', N'Китай', NULL, N'пачка', CAST(500.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (4, N'Компьютерная мышка', N'Инструменты', N'цвет - черный', N'26.20.1', N'Lenovo', N'США', N'M80 Black', N'шт', CAST(1000.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (5, N'Бумага А5', N'Расходные материалы', N'Бумага А5
', N'17.12', N'Бумага "Снегурочка"', N'Китай', N'D1', N'комплект', CAST(600.00 AS Decimal(8, 2)), N'комплект бумаги
')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (6, N'Бумага А6', N'Расходные материалы', N'бумага', N'17.12', N'Бумага "Дед Мороз"', N'США', N'', N'комплект', CAST(800.00 AS Decimal(8, 2)), N'комплекты бумаги')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (9, N'Бумага', N'Расходные материалы', N'А9
', N'17.12', N'Бумага "Klaus"', N'Германия', N'', N'упаковка', CAST(800.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (11, N'Бумага', N'Расходные материалы', N'А10
', N'17.12', N'Бумага "Снегурочка"', N'Россия', N'D5', N'упаковка', CAST(800.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (12, N'бумага', N'Расходные материалы', N'А11', N'17.12', N'Бумаг"Снегурочка"', N'Россия', N'а5', N'упаковка', CAST(800.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (13, N'бумага', N'Расходные материалы', N'А15', N'17.12', N'Снегурочка', N'Китай', N'', N'упаковка', CAST(800.00 AS Decimal(8, 2)), N'бумажечки')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (14, N'Бумага', N'Расходные материалы', N'А167', N'17.12', N'Снегурочка', N'Япония', N'а5', N'упаковка', CAST(800.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (15, N'Бумага', N'Расходные материалы', N'А02', N'17.12', N'Бумага "Снегурочка"', N'Япония', N'а7', N'упаковка', CAST(600.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (16, N'Бумаги', N'Расходные материалы', N'А02', N'17.12', N'бумага "Снегурочка"', N'Китай', N'а8', N'упаковка', CAST(650.00 AS Decimal(8, 2)), N'Без комментария')
SET IDENTITY_INSERT [dbo].[Equipments] OFF
GO
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2, 1, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2, 2, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2, 5, 5)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (3, 1, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (3, 2, 30)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (3, 3, 8)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (4, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (4, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (4, 7, 12)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (5, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (6, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (9, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (11, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (12, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (13, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (14, 2, 110)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (15, 2, 200)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (16, 2, 210)
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1, N'0109_Склад', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (2, N'Основной Склад', N'main')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (3, N'0110', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (5, N'0111', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (7, N'0112', N'auditorium')
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (1, N'PavelErshov', N'1')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (2, N'AleksanderVolkov', N'1')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (4, N'1', N'1')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (17, N'11', N'11')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (18, N'123', N'1')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (19, N'534', N'1')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (20, N'2', N'2')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Auditorium]    Script Date: 21.05.2024 19:27:49 ******/
ALTER TABLE [dbo].[Auditorium] ADD  CONSTRAINT [IX_Auditorium] UNIQUE NONCLUSTERED 
(
	[IdStock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Uq_Login]    Script Date: 21.05.2024 19:27:49 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [Uq_Login] UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auditorium]  WITH CHECK ADD  CONSTRAINT [FK_Auditorium_Stock] FOREIGN KEY([IdStock])
REFERENCES [dbo].[Stock] ([IdStock])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Auditorium] CHECK CONSTRAINT [FK_Auditorium_Stock]
GO
ALTER TABLE [dbo].[EqupmentsStocks]  WITH CHECK ADD  CONSTRAINT [FK_EqupmentsStocks_Equipments] FOREIGN KEY([IdEqupment])
REFERENCES [dbo].[Equipments] ([IdEquipment])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EqupmentsStocks] CHECK CONSTRAINT [FK_EqupmentsStocks_Equipments]
GO
ALTER TABLE [dbo].[EqupmentsStocks]  WITH CHECK ADD  CONSTRAINT [FK_EqupmentsStocks_Stock] FOREIGN KEY([IdStock])
REFERENCES [dbo].[Stock] ([IdStock])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EqupmentsStocks] CHECK CONSTRAINT [FK_EqupmentsStocks_Stock]
GO
