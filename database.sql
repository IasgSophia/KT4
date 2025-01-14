USE [master]
GO
/****** Object:  Database [database]    Script Date: 13.11.2024 12:04:56 ******/
CREATE DATABASE [database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [database] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [database] SET ARITHABORT OFF 
GO
ALTER DATABASE [database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [database] SET  MULTI_USER 
GO
ALTER DATABASE [database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [database] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [database] SET QUERY_STORE = OFF
GO
USE [database]
GO
/****** Object:  Table [dbo].[Enter]    Script Date: 13.11.2024 12:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enter](
	[Id] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Enter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 13.11.2024 12:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] NOT NULL,
	[Name] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Main]    Script Date: 13.11.2024 12:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Main](
	[Id] [int] NOT NULL,
	[Code] [nchar](50) NOT NULL,
	[IdType] [int] NOT NULL,
	[FIO] [nchar](50) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Phone] [nchar](50) NOT NULL,
	[Passport] [nchar](100) NOT NULL,
	[Birth] [date] NOT NULL,
	[EnterLast] [date] NULL,
	[IdEnter] [int] NULL,
	[IdGender] [int] NOT NULL,
 CONSTRAINT [PK_Main] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 13.11.2024 12:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] NOT NULL,
	[Name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Enter] ([Id], [Name]) VALUES (1, N'Неуспешно                                         ')
INSERT [dbo].[Enter] ([Id], [Name]) VALUES (2, N'Успешно                                           ')
GO
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (1, N'ж')
INSERT [dbo].[Gender] ([Id], [Name]) VALUES (2, N'м')
GO
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (1, N'ID 1                                              ', 3, N'Акимов Ян Алексеевич                              ', N'gohufreilagrau-3818@yopmail.com                   ', N'akimovya                                          ', N'bn069Caj                                          ', N'+7(781)-785-58-37                                 ', N'Серия 2367 Номер 558134                                                                             ', CAST(N'1993-07-03' AS Date), CAST(N'2045-06-08' AS Date), 2, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (2, N'ID 2                                              ', 2, N'Гончарова Ульяна Львовна                          ', N'xawugosune-1385@yopmail.com                       ', N'goncharovaul                                      ', N'pW4qZhL!                                          ', N'+7(230)-906-88-15                                 ', N'Серия 7101 Номер 669343                                                                             ', CAST(N'1975-06-22' AS Date), CAST(N'2045-07-12' AS Date), 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (3, N'ID 3                                              ', 1, N'Анохина Елизавета Матвеевна                       ', N'leuttevitrafo1998@mail.ru                         ', N'anochinaem                                        ', N'y6UNmaJg                                          ', N'+7(555)-444-83-16                                 ', N'Серия 3455 Номер 719630                                                                             ', CAST(N'1991-08-16' AS Date), CAST(N'2045-07-04' AS Date), 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (4, N'ID 4                                              ', 3, N'Николаев Илья Владиславович                       ', N'frapreubrulloba1141@yandex.ru                     ', N'nickolaeviv                                       ', N'ebOt@4y$                                          ', N'+7(392)-682-44-42                                 ', N'Серия 2377 Номер 871623                                                                             ', CAST(N'1970-12-22' AS Date), CAST(N'2045-06-13' AS Date), 2, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (5, N'ID 5                                              ', 2, N'Уткин Дмитрий Платонович                          ', N'zapramaxesu-7741@yopmail.com                      ', N'utkindp                                           ', N'zQt8g@GH                                          ', N'+7(836)-429-03-86                                 ', N'Серия 8755 Номер 921148                                                                             ', CAST(N'1999-05-04' AS Date), CAST(N'2045-07-18' AS Date), 1, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (6, N'ID 6                                              ', 2, N'Куликова Стефания Никитична                       ', N'rouzecroummegre-3899@yopmail.com                  ', N'kulikovasn                                        ', N'TCmE7Jon                                          ', N'+7(283)-945-30-92                                 ', N'Серия 4355 Номер 104594                                                                             ', CAST(N'1994-12-06' AS Date), CAST(N'2045-07-07' AS Date), 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (7, N'ID 7                                              ', 2, N'Волков Егор Матвеевич                             ', N'ziyeuddocrabri-4748@@yopmail.com                  ', N'volkovem                                          ', N'pbgO3Vv5                                          ', N'+7(621)-359-36-69                                 ', N'Серия 2791 Номер 114390                                                                             ', CAST(N'1995-03-28' AS Date), CAST(N'2045-07-18' AS Date), 2, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (8, N'ID 8                                              ', 1, N'Соколова Софья Георгиевна                         ', N'ketameissoinnei-1951@yopmail.com                  ', N'sokolovasg                                        ', N'lITaH?Bs                                          ', N'+7(440)-561-03-14                                 ', N'Серия 5582 Номер 126286                                                                             ', CAST(N'1977-03-27' AS Date), CAST(N'2045-07-18' AS Date), 1, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (9, N'ID 9                                              ', 3, N'Голубева Полина Андреевна                         ', N'yipraubaponou-5849@yopmail.com                    ', N'golubevapa                                        ', N's|ke*p@~                                          ', N'+7(331)-918-24-34                                 ', N'Серия 2978 Номер 133653                                                                             ', CAST(N'1975-04-12' AS Date), CAST(N'2045-06-19' AS Date), 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (10, N'ID 10                                             ', 3, N'Вишневская Мария Андреевна                        ', N'crapedocouca-3572@yopmail.com                     ', N'vishnevskayama                                    ', N'OCaywHJZ                                          ', N'+7(493)-219-39-42                                 ', N'Серия 7512 Номер 141956                                                                             ', CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (11, N'ID 11                                             ', 3, N'Васильева Арина Данииловна                        ', N'ceigoixakaunni-9227@yopmail.com                   ', N'vasilevad                                         ', N'DAWuV%#u                                          ', N'+7(407)-485-50-30                                 ', N'Серия 5046 Номер 158433                                                                             ', CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (12, N'ID 12                                             ', 3, N'Павлов Дмитрий Максимович                         ', N'yeimmeiwauzomo-7054@yopmail.com                   ', N'pavlovdm                                          ', N'ptoED%zE                                          ', N'+7(919)-478-24-97                                 ', N'Серия 2460 Номер 169505                                                                             ', CAST(N'1983-10-03' AS Date), CAST(N'2045-06-17' AS Date), 1, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (13, N'ID 13                                             ', 2, N'Горбунова Мирослава Артуровна                     ', N'pixil59@gmail.com                                 ', N'gorbunovama                                       ', N'ZFR2~Zl*                                          ', N'+7(482)-802-95-80                                 ', N'Серия 3412 Номер 174593                                                                             ', CAST(N'1998-03-03' AS Date), CAST(N'2045-07-19' AS Date), 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (14, N'ID 14
                                           ', 3, N'Демина София Романовна
                          ', N'"deummecillummu-4992@mail.ru
"
                  ', N'deminasr
                                        ', N'D%DVKyDN
                                        ', N'+7(455)-944-64-49
                               ', N'Серия 4950 Номер 183034
                                                                           ', CAST(N'1993-06-08' AS Date), CAST(N'2045-07-04' AS Date), 1, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (15, N'ID 15                                             ', 2, N'Петрова Алина Робертовна                          ', N'vilagajaunne-5170@yandex.ru                       ', N'petrovaar                                         ', N'z7ZE?8N5                                          ', N'+7(710)-388-25-63                                 ', N'Серия 5829 Номер 219464                                                                             ', CAST(N'1980-09-23' AS Date), CAST(N'2045-06-09' AS Date), 2, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (16, N'ID 16                                             ', 2, N'Плотников Григорий Александрович                  ', N'frusubroppotou656@yandex.ru                       ', N'plotnikovga                                       ', N'yh+S4@yc                                          ', N'+7(759)-452-38-46                                 ', N'Серия 6443 Номер 208059                                                                             ', CAST(N'1991-03-13' AS Date), CAST(N'2045-06-28' AS Date), 2, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (17, N'ID 17                                             ', 2, N'Прохорова Есения Тимофеевна                       ', N'vhopkins@lewis-mullen.com                         ', N'prochorovaet                                      ', N'wLF186dB                                          ', N'+7(687)-801-13-32                                 ', N'Серия 7079 Номер 213265                                                                             ', CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (18, N'ID 18                                             ', 2, N'Чернов Алексей Егорович                           ', N'nlewis@yahoo.com                                  ', N'chernovae                                         ', N'Sjkr*1zV                                          ', N'+7(425)-783-22-53                                 ', N'Серия 8207 Номер 522702                                                                             ', CAST(N'1980-04-16' AS Date), CAST(N'2045-06-20' AS Date), 2, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (19, N'ID 19                                             ', 3, N'Горбунов Степан Артёмович                         ', N'garciadavid@mckinney-mcbride.com                  ', N'gorbunovsa                                        ', N'hFhK%$JI                                          ', N'+7(889)-449-43-91                                 ', N'Серия 9307 Номер 232158                                                                             ', CAST(N'1993-07-23' AS Date), CAST(N'2045-07-12' AS Date), 2, 2)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (20, N'ID 20                                             ', 2, N'Рябинина Софья Артёмовна                          ', N'loudittoimmolau1900@gmail.com                     ', N'ryabininasa                                       ', N'&yw1da4K                                          ', N'+7(825)-301-82-50                                 ', N'Серия 1357 Номер 242839                                                                             ', CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (21, N'ID 21                                             ', 2, N'Козлова Яна Даниловна                             ', N'hittuprofassa4984@mail.com                        ', N'kozlovayd                                         ', N'wCH7dl3k                                          ', N'+7(397)-334-20-86                                 ', N'Серия 1167 Номер 256636                                                                             ', CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (22, N'ID 22                                             ', 3, N'Лукьянова Ульяна Олеговна                         ', N'freineiciweijau888@yandex.ru                      ', N'lyckyanovayo                                      ', N'JadQ24D5                                          ', N'+7(241)-570-30-40                                 ', N'Серия 1768 Номер 266986                                                                             ', CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (23, N'ID 23                                             ', 2, N'Кондрашова Арина Ивановна                         ', N'jessica84@hotmail.com                             ', N'kondrashovai                                      ', N'YlBz$8vJ                                          ', N'+7(713)-462-82-65                                 ', N'Серия 1710 Номер 427875                                                                             ', CAST(N'1976-12-22' AS Date), CAST(N'2045-06-26' AS Date), 1, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (24, N'ID 24                                             ', 3, N'Быкова Виктория Тимуровна                         ', N'nokupekidda2001@gmail.com                         ', N'bykovavt                                          ', N'nx8Z$K98                                          ', N'+7(854)-822-23-31                                 ', N'Серия 1806 Номер 289145                                                                             ', CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[Main] ([Id], [Code], [IdType], [FIO], [Email], [Login], [Password], [Phone], [Passport], [Birth], [EnterLast], [IdEnter], [IdGender]) VALUES (25, N'ID 25                                             ', 2, N'Гуляев Тимофей Даниилович                         ', N'ginaritter@schneider-buchanan.com                 ', N'gylyaevtd                                         ', N'lz$kp1?f                                          ', N'+7(439)-713-61-17                                 ', N'Серия 1587 Номер 291249                                                                             ', CAST(N'1987-02-05' AS Date), NULL, 1, 2)
GO
INSERT [dbo].[Type] ([Id], [Name]) VALUES (1, N'Администратор       ')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (2, N'Исполнитель         ')
INSERT [dbo].[Type] ([Id], [Name]) VALUES (3, N'Менеджер            ')
GO
ALTER TABLE [dbo].[Main]  WITH CHECK ADD  CONSTRAINT [FK_Main_Enter] FOREIGN KEY([IdEnter])
REFERENCES [dbo].[Enter] ([Id])
GO
ALTER TABLE [dbo].[Main] CHECK CONSTRAINT [FK_Main_Enter]
GO
ALTER TABLE [dbo].[Main]  WITH CHECK ADD  CONSTRAINT [FK_Main_Gender] FOREIGN KEY([IdGender])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Main] CHECK CONSTRAINT [FK_Main_Gender]
GO
ALTER TABLE [dbo].[Main]  WITH CHECK ADD  CONSTRAINT [FK_Main_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Main] CHECK CONSTRAINT [FK_Main_Type]
GO
USE [master]
GO
ALTER DATABASE [database] SET  READ_WRITE 
GO
