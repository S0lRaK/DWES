USE [aulacep]
GO
/****** Object:  Table [dbo].[assignatures]    Script Date: 13/11/2013 9:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[assignatures](
	[id] [int] NOT NULL,
	[codi] [varchar](10) NOT NULL,
	[descripcio] [varchar](45) NOT NULL,
	[hores] [int] NOT NULL,
 CONSTRAINT [PK_assignatures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cicles]    Script Date: 13/11/2013 9:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cicles](
	[id] [int] NOT NULL,
	[codi] [varchar](10) NOT NULL,
	[descripcio] [varchar](45) NOT NULL,
 CONSTRAINT [PK_cicles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[curs_assignatura]    Script Date: 13/11/2013 9:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[curs_assignatura](
	[id_curs] [int] NOT NULL,
	[id_assignatura] [int] NOT NULL,
 CONSTRAINT [PK_curs_assignatura] PRIMARY KEY CLUSTERED 
(
	[id_curs] ASC,
	[id_assignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cursos]    Script Date: 13/11/2013 9:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cursos](
	[id] [int] NOT NULL,
	[codi] [varchar](10) NOT NULL,
	[descripcio] [varchar](45) NULL,
	[id_cicle] [int] NOT NULL,
 CONSTRAINT [PK_cursos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 13/11/2013 9:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] NOT NULL,
	[nick] [varchar](50) NOT NULL,
	[contrasenya] [varchar](50) NOT NULL,
	[correo] [varchar](100) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[assignatures] ([id], [codi], [descripcio], [hores]) VALUES (100, N'A4G', N'Àmbits 4a Generació i eines CASE', 5)
INSERT [dbo].[assignatures] ([id], [codi], [descripcio], [hores]) VALUES (200, N'ADBD', N'Anàlisi i Disseny de Base de Dades', 2)
INSERT [dbo].[assignatures] ([id], [codi], [descripcio], [hores]) VALUES (300, N'FONAM', N'Fonaments de Programació', 8)
INSERT [dbo].[assignatures] ([id], [codi], [descripcio], [hores]) VALUES (400, N'IAIG', N'Implantació Aplicacions Informàtiques Gestió', 7)
INSERT [dbo].[assignatures] ([id], [codi], [descripcio], [hores]) VALUES (500, N'PEM', N'Programació Estructurada i Modular', 6)
INSERT [dbo].[assignatures] ([id], [codi], [descripcio], [hores]) VALUES (600, N'SGBDR', N'Sistemes Gestors Bases Dades Relacionals', 4)
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (1, N'AFI', N'Administració i Finances')
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (2, N'ASI', N'Administracio de Sistemas Informatics')
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (3, N'COM', N'Comerç')
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (4, N'DAI', N'Desenvolupament d''Aplicacions Informàtiques')
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (5, N'GAD', N'Gestió Administrativa')
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (6, N'GCM', N'Gestió Comercial i Màrketing')
INSERT [dbo].[cicles] ([id], [codi], [descripcio]) VALUES (7, N'SEC', N'Secretariat')
INSERT [dbo].[curs_assignatura] ([id_curs], [id_assignatura]) VALUES (40, 400)
INSERT [dbo].[curs_assignatura] ([id_curs], [id_assignatura]) VALUES (50, 400)
INSERT [dbo].[curs_assignatura] ([id_curs], [id_assignatura]) VALUES (60, 200)
INSERT [dbo].[curs_assignatura] ([id_curs], [id_assignatura]) VALUES (60, 500)
INSERT [dbo].[curs_assignatura] ([id_curs], [id_assignatura]) VALUES (70, 200)
INSERT [dbo].[curs_assignatura] ([id_curs], [id_assignatura]) VALUES (70, 500)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (10, N'AFI1A', N'1er AFI del matí', 2)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (20, N'ASI1A', N'1er ASI del matí', 2)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (30, N'ASI1T', N'1er ASI de la tarda', 2)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (40, N'ASI2A', N'2on ASI del matí', 2)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (50, N'ASI2T', N'2on ASI de la tarda', 2)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (60, N'DAI1A', N'', 4)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (70, N'DAI1T', N'', 4)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (80, N'DAI2A', N'', 4)
INSERT [dbo].[cursos] ([id], [codi], [descripcio], [id_cicle]) VALUES (90, N'DAI2T', N'', 4)
INSERT [dbo].[usuarios] ([id], [nick], [contrasenya], [correo], [direccion], [telefono]) VALUES (10, N'ffernandez', N'cep', N'ffernandez@gmail.com', N'Urquinaona, 10', N'934445566')
INSERT [dbo].[usuarios] ([id], [nick], [contrasenya], [correo], [direccion], [telefono]) VALUES (20, N'adomingo', N'cep', N'adomingo@hotmail.com', N'Rosellón, 23', N'932221133')
ALTER TABLE [dbo].[cursos] ADD  CONSTRAINT [DF__cursos__descripc__48CFD27E]  DEFAULT (NULL) FOR [descripcio]
GO
ALTER TABLE [dbo].[curs_assignatura]  WITH CHECK ADD  CONSTRAINT [FK_curs_assignatura_assignatures] FOREIGN KEY([id_assignatura])
REFERENCES [dbo].[assignatures] ([id])
GO
ALTER TABLE [dbo].[curs_assignatura] CHECK CONSTRAINT [FK_curs_assignatura_assignatures]
GO
ALTER TABLE [dbo].[curs_assignatura]  WITH CHECK ADD  CONSTRAINT [FK_curs_assignatura_cursos] FOREIGN KEY([id_curs])
REFERENCES [dbo].[cursos] ([id])
GO
ALTER TABLE [dbo].[curs_assignatura] CHECK CONSTRAINT [FK_curs_assignatura_cursos]
GO
ALTER TABLE [dbo].[cursos]  WITH CHECK ADD  CONSTRAINT [FK_cursos_cicles] FOREIGN KEY([id_cicle])
REFERENCES [dbo].[cicles] ([id])
GO
ALTER TABLE [dbo].[cursos] CHECK CONSTRAINT [FK_cursos_cicles]
GO
USE [master]
GO
ALTER DATABASE [aulacep] SET  READ_WRITE 
GO
