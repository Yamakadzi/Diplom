USE [practice]
GO
/****** Object:  Table [dbo].[Auditorium]    Script Date: 10.06.2024 0:52:39 ******/
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
/****** Object:  Table [dbo].[Equipments]    Script Date: 10.06.2024 0:52:39 ******/
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
/****** Object:  Table [dbo].[EqupmentsStocks]    Script Date: 10.06.2024 0:52:39 ******/
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
/****** Object:  Table [dbo].[Stock]    Script Date: 10.06.2024 0:52:39 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 10.06.2024 0:52:39 ******/
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

INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (28, N'Фломастер', N'Расходные материалы', N'красный', N'32.99.12', N'Мороз', N'Россия', N'а12', N'шт', CAST(110.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (1016, N'Маркер', N'Расходные материалы', N'Желтый', N'17.12', N'Клаус', N'Россия', N'G5', N'шт', CAST(100.00 AS Decimal(8, 2)), N'перманентный')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2015, N'Бумага офисная для печати', N'Расходные материалы', N'А4', N'17.12', N'Cveto Copy', N'Россия', N'', N'шт', CAST(340.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2017, N'Скотч', N'Расходные материалы', N'прозрачный', N'22.29.21', N'Erich Krause', N'Россия', N'', N'шт', CAST(140.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2020, N'Степлер', N'Расходные материалы', N'пластмассовый', N'22.29.25', N'Erich Krause', N'Россия', N'', N'шт', CAST(210.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2023, N'Скрепки канцелярские', N'Расходные материалы', N'одноцветные', N'25.99.23', N'berlingo', N'Россия', N'', N'упаковка', CAST(45.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2024, N'Папка-планшет с зажимом', N'Расходные материалы', N'цвет - синий', N'25.99.23', N'Erich Krause', N'Россия', N'', N'шт', CAST(170.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2027, N'Папка со скоросшивателем', N'Расходные материалы', N'цвет - черный', N'25.99.24', N'Erich Krause', N'Россия', N'', N'шт', CAST(410.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2028, N'Файл-вкладыш', N'Расходные материалы', N'прозрачный', N'22.29.25', N'Erich Krause', N'Россия', N'', N'шт', CAST(15.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2029, N'Линейка', N'Расходные материалы', N'25 см', N'26.51.33', N'Erich Krause', N'Россия', N'', N'шт', CAST(35.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2030, N'Ножницы канцелярские', N'Расходные материалы', N'металические', N'25.71.11', N'Erich Krause', N'Россия', N'', N'шт', CAST(68.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2032, N'Персональный компьютер', N'Оборудование', N'цвет корпуса - черный', N'26.20', N'AMD Ryzen', N'Россия', N'', N'шт', CAST(64300.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2036, N'Монитор', N'Оборудование', N'75 гц', N'26.20.17', N'ASUS', N'Россия', N'VG249', N'шт', CAST(12300.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2038, N'Компьютерная мышь', N'Оборудование', N'цвет-черный', N'26.20.1', N'Oklick', N'Россия', N'125M', N'шт', CAST(250.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2039, N'Клавиатура', N'Оборудование', N'цвет-черный', N'26.20.16', N'Oklick', N'Россия', N'530S', N'шт', CAST(700.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2040, N'Сервер', N'Оборудование', N'Принт-сервер', N'26.20.14', N'AMD Ryzen', N'Россия', N'1', N'шт', CAST(75600.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2042, N'Ноутбук', N'Оборудование', N'цвет-белый', N'26.20.11', N'HP', N'Россия', N'250-G7', N'шт', CAST(54600.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2050, N'МФУ', N'Оборудование', N'цвет - черный', N'26.20.18', N'Xeroc', N'Россия', N'B205', N'шт', CAST(7480.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2051, N'Стол компьютерный', N'Оборудование', N'Деревянный стол', N'31.01.12', N'Вг', N'Россия', N'', N'шт', CAST(5270.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2052, N'Windows 10', N'Инструменты', N'Кооперативная', N'58.29.11', N'Microsoft', N'США', N'', N'шт', CAST(1100.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2056, N'WebStorm', N'Инструменты', N'вебшторм', N'62.0', N'Jet Brains', N'США', N'', N'шт', CAST(500.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2057, N'Google Chrome', N'Инструменты', N'гугл хром', N'62.0', N'Google', N'США', N'', N'шт', CAST(500.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2059, N'Visual Studio Code', N'Инструменты', N'19 версия', N'62.0', N'Microsoft', N'США', N'', N'шт', CAST(500.00 AS Decimal(8, 2)), N'Без комментария')
INSERT [dbo].[Equipments] ([IdEquipment], [Name], [Type], [Description], [Okpd], [Manufacturer], [Country], [Model], [Unit], [Price], [Comment]) VALUES (2060, N'Microsoft Office', N'Инструменты', N'офис', N'62.0', N'Microsoft', N'США', N'', N'шт', CAST(500.00 AS Decimal(8, 2)), N'Без комментария')
SET IDENTITY_INSERT [dbo].[Equipments] OFF
GO
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (28, 1, 320)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (28, 2, 190)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (28, 7, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (28, 1006, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (28, 1008, 150)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (1016, 2, 180)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (1016, 7, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2015, 2, 600)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2015, 3, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2017, 1, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2017, 2, 30)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2020, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2023, 2, 500)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2024, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2027, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2028, 2, 200)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2028, 5, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2029, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2030, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2032, 2, 80)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2032, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2036, 2, 0)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2036, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2038, 1, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2038, 2, 260)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2038, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2039, 2, 180)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2039, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2040, 2, 100)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2040, 7, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2042, 1, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2042, 2, 80)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2050, 2, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2050, 3, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2051, 2, 180)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2051, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2052, 1, 10)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2052, 2, 270)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2052, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2056, 2, 300)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2057, 2, 300)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2059, 2, 280)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2059, 5, 20)
INSERT [dbo].[EqupmentsStocks] ([IdEqupment], [IdStock], [Count]) VALUES (2060, 2, 400)
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1, N'0109_Склад', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (2, N'Основной Склад', N'main')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (3, N'0110', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (5, N'0111', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (7, N'0112', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (8, N'0113', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (10, N'0114', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (11, N'0115', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (12, N'0119', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (15, N'0120', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1004, N'01901909019090101', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1005, N'01000', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1006, N'0122', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1007, N'86868686', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (1008, N'116а', N'auditorium')
INSERT [dbo].[Stock] ([IdStock], [Name], [Type]) VALUES (2004, N'ваыы', N'auditorium')
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (1, N'user1', N'qwerty!1')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (2, N'user2', N'qwerty!2')
INSERT [dbo].[Users] ([idUser], [Login], [Password]) VALUES (4, N'user3', N'qwerty!3')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Auditorium]    Script Date: 10.06.2024 0:52:39 ******/
ALTER TABLE [dbo].[Auditorium] ADD  CONSTRAINT [IX_Auditorium] UNIQUE NONCLUSTERED 
(
	[IdStock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Uq_Login]    Script Date: 10.06.2024 0:52:39 ******/
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
