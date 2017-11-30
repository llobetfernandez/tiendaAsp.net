CREATE TABLE [Versio](
	[idversio] [int] IDENTITY(1,1) NOT NULL,
	[Versio] [nvarchar](10) NULL,
	[DataLliurament] [smalldatetime] NULL,
	[DataInstalacio] [smalldatetime] NULL,
	[Host] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Versio] PRIMARY KEY CLUSTERED 
(
	[idversio] ASC
)) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Versio] ON
INSERT [Versio] ([idversio], [Versio], [DataLliurament], [DataInstalacio], [Host], [IP]) VALUES (1, N'1.0.0', CAST(0x9FA80000 AS SmallDateTime), CAST(0x9FA80000 AS SmallDateTime), N'CENTAURUS', NULL)
SET IDENTITY_INSERT [Versio] OFF
/****** Object:  Table [FormaPago]    Script Date: 03/24/2015 19:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FormaPago](
	[idFormaPago] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[descripcion] [nvarchar](200) NOT NULL,	
 CONSTRAINT [PK_idFormaPago] PRIMARY KEY CLUSTERED 
(
	[idFormaPago] ASC
)) ON [PRIMARY]
GO
SET IDENTITY_INSERT [FormaPago] ON
INSERT [FormaPago] ([idFormaPago], [nombre], [descripcion]) VALUES (1,N'CONTRAREEMBOLSO',N'PAGO AL RECIBIR LA MERCANCIA')
INSERT [FormaPago] ([idFormaPago], [nombre], [descripcion]) VALUES (2,N'PAYPAL',N'PAGO A TRAVES DE CUENTA PAYPAL')
INSERT [FormaPago] ([idFormaPago], [nombre], [descripcion]) VALUES (3,N'TRANSFERENCIA BANCARIA',N'PAGO TRANSFERENCIA BANCARIA A 30 DIAS')
INSERT [FormaPago] ([idFormaPago], [nombre], [descripcion]) VALUES (4,N'RECIBO DOMICILIADO',N'RECIBO BANCARIO')
SET IDENTITY_INSERT [FormaPago] OFF
/****** Object:  Table [Clientes]    Script Date: 03/24/2015 19:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [nvarchar](10) NOT NULL UNIQUE,
	[nombre] [nvarchar](20) NOT NULL,
	[apellidos] [nvarchar](200) NOT NULL,
	[direccion] [nvarchar](250) NOT NULL,
	[ciudad] [nvarchar](25) NOT NULL,
	[codigopostal] [nvarchar](5) NULL,
	[pais] [nvarchar](15) NOT NULL,
	[telefono] [nvarchar](12) NOT NULL,
	[mobil] [nvarchar](9) NULL,
	[email] [nvarchar](35) NOT NULL,
	[password] [nvarchar](15) NOT NULL,
	[idformapago] [int] NOT NULL,
 CONSTRAINT [PK_idCliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Clientes] ON
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (0, N'43548693T', N'CARLOS', N'LLOBET FERNANDEZ', N'AVD. MERIDIANA 274 4º 1ª B', N'BARCELONA', N'08027', N'ESPAÑA', N'933493257', N'628092496', N'root@root.es', N'12345', 1)
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (1, N'43548692D', N'CARLOS', N'LLOBET FERNANDEZ', N'AVD. MERIDIANA 274 4º 1ª B', N'BARCELONA', N'08027', N'ESPAÑA', N'933493257', N'628092496', N'llobet.fernandez@gmail.com', N'12345', 1)
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (2, N'42375989T', N'SARA', N'MARTINEZ GONZALEZ', N'AVD. DIAGONAL 14 3º 1ª', N'BARCELONA', N'08032', N'ESPAÑA', N'933324847', N'628092497', N'cllobet123@gmail.com', N'12345', 1)
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (3, N'32452875O', N'SANDRO', N'PEREZ LOPEZ', N'AVD. MERIDIANA 274 4º 1ª B', N'BARCELONA', N'08025', N'ESPAÑA', N'933589302', N'666883827', N'perico.pallo@gmail.com', N'12345', 2)
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (4, N'42343433T', N'MARIBEL', N'TANTO TIENE', N'AVD. DIAGONAL 14 3º 1ª', N'BARCELONA', N'08027', N'ESPAÑA', N'933475667', N'649283497', N'tente.tanto@gmail.com', N'12345', 3)
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (5, N'46767666P', N'PACO', N'FERNANDEZ FERNANDEZ', N'AVD. MERIDIANA 274 4º 1ª B', N'BARCELONA', N'08025', N'ESPAÑA', N'933328857', N'623948903', N'paco.fernandez@gmail.com', N'12345', 4)
INSERT [Clientes] ([idCliente], [DNI], [nombre], [apellidos], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [password], [idformapago]) VALUES (6, N'45665444N', N'AMPARO', N'MATRIE PEREZ', N'AVD. DIAGONAL 14 3º 1ª', N'BARCELONA', N'08027', N'ESPAÑA', N'933493787', N'628038299', N'amparo.matrie@gmail.com', N'12345', 4)
SET IDENTITY_INSERT [Clientes] OFF
/****** Object:  Table [Proveedores]    Script Date: 03/24/2015 19:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Proveedores](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[NIF] [nvarchar](10) NOT NULL UNIQUE,
	[nombre] [nvarchar](20) NOT NULL,
	[contacto] [nvarchar](220) NOT NULL,
	[direccion] [nvarchar](250) NOT NULL,
	[ciudad] [nvarchar](25) NOT NULL,
	[codigopostal] [nvarchar](5) NULL,
	[pais] [nvarchar](15) NOT NULL,
	[telefono] [nvarchar](12) NOT NULL,
	[mobil] [nvarchar](9) NULL,
	[email] [nvarchar](35) NOT NULL,
	[descuentoaplicado] [int] NULL,
	[idformapago] [int] NOT NULL,
 CONSTRAINT [PK_idProveedor] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Proveedores] ON
INSERT [Proveedores] ([idProveedor], [NIF], [nombre], [contacto], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [descuentoaplicado], [idformapago]) VALUES (1, N'T435183882', N'ADVEO', N'INES LOPEZ FERNANDEZ', N'POLIGONO SAN CEBRIAN CALLE B', N'ORENSE', N'13604', N'ESPAÑA', N'988443657', N'', N'adveo@adveovision.com', N'12', 4)
INSERT [Proveedores] ([idProveedor], [NIF], [nombre], [contacto], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [descuentoaplicado], [idformapago]) VALUES (2, N'T42375989', N'APLI PAPER SAU', N'MARTINEZ GONZALEZ', N'AVD. DIAGONAL 55 BAJOS', N'BARCELONA', N'08032', N'ESPAÑA', N'933322247', N'628828288', N'apli@aplipaper.com', N'5', 4)
INSERT [Proveedores] ([idProveedor], [NIF], [nombre], [contacto], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [descuentoaplicado], [idformapago]) VALUES (3, N'32453215O', N'PAPELERIA ANTONIO', N'ANTONIO PEREZ LOPEZ', N'AVD. MERIDIANA 272 BAJOS', N'BARCELONA', N'08025', N'ESPAÑA', N'933583302', N'672272773', N'antonio.perez@gmail.com', N'10', 2)
INSERT [Proveedores] ([idProveedor], [NIF], [nombre], [contacto], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [descuentoaplicado], [idformapago]) VALUES (4, N'T42311113', N'3M', N'INDIO PACIFICO PAZ', N'AVD. CASTILLEJOS 4 1º 1ª', N'MADRID', N'07014', N'ESPAÑA', N'933844855', N'', N'3M@gmail.com', N'11', 3)
INSERT [Proveedores] ([idProveedor], [NIF], [nombre], [contacto], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [descuentoaplicado], [idformapago]) VALUES (5, N'Q43883936Q', N'VERBATIM', N'JOSE FERNANDEZ FERNANDEZ', N'AVD. MERIDIANA 274 4º 1ª B', N'BARCELONA', N'08025', N'ESPAÑA', N'933321157', N'623948903', N'verbatim@verbatim.com', N'0', 4)
INSERT [Proveedores] ([idProveedor], [NIF], [nombre], [contacto], [direccion], [ciudad], [codigopostal], [pais], [telefono], [mobil], [email], [descuentoaplicado], [idformapago]) VALUES (6, N'N41444122', N'FELLOWES', N'CARLOS LOPEZ PEREZ', N'AVD. DIAGONAL 4 3º 1ª', N'VALENCIA', N'09027', N'ESPAÑA', N'931344333', N'61111111', N'fellowes@fellowes.es', N'12', 4)
SET IDENTITY_INSERT [Proveedores] OFF
/****** Object:  Table [Categoria]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL UNIQUE,
	[descripcion] [nvarchar](250) NOT NULL,	
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Categoria] ON
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (1,N'Escritura',N'Articulos de escritura y borrado')
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (2,N'Informatica',N'Cartuchos de impresora toners cd')
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (3,N'Cuadernos y blocs',N'Libretas variadas')
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (4,N'Pinturas',N'Pinturas')
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (5,N'Clasificacion y archivo',N'Archivadores carpetas')
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (6,N'Papel',N'Papel')
INSERT [Categoria] ([idCategoria], [nombre], [descripcion]) VALUES (7,N'Servicios generales',N'Otros productos')
SET IDENTITY_INSERT [Categoria] OFF
/****** Object:  Table [Subcategoria]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Subcategoria](
	[idSubcategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL UNIQUE,
	[descripcion] [nvarchar](250) NOT NULL,	
	[idcategoria] [int] NOT NULL,
 CONSTRAINT [PK_Subcategoria] PRIMARY KEY CLUSTERED 
(
	[idSubcategoria] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Subcategoria] ON
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (1,N'Boligrafos',N'Boligrafos',1)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (2,N'Pilots',N'Pilots',1)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (3,N'Rotuladores',N'Rotuladores',1)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (4,N'Lapices',N'Lapices',1)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (5,N'Borrado',N'Borrado y correccion',1)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (6,N'Cartuchos impresora',N'Cartuchos impresora y toners',2)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (7,N'Almacenaje datos',N'cd dvd usb discos',2)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (8,N'Cuadernos',N'Cuadernos',3)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (9,N'Blocs',N'Blocs',3)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (10,N'Pintura tempera',N'Temperas',4)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (11,N'Pintura de mano',N'Pintura de mano',4)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (12,N'Archivadores',N'Archivadores',5)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (13,N'Carpetas y carpesanos',N'Carpetas y carpesanos',5)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (14,N'Acordeones',N'Acordeones',5)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (15,N'Papel DIN A3',N'DIN A3',6)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (16,N'Papel DIN A4',N'DIN A4',6)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (17,N'Papel variados',N'Otros tamaños de papel y otros tipos de papel',6)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (18,N'Pegamentos',N'Pegamentos',7)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (19,N'Notas reposicionables',N'Post-it',7)
INSERT [Subcategoria] ([idSubcategoria], [nombre], [descripcion], [idcategoria]) VALUES (20,N'Sobres y bolsas',N'Sobres y bolsas',7)
SET IDENTITY_INSERT [Subcategoria] OFF

/****** Object:  Table [Articulo]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Articulo](
	[idArticulo] [bigint] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](9) NOT NULL UNIQUE,
	[descripcion] [nvarchar](200) NOT NULL,
	[foto] [nvarchar](255) NOT NULL,
	[stock] [bigint] NULL,
	[preciosiniva] [float] NOT NULL,
	[idiva] [int] NOT NULL,
	[preciocompra] [float] NOT NULL,
	[precioventa] [float] NOT NULL,
	[idproveedor] [int] NOT NULL,
	[idcategoria] [int] NOT NULL,
	[idsubcategoria] [int] NOT NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[idArticulo] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Articulo] ON
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (1, '130150', 'papel ZOOM A4','lightbox/lightbox/images/images/imagenes/papel6.jpg' ,100,2.25,1,1.99,2.60,1,6,16)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (2, '413230', 'papel 5 estrellas A4','lightbox/lightbox/images/images/imagenes/papel2.jpg' ,250,2.25,1,1.99,2.60,1,6,16)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (3, '130142', 'papel ZOOM A3','lightbox/lightbox/images/images/imagenes/papel5.jpg' ,80,2.25,1,1.99,2.60,1,6,15)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (4, '104512', 'boligrafo bic azul punta media','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (5, '350103', 'boligrafo bic negro punta media','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (6, '350081', 'boligrafo bic rojo punta media','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (7, '828046', 'boligrafo bic verde punta media','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (8, '759993', 'boligrafo bic azul punta fina','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (9, '759985', 'boligrafo bic negro punta fina','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (10, '760106', 'boligrafo bic rojo punta fina','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (11, '760114', 'boligrafo bic verde punta fina','lightbox/lightbox/images/images/imagenes/boligrafo1.jpg' ,500,0.15,1,0.09,0.18,1,1,1)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (12, '961010', 'pilot 5 estrellas tinta gel azul','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (13, '961005', 'pilot 5 estrellas tinta gel negro','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (14, '961013', 'pilot 5 estrellas tinta gel rojo','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (15, '961021', 'pilot 5 estrellas tinta gel verde','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (16, '737572', 'pilot G-2 azul','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.29,1,0.15,0.38,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (17, '737564', 'pilot G-2 negro','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.29,1,0.15,0.38,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (18, '737580', 'pilot G-2 rojo','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.29,1,0.15,0.38,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (19, '138223', 'pilot G-2 verde','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.29,1,0.15,0.38,1,1,2)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (20, '722447', 'tratto office fino azul','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (21, '722455', 'tratto office fino negro','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (22, '722463', 'tratto office fino rojo','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (23, '722471', 'tratto office fino verde','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,0.25,1,0.09,0.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (24, '791129', 'stabilo pack 6 rotuladores','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,1.25,1,1.09,1.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (25, '718826', 'stabilo pack 10 rotuladores','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,2.25,1,2.09,2.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (26, '220186', 'stabilo pack 25 rotuladores','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,500,4.25,1,4.09,4.30,1,1,3)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (27, '095753', 'staedtler lapiz noris 2B sin goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.05,1,0.03,0.08,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (28, '095779', 'staedtler lapiz noris B sin goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.05,1,0.03,0.08,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (29, '095800', 'staedtler lapiz noris HB sin goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.05,1,0.03,0.08,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (30, '095745', 'staedtler lapiz noris HB con goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.05,1,0.03,0.08,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (31, '095787', 'staedtler lapiz noris H sin goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.05,1,0.03,0.08,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (32, '095761', 'staedtler lapiz noris 2H sin goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.05,1,0.03,0.08,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (33, '152432', 'staedtler lapiz triangular noris club HB sin goma','lightbox/lightbox/images/images/imagenes/lapiz1.jpg' ,500,0.07,1,0.04,0.12,1,1,4)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (34, '095452', 'milan goma de borrar 430','lightbox/lightbox/images/images/imagenes/goma3.jpg' ,250,0.05,1,0.03,0.08,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (35, '095533', 'milan goma de borrar 624','lightbox/lightbox/images/images/imagenes/goma4.jpg' ,150,0.09,1,0.05,0.12,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (36, '095672', 'staedtler goma de borrar mars plastic','lightbox/lightbox/images/images/imagenes/goma1.jpg' ,250,0.10,1,0.07,0.13,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (37, '296190', '5 estrellas corrector liquido','lightbox/lightbox/images/images/imagenes/tipex1.jpg' ,300,0.15,1,0.13,0.18,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (38, '620530', '5 estrellas lapiz corrector','lightbox/lightbox/images/images/imagenes/tipex2.jpg' ,200,0.17,1,0.14,0.22,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (39, '960837', '5 estrellas cinta correctora lateral','lightbox/lightbox/images/images/imagenes/tipex3.jpg' ,300,0.17,1,0.14,0.22,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (40, '926155', '5 estrellas cinta correctora frontal','lightbox/lightbox/images/images/imagenes/tipex4.jpg' ,200,0.17,1,0.14,0.22,1,1,5)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (41, '254334', 'hewlett packard 301XL tricolor','lightbox/lightbox/images/images/imagenes/cartucho2.jpg' ,30,15.50,1,14.00,19.00,1,2,6)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (42, '254326', 'hewlett packard 301XL negro','lightbox/lightbox/images/images/imagenes/cartucho2.jpg' ,20,15.00,1,14.00,18.00,1,2,6)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (43, '142992', 'imation memoria usb 2.0 clasic 64gb','lightbox/lightbox/images/images/imagenes/usb1.jpg' ,20,5.17,1,4.14,6.22,1,1,7)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (44, '223132', 'toshiba disco duro de 2 terabytes color blanco','lightbox/lightbox/images/images/imagenes/discdur1.jpg' ,30,100.50,1,93.00,112.00,1,2,7)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (45, '131191', 'verbatim memoria usb store go pinstripe de 128gb','lightbox/lightbox/images/images/imagenes/usb2.jpg' ,20,35.00,1,24.00,42.00,5,2,7)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (46, '902556', '5 estrellas cuaderno cuadricula 4x4 tamaño 4º','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,7.50,1,6.50,8.50,1,3,8)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (47, '932044', '5 estrellas cuaderno rallado horizontal tamaño 4º','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,6.50,1,4.00,8.00,1,3,8)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (48, '932052', '5 estrellas cuaderno pautado 2,5 tamaño 4º','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,7.00,1,6.00,9.00,1,3,8)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (49, '902645', '5 estrellas cuaderno cuadricula 4x4 tamaño folio','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,10.00,1,8.14,11.22,1,3,8)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (50, '932083', '5 estrellas cuaderno rallado horizontal tamaño folio','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,10.50,1,9.00,12.00,1,3,8)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (51, '932087', '5 estrellas cuaderno pautado 2,5 tamaño folio','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,11.00,1,9.00,12.00,1,3,8)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (52, '081744', 'guerrero bloc evaluacion','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,10.00,1,8.00,12.00,1,3,9)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (53, '757494', 'clairefontaine bloc profesor','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,10.00,1,8.00,12.00,1,3,9)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (54, '154634', 'unipapel bloc de musica uniclase','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,10.00,1,8.00,12.00,1,3,9)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (55, '944460', 'giotto tempera blanca 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (56, '944461', 'giotto tempera amarillo 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (57, '944466', 'giotto tempera magenta 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (58, '944465', 'giotto tempera azul cyan 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (59, '944471', 'giotto tempera negro 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (60, '944463', 'giotto tempera verde 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (61, '944467', 'giotto tempera rosa 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (62, '944469', 'giotto tempera naranja 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (63, '944470', 'giotto tempera marron 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (64, '944468', 'giotto tempera rojo 500ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,3.00,1,2.00,3.50,1,4,10)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (65, '724855', 'jovi pintura de dedos 5 colores de 35ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,40,4.00,1,3.00,5.50,1,4,11)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (66, '724863', 'jovi pintura de dedos 6 colores 125ml','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,6.00,1,5.00,7.50,1,4,11)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (67, '922609', '5 estrellas A4 jaspeado con rado','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,0.40,1,0.25,0.50,1,5,12)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (68, '922625', '5 estrellas A4 jaspeado sin rado','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,0.40,1,0.25,0.50,1,5,12)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (69, '922595', '5 estrellas folio jaspeado con rado','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,0.40,1,0.25,0.50,1,5,12)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (70, '922617', '5 estrellas folio jaspeado sin rado','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,0.40,1,0.25,0.50,1,5,12)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (71, '931561', '5 estrellas cajetin folio','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,40,0.35,1,0.20,0.50,1,5,12)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (72, '931545', '5 estrellas cajetin A4','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,5,12)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (73, '962272', '5 estrellas carpeta de 2 anillas de 25mm en negro','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,0.40,1,0.25,0.50,1,5,13)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (74, '340298', '5 estrellas carpeta de 2 anillas de 25mm en azul','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,200,0.40,1,0.25,0.50,1,5,13)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (75, '340301', '5 estrellas carpeta de 2 anillas de 25mm en rojo','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,40,0.35,1,0.20,0.50,1,5,13)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (76, '962277', '5 estrellas carpeta de 2 anillas de 25mm en verde','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,5,13)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (77, '129734', 'galgo papel verjurado 100h marfil','lightbox/lightbox/images/images/imagenes/papel5.jpg' ,40,5.35,1,5.20,6.50,1,6,17)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (78, '049920', 'galgo papel verjurado 100h crema','lightbox/lightbox/images/images/imagenes/papel5.jpg' ,55,5.35,1,5.20,6.50,1,6,17)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (79, '767490', 'pritt stick barra adhesiva 10gr','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,7,18)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (80, '767504', 'pritt stick barra adhesiva 22gr','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,7,18)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (81, '767512', 'pritt stick barra adhesiva 43gr','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,7,18)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (82, '628586', 'post-it notas reposicionables amarillas 76x76mm','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,7,19)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (83, '628594', 'post-it notas reposicionables amarillas 76x127mm','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,7,19)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (84, '628969', 'post-it notas reposicionables amarillas 102x152mm','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,55,0.35,1,0.20,0.50,1,7,19)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (85, '552250', '5 estrellas notas reposicionables amarillas 38x51mm','lightbox/lightbox/images/images/imagenes/sinimagen.jpg' ,64,0.30,1,0.20,0.40,1,7,19)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (86, '019812', 'unipapel bolsa blanca sin ventana 229x334mm 100gr cierre autodex','lightbox/lightbox/images/images/imagenes/sobres1.jpg' ,55,0.35,1,0.20,0.50,1,7,20)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (87, '019840', 'unipapel bolsa blanca ventana derecha 229x334mm 100gr cierre autodex','lightbox/lightbox/images/images/imagenes/sobres1.jpg' ,55,0.35,1,0.20,0.50,1,7,20)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (88, '130643', 'unipapel bolsa blanca ventana izquierda 229x334mm 100gr cierre autodex','lightbox/lightbox/images/images/imagenes/sobres1.jpg' ,55,0.35,1,0.20,0.50,1,7,20)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (89, '013839', 'unipapel bolsa kraft sin ventana 229x334mm 90gr cierre autodex','lightbox/lightbox/images/images/imagenes/sobres1.jpg' ,55,0.35,1,0.20,0.50,1,7,20)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (90, '013050', 'unipapel bolsa kraft sin ventana 229x334mm 100gr cierre autodex','lightbox/lightbox/images/images/imagenes/sobres1.jpg' ,64,0.30,1,0.20,0.40,1,7,20)
INSERT [Articulo] ([idArticulo], [codigo], [descripcion], [foto], [stock], [preciosiniva], [idiva], [preciocompra], [precioventa], [idproveedor], [idcategoria], [idsubcategoria]) VALUES (91, '907551', 'unipapel sobre americano 115x225 blanco 80gr','lightbox/lightbox/images/images/imagenes/sobres1.jpg' ,64,0.30,1,0.20,0.40,1,7,20)
SET IDENTITY_INSERT [Articulo] OFF
/****** Object:  Table [Oferta]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Oferta](
	[idOferta] [int] IDENTITY(1,1) NOT NULL,
	[idarticulo] [bigint] NOT NULL,
	[fechainicio] [smalldatetime] NOT NULL,
	[fechafin] [smalldatetime] NOT NULL,
	[descuento] [int] NOT NULL,
 CONSTRAINT [PK_Oferta] PRIMARY KEY CLUSTERED 
(
	[idOferta] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Oferta] ON
INSERT [Oferta] ([idOferta], [idarticulo], [fechainicio], [fechafin], [descuento]) VALUES (1,1,CAST(0x9FA80000 AS SmallDateTime),CAST(0x9FA80000 AS SmallDateTime),5)
INSERT [Oferta] ([idOferta], [idarticulo], [fechainicio], [fechafin], [descuento]) VALUES (2,2,CAST(0x9FA80000 AS SmallDateTime),CAST(0x9FA80000 AS SmallDateTime),5)
INSERT [Oferta] ([idOferta], [idarticulo], [fechainicio], [fechafin], [descuento]) VALUES (3,91,CAST(0x9FA80000 AS SmallDateTime),CAST(0x9FA80000 AS SmallDateTime),5)
SET IDENTITY_INSERT [Oferta] OFF
/****** Object:  Table [Transportista]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Transportista](
	[idTransportista] [int] IDENTITY (1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL UNIQUE,
	[telefono] [nvarchar](12) NOT NULL,
	[direccion] [nvarchar](250) NULL,
	[codigopostal] [nvarchar](5) NULL,
	[ciudad] [nvarchar](25) NULL,
	[pais] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
 CONSTRAINT [PK_Transportista] PRIMARY KEY CLUSTERED 
(
	[idTransportista] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Transportista] ON
INSERT [Transportista] ([idTransportista], [nombre], [telefono], [direccion], [codigopostal], [ciudad], [pais], [email]) VALUES (1,'ASM','932432041','Paseo Maragall 124','08027','Barcelona','España','asm980@asm.net')
INSERT [Transportista] ([idTransportista], [nombre], [telefono], [direccion], [codigopostal], [ciudad], [pais], [email]) VALUES (2,'SEUR','932456655','Paseo Fabra i Puig 100','08028','Barcelona','España','seur23@seur.net')
SET IDENTITY_INSERT [Transportista] OFF
/****** Object:  Table [Iva]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Iva](
	[idIva] [int] IDENTITY(1,1) NOT NULL,
	[iva] [int] NOT NULL,
	[descripcion] [nvarchar] (55) NOT NULL,
 CONSTRAINT [PK_Iva] PRIMARY KEY CLUSTERED 
(
	[idIva] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Iva] ON
INSERT [Iva] ([idIva], [iva], [descripcion]) VALUES (1,21,'21% iva')
INSERT [Iva] ([idIva], [iva], [descripcion]) VALUES (2,10,'10% iva')
INSERT [Iva] ([idIva], [iva], [descripcion]) VALUES (3,4,'4% iva')
SET IDENTITY_INSERT [Iva] OFF
GO
/****** Object:  Table [PedidoCompras]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PedidoCompras](
	[idPedidoC] [bigint] IDENTITY(1,1) NOT NULL,
	[idproveedor] [int] NOT NULL,
	[fecha] [smalldatetime] NOT NULL,
	[estado] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_PedidoC] PRIMARY KEY CLUSTERED 
(
	[idPedidoC] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [PedidoCompras] ON
INSERT [PedidoCompras] ([idPedidoC], [idproveedor], [fecha], [estado]) VALUES (1,1,CAST(0x9FA80000 AS SmallDateTime),'pendiente')
INSERT [PedidoCompras] ([idPedidoC], [idproveedor], [fecha], [estado]) VALUES (2,3,CAST(0x9FA80000 AS SmallDateTime),'recibido')
SET IDENTITY_INSERT [PedidoCompras] OFF
GO
/****** Object:  Table [PedidoLinCompras]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PedidoLinCompras](
	[idPedidoLinC] [bigint] IDENTITY(1,1) NOT NULL,
	[idpedidoc] [bigint] NOT NULL,
	[idarticulo] [bigint] NOT NULL,
	[idiva] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[preciocompra] [float] NOT NULL,
	[descuento] [int] NULL,
 CONSTRAINT [PK_PedidoLinCompras] PRIMARY KEY CLUSTERED 
(
	[idPedidoLinC] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [PedidoLinCompras] ON
INSERT [PedidoLinCompras] ([idPedidoLinC], [idpedidoc], [idarticulo], [idiva], [cantidad], [preciocompra], [descuento]) VALUES (1,2,1,1,600,1.99,5)
INSERT [PedidoLinCompras] ([idPedidoLinC], [idpedidoc], [idarticulo], [idiva], [cantidad], [preciocompra], [descuento]) VALUES (2,1,1,1,1800,1.99,10)
SET IDENTITY_INSERT [PedidoLinCompras] OFF
/****** Object:  Table [FacturasCompra]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FacturasCompras](
	[idFacturaC] [bigint] IDENTITY(1,1) NOT NULL,
	[idpedidoc] [bigint] NOT NULL,
	[idformapago] [int] NOT NULL,
	[pagado] [bit] NOT NULL,
	[fechacreacion] [smalldatetime] NOT NULL,
	[fechapago] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_FacturasCompra] PRIMARY KEY CLUSTERED 
(
	[idFacturaC] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Facturascompras] ON
INSERT [FacturasCompras] ([idFacturaC], [idpedidoc], [idformapago], [pagado], [fechacreacion], [fechapago]) VALUES (1,2,4,1,CAST(0x9FA80000 AS SmallDateTime),CAST(0x9FA80000 AS SmallDateTime))
SET IDENTITY_INSERT [FacturasCompras] OFF
/****** Object:  Table [PedidoVentas]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PedidoVentas](
	[idPedidoV] [bigint] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NOT NULL,
	[fecha] [smalldatetime] NOT NULL,
	[estado] [nvarchar](15) NOT NULL,
	[idtransportista] [int] NOT NULL,
 CONSTRAINT [PK_PedidoV] PRIMARY KEY CLUSTERED 
(
	[idPedidoV] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [PedidoVentas] ON
INSERT [PedidoVentas] ([idPedidoV], [idcliente], [fecha], [estado], [idtransportista]) VALUES (1,1,CAST(0x9FA80000 AS SmallDateTime),'servido',1)
INSERT [PedidoVentas] ([idPedidoV], [idcliente], [fecha], [estado], [idtransportista]) VALUES (2,5,CAST(0x9FA80000 AS SmallDateTime),'pendiente',1)
SET IDENTITY_INSERT [PedidoVentas] OFF
GO
/****** Object:  Table [PedidoLinVentas]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PedidoLinVentas](
	[idPedidoLinV] [bigint] IDENTITY(1,1) NOT NULL,
	[idpedidov] [bigint] NOT NULL,
	[idarticulo] [bigint] NOT NULL,
	[idiva] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precioventa] [float] NOT NULL,
	[descuento] [int] NULL,
 CONSTRAINT [PK_PedidoLinVentas] PRIMARY KEY CLUSTERED 
(
	[idPedidoLinV] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [PedidoLinVentas] ON
INSERT [PedidoLinVentas] ([idPedidoLinV], [idpedidov], [idarticulo], [idiva], [cantidad], [precioventa], [descuento]) VALUES (1,1,1,1,200,2.30,0)
INSERT [PedidoLinVentas] ([idPedidoLinV], [idpedidov], [idarticulo], [idiva], [cantidad], [precioventa], [descuento]) VALUES (2,2,1,1,1000,2.30,8)
SET IDENTITY_INSERT [PedidoLinVentas] OFF
/****** Object:  Table [FacturasVenta]    Script Date: 03/24/2015 19:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FacturasVentas](
	[idFacturaV] [bigint] IDENTITY(1,1) NOT NULL,
	[idpedidov] [bigint] NOT NULL,
	[idformapago] [int] NOT NULL,
	[pagado] [bit] NOT NULL,
	[fechacreacion] [smalldatetime] NOT NULL,
	[fechapago] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_FacturasVenta] PRIMARY KEY CLUSTERED 
(
	[idFacturaV] ASC
)
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [FacturasVentas] ON
INSERT [FacturasVentas] ([idFacturaV], [idpedidov], [idformapago], [pagado], [fechacreacion], [fechapago]) VALUES (1,1,2,1,CAST(0x9FA80000 AS SmallDateTime),CAST(0x9FA80000 AS SmallDateTime))
SET IDENTITY_INSERT [FacturasVentas] OFF
/********************************************************************************************/
/********************************************************************************************/
/****** Object:  ForeignKey [FK_Subcategoria_categoria]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Subcategoria]  WITH NOCHECK ADD  CONSTRAINT [FK_Subcategoria_categoria] FOREIGN KEY([idcategoria])
REFERENCES [Categoria] ([idCategoria])
GO
ALTER TABLE [Subcategoria] CHECK CONSTRAINT [FK_Subcategoria_categoria]
GO
/****** Object:  ForeignKey [FK_Oferta_articulo]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Oferta]  WITH NOCHECK ADD  CONSTRAINT [FK_Oferta_articulo] FOREIGN KEY([idarticulo])
REFERENCES [Articulo] ([idArticulo])
GO
ALTER TABLE [Oferta] CHECK CONSTRAINT [FK_Oferta_articulo]
GO
/****** Object:  ForeignKey [FK_PedidoCompras_proveedor]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoCompras]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoCompras_proveedor] FOREIGN KEY([idproveedor])
REFERENCES [Proveedores] ([idProveedor])
GO
ALTER TABLE [PedidoCompras] CHECK CONSTRAINT [FK_PedidoCompras_proveedor]
GO
/****** Object:  ForeignKey [FK_PedidoVentas_cliente]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoVentas_cliente] FOREIGN KEY([idcliente])
REFERENCES [Clientes] ([idCliente])
GO
ALTER TABLE [PedidoVentas] CHECK CONSTRAINT [FK_PedidoVentas_cliente]
GO
/****** Object:  ForeignKey [FK_Clientes_formapago]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_formapago] FOREIGN KEY([idformapago])
REFERENCES [Formapago] ([idFormaPago])
GO
ALTER TABLE [Clientes] CHECK CONSTRAINT [FK_Clientes_formapago]
GO
/****** Object:  ForeignKey [FK_Proveedor_formapago]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Proveedores]  WITH NOCHECK ADD  CONSTRAINT [FK_Proveedor_formapago] FOREIGN KEY([idformapago])
REFERENCES [FormaPago] ([idFormaPago])
GO
ALTER TABLE [Proveedores] CHECK CONSTRAINT [FK_Proveedor_formapago]
GO
/****** Object:  ForeignKey [FK_Articulo_categoria]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Articulo]  WITH NOCHECK ADD  CONSTRAINT [FK_Articulo_categoria] FOREIGN KEY([idcategoria])
REFERENCES [Categoria] ([idCategoria])
GO
ALTER TABLE [Articulo] CHECK CONSTRAINT [FK_Articulo_categoria]
GO
/****** Object:  ForeignKey [FK_Articulo_subcategoria]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Articulo]  WITH NOCHECK ADD  CONSTRAINT [FK_Articulo_subcategoria] FOREIGN KEY([idsubcategoria])
REFERENCES [Subcategoria] ([idsubcategoria])
GO
ALTER TABLE [Articulo] CHECK CONSTRAINT [FK_Articulo_subcategoria]
GO
/****** Object:  ForeignKey [FK_PedidoLinCompras_pedido]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinCompras]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoLinCompras_pedido] FOREIGN KEY([idpedidoc])
REFERENCES [PedidoCompras] ([idPedidoC])
GO
ALTER TABLE [PedidoLinCompras] CHECK CONSTRAINT [FK_PedidoLinCompras_pedido]
GO
/****** Object:  ForeignKey [FK_PedidoLinVentas_proveedor]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoLinVentas_pedidoV] FOREIGN KEY([idpedidov])
REFERENCES [PedidoVentas] ([idPedidoV])
GO
ALTER TABLE [PedidoLinVentas] CHECK CONSTRAINT [FK_PedidoLinVentas_pedidoV]
GO
/****** Object:  ForeignKey [FK_FacturaCompras_pedido]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [FacturasCompras]  WITH NOCHECK ADD  CONSTRAINT [FK_FacturasCompras_pedidoc] FOREIGN KEY([idpedidoc])
REFERENCES [PedidoCompras] ([idPedidoC])
GO
ALTER TABLE [FacturasCompras] CHECK CONSTRAINT [FK_FacturasCompras_pedidoc]
GO
/****** Object:  ForeignKey [FK_FacturaCompras_formapago]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [FacturasCompras]  WITH NOCHECK ADD  CONSTRAINT [FK_FacturasCompras_formapago] FOREIGN KEY([idformapago])
REFERENCES [FormaPago] ([idFormaPago])
GO
ALTER TABLE [FacturasCompras] CHECK CONSTRAINT [FK_FacturasCompras_formapago]
GO
/****** Object:  ForeignKey [FK_FacturaVentas_pedido]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [FacturasVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_FacturasVentas_pedidov] FOREIGN KEY([idpedidov])
REFERENCES [PedidoVentas] ([idPedidoV])
GO
ALTER TABLE [FacturasVentas] CHECK CONSTRAINT [FK_FacturasVentas_pedidov]
GO
/****** Object:  ForeignKey [FK_FacturaVentas_formapago]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [FacturasVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_FacturasVentas_formapago] FOREIGN KEY([idformapago])
REFERENCES [FormaPago] ([idFormaPago])
GO
ALTER TABLE [FacturasVentas] CHECK CONSTRAINT [FK_FacturasVentas_formapago]
GO
/****** Object:  ForeignKey [FK_PedidoLinCompras_iva]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinCompras]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoLinCompras_iva] FOREIGN KEY([idiva])
REFERENCES [Iva] ([idIva])
GO
ALTER TABLE [PedidoLinCompras] CHECK CONSTRAINT [FK_PedidoLinCompras_iva]
GO
/****** Object:  ForeignKey [FK_PedidoLinCompras_pedidoc]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinCompras]  WITH NOCHECK ADD CONSTRAINT [FK_PedidoLinCompras_pedidoc] FOREIGN KEY([idpedidoc])
REFERENCES [PedidoCompras] ([idPedidoC])
GO
ALTER TABLE [PedidoLinCompras] CHECK CONSTRAINT [FK_PedidoLinCompras_pedidoc]
GO
/****** Object:  ForeignKey [FK_PedidoLinVentas_articulo]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoLinVentas_articulo] FOREIGN KEY([idarticulo])
REFERENCES [Articulo] ([idArticulo])
GO
ALTER TABLE [PedidoLinVentas] CHECK CONSTRAINT [FK_PedidoLinVentas_articulo]
GO
/****** Object:  ForeignKey [FK_PedidoLinCompras_articulo]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinCompras]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoLinCompras_articulo] FOREIGN KEY([idarticulo])
REFERENCES [Articulo] ([idArticulo])
GO
ALTER TABLE [PedidoLinCompras] CHECK CONSTRAINT [FK_PedidoLinCompras_articulo]
GO
/****** Object:  ForeignKey [FK_PedidoLinVentas_iva]    Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoLinVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoLinVentas_iva] FOREIGN KEY([idiva])
REFERENCES [Iva] ([idIva])
GO
ALTER TABLE [PedidoLinVentas] CHECK CONSTRAINT [FK_PedidoLinVentas_iva]
GO
/****** Object:  ForeignKey [FK_PedidoVentas_Transportista]   Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [PedidoVentas]  WITH NOCHECK ADD  CONSTRAINT [FK_PedidoVentas_Transportista] FOREIGN KEY([idtransportista])
REFERENCES [Transportista] ([idTransportista])
GO
ALTER TABLE [PedidoVentas] CHECK CONSTRAINT [FK_PedidoVentas_Transportista]
GO
/****** Object:  ForeignKey [FK_Articulo_Proveedor]   Script Date: 03/24/2015 19:49:16 ******/
ALTER TABLE [Articulo]  WITH NOCHECK ADD  CONSTRAINT [FK_Articulo_Proveedor] FOREIGN KEY([idproveedor])
REFERENCES [Proveedores] ([idProveedor])
GO
ALTER TABLE [Articulo] CHECK CONSTRAINT [FK_Articulo_Proveedor]
GO