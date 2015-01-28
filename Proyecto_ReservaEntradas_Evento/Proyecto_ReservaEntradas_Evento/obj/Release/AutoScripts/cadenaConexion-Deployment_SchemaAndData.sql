SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Evento](
	[idEvento] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[tituloEvento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[descripcionEvento] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
	[lugarEvento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[invitadoEvento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[fechaEvento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[cupoEvento] [int] NULL,
	[imagenEvento] [varchar](max) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_tbl_Evento] PRIMARY KEY CLUSTERED 
(
	[idEvento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
INSERT [dbo].[tbl_Evento] ([idEvento], [tituloEvento], [descripcionEvento], [lugarEvento], [invitadoEvento], [fechaEvento], [cupoEvento], [imagenEvento]) VALUES (N'CAT_001', N'Conferencia de AutoCad', N'Conferencia', N'Coliseo Ruminahui', N'Vla', N'2015-01-15', 332, N'sds')
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cliente](
	[idCliente] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[nombreCliente] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[apellidoCliente] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
 CONSTRAINT [PK_tbl_Cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
INSERT [dbo].[tbl_Cliente] ([idCliente], [nombreCliente], [apellidoCliente]) VALUES (N'1709631475', N'Edwin', N'Proano')
GO
INSERT [dbo].[tbl_Cliente] ([idCliente], [nombreCliente], [apellidoCliente]) VALUES (N'1717153934', N'Edison', N'Proano')
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Reserva](
	[idReserva] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[idEvento] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[idCliente] [varchar](50) COLLATE Modern_Spanish_CI_AS NULL,
	[numeroEntradas] [int] NULL,
 CONSTRAINT [PK_tbl_Reserva] PRIMARY KEY CLUSTERED 
(
	[idReserva] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)

GO
INSERT [dbo].[tbl_Reserva] ([idReserva], [idEvento], [idCliente], [numeroEntradas]) VALUES (N'RE_1', N'CAT_001', N'1717153934', 4)
GO
INSERT [dbo].[tbl_Reserva] ([idReserva], [idEvento], [idCliente], [numeroEntradas]) VALUES (N'RE_2', N'CAT_001', N'1717153934', 3)
GO
INSERT [dbo].[tbl_Reserva] ([idReserva], [idEvento], [idCliente], [numeroEntradas]) VALUES (N'RE_3', N'CAT_001', N'1709631475', 3)
GO
INSERT [dbo].[tbl_Reserva] ([idReserva], [idEvento], [idCliente], [numeroEntradas]) VALUES (N'RE_4', N'CAT_001', N'1717153934', 5)
GO
ALTER TABLE [dbo].[tbl_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Reserva_tbl_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[tbl_Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[tbl_Reserva] CHECK CONSTRAINT [FK_tbl_Reserva_tbl_Cliente]
GO
ALTER TABLE [dbo].[tbl_Reserva]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Reserva_tbl_Evento] FOREIGN KEY([idEvento])
REFERENCES [dbo].[tbl_Evento] ([idEvento])
GO
ALTER TABLE [dbo].[tbl_Reserva] CHECK CONSTRAINT [FK_tbl_Reserva_tbl_Evento]
GO
