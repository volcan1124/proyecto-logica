USE [COMERCIAL_SEBASTIAN]
GO
/****** Object:  User [root]    Script Date: 1/04/2025 3:01:02 p. m. ******/
CREATE USER [root] FOR LOGIN [root] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 1/04/2025 3:01:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[Id_articulo] [numeric](18, 0) NOT NULL,
	[Nombre_Articulo] [nvarchar](50) NOT NULL,
	[Fabrica_1] [nvarchar](50) NOT NULL,
	[Fabrica_2] [nvarchar](50) NOT NULL,
	[Cantidad_Fabrica_1] [numeric](18, 0) NOT NULL,
	[Cantidad_Fabrica_2] [numeric](18, 0) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 1/04/2025 3:01:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_cliente] [numeric](18, 0) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Contrasena] [nvarchar](50) NOT NULL,
	[Direccion_1] [nvarchar](100) NOT NULL,
	[Direccion_2] [nvarchar](100) NULL,
	[Saldo] [numeric](18, 2) NOT NULL,
	[Limite_Credito] [numeric](18, 2) NOT NULL,
	[Descuento] [numeric](5, 2) NOT NULL,
	[Estado] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricas]    Script Date: 1/04/2025 3:01:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricas](
	[ID_Fabrica] [numeric](18, 0) NOT NULL,
	[Nombre_Fabrica] [nvarchar](50) NOT NULL,
	[Telefono_Fabrica] [numeric](18, 0) NOT NULL,
	[Descripcion_Fabrica] [nvarchar](50) NOT NULL,
	[Articulo_1] [nvarchar](50) NOT NULL,
	[Articulo_2] [nvarchar](50) NOT NULL,
	[Articulo_3] [nvarchar](50) NOT NULL,
	[Articulo_4] [nvarchar](50) NOT NULL,
	[Articulo_5] [nvarchar](50) NOT NULL,
	[Cantidad_Articulo_1] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_2] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_3] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_4] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_5] [numeric](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Fabrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 1/04/2025 3:01:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Id_Pedido] [numeric](18, 0) NOT NULL,
	[Id_Cliente] [numeric](18, 0) NOT NULL,
	[Campo] [numeric](18, 0) NOT NULL,
	[Fecha_Pedido] [date] NOT NULL,
	[Id_Articulo_1] [varchar](50) NOT NULL,
	[Id_Articulo_2] [varchar](50) NOT NULL,
	[Id_Articulo_3] [varchar](50) NOT NULL,
	[Id_Articulo_4] [varchar](50) NOT NULL,
	[Id_Articulo_5] [varchar](50) NOT NULL,
	[Cantidad_Articulo_1] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_2] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_3] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_4] [numeric](18, 0) NOT NULL,
	[Cantidad_Articulo_5] [numeric](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 1/04/2025 3:01:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Identificacion] [numeric](38, 0) NOT NULL,
	[Nombre_Usuario] [varchar](50) NOT NULL,
	[Clave_Encriptada] [varchar](255) NOT NULL,
	[Usuario_normal] [numeric](18, 0) NULL,
	[Usuario_Administrador] [numeric](18, 0) NULL,
	[Usuario_Superadministrador] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(1 AS Numeric(18, 0)), N'Galaxy S24', N'Samsung', N'Apple', CAST(500 AS Numeric(18, 0)), CAST(400 AS Numeric(18, 0)), N'Último modelo de alta gama')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(2 AS Numeric(18, 0)), N'iPhone 15', N'Apple', N'Samsung', CAST(450 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), N'Modelo premium con iOS')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(3 AS Numeric(18, 0)), N'Galaxy A55', N'Samsung', N'Apple', CAST(600 AS Numeric(18, 0)), CAST(350 AS Numeric(18, 0)), N'Gama media con excelente cámara')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(4 AS Numeric(18, 0)), N'iPhone 14', N'Apple', N'Samsung', CAST(500 AS Numeric(18, 0)), CAST(450 AS Numeric(18, 0)), N'Edición anterior con mejoras')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(5 AS Numeric(18, 0)), N'Galaxy Z Fold', N'Samsung', N'Apple', CAST(700 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), N'Celular plegable innovador')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(6 AS Numeric(18, 0)), N'iPhone SE', N'Apple', N'Samsung', CAST(300 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)), N'Modelo compacto y económico')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(7 AS Numeric(18, 0)), N'Galaxy M14', N'Samsung', N'Apple', CAST(800 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), N'Batería de larga duración')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(8 AS Numeric(18, 0)), N'iPhone 13', N'Apple', N'Samsung', CAST(350 AS Numeric(18, 0)), CAST(550 AS Numeric(18, 0)), N'Buen rendimiento y cámara')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(9 AS Numeric(18, 0)), N'Galaxy Note 20', N'Samsung', N'Apple', CAST(900 AS Numeric(18, 0)), CAST(150 AS Numeric(18, 0)), N'Celular con S-Pen integrado')
INSERT [dbo].[Articulo] ([Id_articulo], [Nombre_Articulo], [Fabrica_1], [Fabrica_2], [Cantidad_Fabrica_1], [Cantidad_Fabrica_2], [Descripcion]) VALUES (CAST(10 AS Numeric(18, 0)), N'iPhone 12', N'Apple', N'Samsung', CAST(500 AS Numeric(18, 0)), CAST(400 AS Numeric(18, 0)), N'Modelo icónico con 5G')
GO
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(1 AS Numeric(18, 0)), N'Juan Pérez', N'pass123', N'cll321b#204x78', N'Apto 5', CAST(1500.50 AS Numeric(18, 2)), CAST(5000.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(2 AS Numeric(18, 0)), N'María Gómez', N'clave456', N'cll875d#309y12', NULL, CAST(250.00 AS Numeric(18, 2)), CAST(2000.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(3 AS Numeric(18, 0)), N'Carlos Rodríguez', N'abc789', N'cll652a#508z34', N'Casa 10', CAST(500.75 AS Numeric(18, 2)), CAST(3000.00 AS Numeric(18, 2)), CAST(8.00 AS Numeric(5, 2)), N'Inactivo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(4 AS Numeric(18, 0)), N'Ana Fernández', N'securePass1', N'cll103e#701v56', NULL, CAST(3200.00 AS Numeric(18, 2)), CAST(7000.00 AS Numeric(18, 2)), CAST(12.50 AS Numeric(5, 2)), N'Suspendido')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(5 AS Numeric(18, 0)), N'Luis Martínez', N'luisPass', N'cll298f#402w89', N'Piso 2', CAST(100.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(6 AS Numeric(18, 0)), N'Sofía Ramírez', N'sofia2024', N'cll764g#605t23', N'Local 3', CAST(785.00 AS Numeric(18, 2)), CAST(5000.00 AS Numeric(18, 2)), CAST(6.00 AS Numeric(5, 2)), N'Inactivo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(7 AS Numeric(18, 0)), N'Pedro Torres', N'pedroTor12', N'cll519h#307u45', NULL, CAST(1200.30 AS Numeric(18, 2)), CAST(4000.00 AS Numeric(18, 2)), CAST(7.50 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(8 AS Numeric(18, 0)), N'Laura Sánchez', N'lauraSafe', N'cll847j#209r67', N'Apto 9', CAST(300.00 AS Numeric(18, 2)), CAST(2500.00 AS Numeric(18, 2)), CAST(4.00 AS Numeric(5, 2)), N'Suspendido')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(9 AS Numeric(18, 0)), N'David Herrera', N'davidH99', N'cll630k#108s89', NULL, CAST(980.25 AS Numeric(18, 2)), CAST(4800.00 AS Numeric(18, 2)), CAST(9.00 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(10 AS Numeric(18, 0)), N'Andrea López', N'andreaL88', N'cll412m#502q12', N'Piso 1', CAST(2100.00 AS Numeric(18, 2)), CAST(6500.00 AS Numeric(18, 2)), CAST(11.00 AS Numeric(5, 2)), N'Inactivo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(11 AS Numeric(18, 0)), N'Fernando Díaz', N'ferDiaz77', N'cll921n#403p34', NULL, CAST(670.40 AS Numeric(18, 2)), CAST(3500.00 AS Numeric(18, 2)), CAST(6.50 AS Numeric(5, 2)), N'Suspendido')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(12 AS Numeric(18, 0)), N'Paola Jiménez', N'paolaJ22', N'cll357o#606n56', N'Casa 7', CAST(450.00 AS Numeric(18, 2)), CAST(2800.00 AS Numeric(18, 2)), CAST(5.50 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(13 AS Numeric(18, 0)), N'Héctor Vázquez', N'hectorV33', N'cll284p#704m78', NULL, CAST(5000.00 AS Numeric(18, 2)), CAST(10000.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(5, 2)), N'Activo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(14 AS Numeric(18, 0)), N'Natalia Castro', N'nataliaC77', N'cll690q#305l90', N'Local 2', CAST(120.00 AS Numeric(18, 2)), CAST(1800.00 AS Numeric(18, 2)), CAST(2.50 AS Numeric(5, 2)), N'Inactivo')
INSERT [dbo].[Cliente] ([Id_cliente], [Nombre], [Contrasena], [Direccion_1], [Direccion_2], [Saldo], [Limite_Credito], [Descuento], [Estado]) VALUES (CAST(15 AS Numeric(18, 0)), N'Gabriel Moreno', N'gabrielM55', N'cll538r#107k21', NULL, CAST(2500.00 AS Numeric(18, 2)), CAST(6000.00 AS Numeric(18, 2)), CAST(10.50 AS Numeric(5, 2)), N'Suspendido')
GO
INSERT [dbo].[Fabricas] ([ID_Fabrica], [Nombre_Fabrica], [Telefono_Fabrica], [Descripcion_Fabrica], [Articulo_1], [Articulo_2], [Articulo_3], [Articulo_4], [Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(1 AS Numeric(18, 0)), N'Samsung', CAST(123456789 AS Numeric(18, 0)), N'Fábrica de celulares', N'Galaxy S24', N'Galaxy A55', N'Galaxy Z Fold', N'Galaxy M14', N'Galaxy Note 20', CAST(500 AS Numeric(18, 0)), CAST(600 AS Numeric(18, 0)), CAST(700 AS Numeric(18, 0)), CAST(800 AS Numeric(18, 0)), CAST(900 AS Numeric(18, 0)))
INSERT [dbo].[Fabricas] ([ID_Fabrica], [Nombre_Fabrica], [Telefono_Fabrica], [Descripcion_Fabrica], [Articulo_1], [Articulo_2], [Articulo_3], [Articulo_4], [Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(2 AS Numeric(18, 0)), N'Apple', CAST(987654321 AS Numeric(18, 0)), N'Fábrica de iPhones', N'iPhone 15', N'iPhone 14', N'iPhone SE', N'iPhone 13', N'iPhone 12', CAST(400 AS Numeric(18, 0)), CAST(450 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)), CAST(350 AS Numeric(18, 0)), CAST(500 AS Numeric(18, 0)))
GO
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(101 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2025-03-01' AS Date), N'Samsung', N'Apple', N'Xiaomi', N'Huawei', N'Motorola', CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(102 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'2025-03-02' AS Date), N'Apple', N'Samsung', N'OnePlus', N'Xiaomi', N'Nokia', CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(103 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2025-03-03' AS Date), N'Xiaomi', N'Oppo', N'Vivo', N'Realme', N'Huawei', CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(104 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2025-03-04' AS Date), N'Sony', N'LG', N'Google', N'Asus', N'Lenovo', CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(105 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(N'2025-03-05' AS Date), N'Motorola', N'Samsung', N'Apple', N'Xiaomi', N'OnePlus', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(106 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(N'2025-03-06' AS Date), N'Realme', N'Huawei', N'Sony', N'LG', N'Google', CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(107 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2025-03-07' AS Date), N'Asus', N'Lenovo', N'Nokia', N'OnePlus', N'Vivo', CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(108 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'2025-03-08' AS Date), N'Xiaomi', N'Samsung', N'Apple', N'Google', N'Motorola', CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(109 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(N'2025-03-09' AS Date), N'Sony', N'LG', N'Oppo', N'Vivo', N'Realme', CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Pedido] ([Id_Pedido], [Id_Cliente], [Campo], [Fecha_Pedido], [Id_Articulo_1], [Id_Articulo_2], [Id_Articulo_3], [Id_Articulo_4], [Id_Articulo_5], [Cantidad_Articulo_1], [Cantidad_Articulo_2], [Cantidad_Articulo_3], [Cantidad_Articulo_4], [Cantidad_Articulo_5]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(110 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(N'2025-03-10' AS Date), N'Huawei', N'OnePlus', N'Samsung', N'Apple', N'Xiaomi', CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id_Usuario], [Identificacion], [Nombre_Usuario], [Clave_Encriptada], [Usuario_normal], [Usuario_Administrador], [Usuario_Superadministrador]) VALUES (1, CAST(2033417394 AS Numeric(38, 0)), N'JUAN LOPEZ', N'15634', CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Identificacion], [Nombre_Usuario], [Clave_Encriptada], [Usuario_normal], [Usuario_Administrador], [Usuario_Superadministrador]) VALUES (2, CAST(5674987698 AS Numeric(38, 0)), N'JUAN SEPULVEDA', N'36781', CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Identificacion], [Nombre_Usuario], [Clave_Encriptada], [Usuario_normal], [Usuario_Administrador], [Usuario_Superadministrador]) VALUES (3, CAST(6112315421 AS Numeric(38, 0)), N'LAURA ROJAS', N'69452', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Identificacion], [Nombre_Usuario], [Clave_Encriptada], [Usuario_normal], [Usuario_Administrador], [Usuario_Superadministrador]) VALUES (1002, CAST(1032386072 AS Numeric(38, 0)), N'SuperAdmin', N'186cf774c97b60a1c106ef718d10970a6a06e06bef89553d9ae65d938a886eae', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Usuarios] ([Id_Usuario], [Identificacion], [Nombre_Usuario], [Clave_Encriptada], [Usuario_normal], [Usuario_Administrador], [Usuario_Superadministrador]) VALUES (2005, CAST(1269450378 AS Numeric(38, 0)), N'Valentina Lopez', N'17bb46c505fc378463a6a64491495dd703f7791e69b36a9575ce72b9be70eb95', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__57A4BD1925FCE722]    Script Date: 1/04/2025 3:01:03 p. m. ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Nombre_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Usuarios__D6F931E5C6B2E940]    Script Date: 1/04/2025 3:01:03 p. m. ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((0)) FOR [Saldo]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((0)) FOR [Limite_Credito]
GO
ALTER TABLE [dbo].[Cliente] ADD  DEFAULT ((0)) FOR [Descuento]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((0)) FOR [Usuario_normal]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((0)) FOR [Usuario_Administrador]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((0)) FOR [Usuario_Superadministrador]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD CHECK  (([Estado]='Suspendido' OR [Estado]='Inactivo' OR [Estado]='Activo'))
GO
