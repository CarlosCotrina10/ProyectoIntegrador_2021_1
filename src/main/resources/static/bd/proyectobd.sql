/*--------------> DEFINIENDO LA BD nuevatienda <--------------*/
-- BORRANDO LA BD
DROP DATABASE IF EXISTS nuevatienda;
-- CRENADO LA BD
CREATE DATABASE nuevatienda;
-- USANDO LA BD
USE nuevatienda;

/*--------------> CREANDO LAS TABLAS <--------------*/
-- CREANDO LA TABAL tb_tipos
DROP TABLE IF EXISTS tb_tipos;
CREATE TABLE tb_tipos(
	idTipo		int,
	descripcion varchar(15),
    CONSTRAINT PK_Tipo Primary Key(idTipo)
);

-- CREANDO LA TABAL tb_distritos
DROP TABLE IF EXISTS tb_distritos;
CREATE TABLE tb_distritos(
	codDistrito  int 		AUTO_INCREMENT,
	nomDistrito varchar(50),
	CONSTRAINT PK_Distrito Primary Key(codDistrito)
);


-- CREANDO LA TABAL tb_categorias
DROP TABLE IF EXISTS tb_categorias;
CREATE TABLE tb_categorias(
	idCategoria	int 		AUTO_INCREMENT,
	descripcion varchar(45),
    CONSTRAINT PK_Categoria Primary Key(idCategoria)
);

-- CREANDO LA TABAL tb_usuarios
DROP TABLE IF EXISTS tb_usuarios;
CREATE TABLE tb_usuarios(
	codUsuario  int 		AUTO_INCREMENT,
	nombre 		varchar(15),
	apellido 	varchar(25),
	codDistrito int,
	usuario  	varchar(45) NOT NULL,
	clave    	varchar(12),
	idTipo    	int DEFAULT 0,  -- 0:Cliente , 1:Administrador
	estado  	bit DEFAULT 1, -- 0:Inactivo , 1:Activo
	CONSTRAINT PK_Usuario Primary Key(codUsuario),
	CONSTRAINT FK_Usuario_Tipo Foreign Key(idTipo) REFERENCES tb_tipos(idTipo),
	CONSTRAINT FK_Usuario_Distrito Foreign Key(codDistrito) REFERENCES tb_distritos(codDistrito)
); 

/*-- CREANDO LA TABLA tb_cliente
DROP TABLE IF EXISTS tb_cliente;
CREATE TABLE tb_cliente(
	codcliente 	int 		AUTO_INCREMENT,
	nomdistrito varchar(50),
	apellido 	varchar(25),
	telefono 	int,
	dni 		int ,
	correo 		varchar(100),
	coddistrito int ,
	CONSTRAINT PK_Cliente Primary Key(codcliente),
	CONSTRAINT FK_Cliente_Distrito Foreign Key (codcliente) REFERENCES tb_distrito(coddistrito)
);*/

-- CREANDO LA TABAL tb_boleta
DROP TABLE IF EXISTS tb_boleta;
CREATE TABLE tb_boleta(
	numBoleta 	int auto_increment,
	codUsuario 	int,
	fecha 		datetime,
	total 		decimal(8,2),
	estado		int,         -- 0:Cancelado, 1:Proceso, 2:Pagado (o algo asi)
	CONSTRAINT PK_Boleta Primary Key(numBoleta),
	CONSTRAINT FK_Boleta Foreign Key(codUsuario) REFERENCES tb_usuarios(codUsuario)
);

-- CREANDO LA TABAL tb_productos
DROP TABLE IF EXISTS tb_productos;
CREATE TABLE tb_productos(
	idProd 		int 		AUTO_INCREMENT,
    nomProd 	varchar(300),
	descripcion varchar(900),
	stock 		int,
	precio 		decimal(8,2),
	idCategoria int,
    estado 		bit, -- 0:Descativado , 1:Activo
    urlImg varchar(900),
	CONSTRAINT PK_Productos Primary Key(idProd), 
	CONSTRAINT FK_Productos_Categoria Foreign Key(idCategoria) REFERENCES tb_categorias(idCategoria)
);


-- CREANDO LA TABAL tb_detalle_boleta
DROP TABLE IF EXISTS tb_detalle_boleta;
CREATE TABLE tb_detalle_boleta(
	numBoleta 	int auto_increment,
	idprod 	  int,
	cantidad  int,
	preciovta decimal (8,2),
    CONSTRAINT PK_Boleta_Producto Primary Key(numBoleta, idProd),
	CONSTRAINT FK_DetalleBoleta_BOLETA Foreign Key(numBoleta) REFERENCES tb_boleta(numBoleta),
	CONSTRAINT FK_DetalleBoleta_Producto Foreign Key(idprod) REFERENCES tb_productos(idProd)
);

/*--------------> INSERTANDO DATOS A LAS TABLAS <--------------*/
insert into tb_distritos values(null,'San Miguel');
insert into tb_distritos values(null,'Miraflores');
insert into tb_distritos values(null,'Surquillo');
insert into tb_distritos values(null,'San Isidro');
insert into tb_distritos values(null,'Magdalena');
insert into tb_distritos values(null,'Pueblo Libre');
insert into tb_distritos values(null,'Surco');

insert into tb_tipos values(0,'Cliente');
insert into tb_tipos values(1,'Administrador');

insert into tb_usuarios values(null, 'Carlos', 'Cotrina', 1, 'i201821721@hotmail.com', '123', 1, 1);
insert into tb_usuarios values(null, 'David', 'Antonio', 3, 'i201823296@hotmail.com', 'dac49', 1, 1);
insert into tb_usuarios values(null, 'Carlos', 'Garcia', 2, 'carlos@hotmail.com', '123',0,1);
insert into tb_usuarios values(null, 'Javier', 'Jimenez', 2, 'javier@hotmail.com', '456',0,1);
insert into tb_usuarios values(null, 'Paolo', 'Guerrero', 2, 'paolin@hotmail.com', '999',0,1);
insert into tb_usuarios values(null, 'Rodrigo', 'Garcia', 2, 'miguel@hotmail.com', '456',0,1);
insert into tb_usuarios values(null, 'Admin', 'istrador', 1, 'admin@hotmail.com', '123',1,1);
insert into tb_usuarios values (null,'jonatan','chipana',1,'correo@hotmail.com','123456',1,1);

insert into tb_categorias values(1,'Latops');
insert into tb_categorias values(2,'Tablets');
insert into tb_categorias values(3,'Impresoras');
insert into tb_categorias values(4,'Monitores');
insert into tb_categorias values(5,'Teclados y Mouses');
/*
insert into tb_productos values(null, 'Camisas Newport', 'Newport Camisa de vestir Hombre', 20, 19.90, 1, 1); -- 1
insert into tb_productos values(null, 'Pantalon Basement', 'Basement Pantalón Hombre', 15, 69.90, 1, 1);
insert into tb_productos values(null, 'Refrigeradora LG', 'LG - 438 Lts LT44WGP Inox', 50, 1519.90, 3, 1);
insert into tb_productos values(null, 'Televisor Samsung', 'Samsung UHD 50 UN50TU8000GXPE | CRYSTAL UHD | Serie TU8000',20,1799.90, 2, 1);
insert into tb_productos values(null, 'Mochila DOO AUSTRALIA', 'DOO AUSTRALIA Militar', 10, 69.90, 4, 1);
insert into tb_productos values(null, 'Casaca MOUNTAIN GEAR', 'MOUNTAIN GEAR Marino', 35, 119.90, 1, 1);
insert into tb_productos values(null, 'Headphones JBL', 'JBL - LIVE650BT IN EAR', 70, 799.90, 2, 1);
insert into tb_productos values(null, 'Consola Nintendo', 'Nintendo Switch Neon 1.1', 68, 1785.90, 2, 1);
insert into tb_productos values(null, 'Mouse Gamer', 'CYBERTEL Hyperion CYB M506', 43, 40.90, 2 , 1);
insert into tb_productos values(null, 'Secadora INDURAMA', 'INDURAMA Eléctrica 6Kg Blanca', 30, 599.90, 3 , 1); -- 10
insert into tb_productos values(null, 'Pelota Adidas', 'Adidas Pelota de Fútbol', 81, 34.90, 4 , 1);
insert into tb_productos values(null, 'Parlante JBL', 'Parlante Inalámbrico Go2 Black', 56, 129.90, 2 , 1);
insert into tb_productos values(null, 'Cooler Master', 'Kit Gaming Teclado + Mouse Masterset 111 Rgb', 94, 209.90, 2 , 1);
insert into tb_productos values(null, 'Pantalon KAPPA', 'Pantalón Slim Hombre', 71, 179.90, 1 , 1); 
insert into tb_productos values(null, 'Abrigos University Club', 'Abrigo Mujer', 39, 129.90, 1 , 1); -- 15
insert into tb_productos values(null, 'Botas ALDO', 'Botas Ferrawia', 45, 299.90, 4 , 1);
insert into tb_productos values(null, 'Afeitadora Philips', 'Afeitadora Inalámbrica Seco/Húmedo', 60, 99.90, 3 , 1);
insert into tb_productos values(null, 'Calefactor Recco', 'Estufa Eléctrica Infrared NSB-80L4', 10, 39.90, 4 , 1);
insert into tb_productos values(null, 'Butaca Basement Home ', 'Butaca Astro', 80, 300.90, 4 , 1);
insert into tb_productos values(null, 'Smartwatch Xiaomi', 'Mi Smart Band 4 + 10000 mAh Power Bank', 30, 248.90, 2 , 1); -- 20
insert into tb_productos values(null, 'Camisas Newport', 'Newport Camisa de vestir Hombre', 20, 19.90, 1, 0);*/

insert into tb_productos values(null, 'Laptop HP 240 G7, 14 HD, Intel Celeron N4100 1.10 GHz, 4GB DDR4, 1TB SATA.', 'Laptop HP 240 G7, 14 HD, Intel Celeron N4100 1.10 GHz, 4GB DDR4, 1TB SATA. Video Intel UHD Graphics 600, Intel Wireless LAN 802.11ac, Bluetooth, Cámara Web.', 20, 1750.00, 1, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F1.jpg?alt=media&token=dadacb30-4901-44a5-b5e1-398ffeddf459'); 
insert into tb_productos values(null, 'Laptop HP 245 G7 14 HD LED AMD Athlon Silver 3050U 2.3 / 3.2 GHz, 4GB DDR4, 500GB SATA', 'Laptop HP 245 G7 14 HD LED AMD Athlon Silver 3050U 2.3 / 3.2 GHz, 4GB DDR4, 500GB SATA Video AMD Radeon Graphics, LAN GbE, Realtek RTL8821CE 802.11a/b/g/n/ac (1x1) Wi-Fi y Bluetooth 4.2, Camara Web HD, SD Card Reader', 15, 1980.00, 1, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F2.jpg?alt=media&token=9927a7e4-6358-4e40-9083-d7b29a922019');
insert into tb_productos values(null, 'Laptop Lenovo V14 IIL, 14 HD, Intel Core i5-1035G1 1.00 / 3.60GHz, 8GB DDR4, 1TB SATA', 'Laptop Lenovo V14 IIL, 14 HD, Intel Core i5-1035G1 1.00 / 3.60GHz, 8GB DDR4, 1TB SATA Video Integrated Intel UHD Graphics, Wireless 802.11ac, Bluetooth 4.2, cámara web.', 50, 2837.00, 1, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F3.jpg?alt=media&token=c330467e-2c6b-4973-8cc0-15eaac7ee45e');
insert into tb_productos values(null, 'Laptop Dell Latitude 3410, 14 HD, Intel Core i5-10210U 1.60GHz, 4GB DDR4, 1TB SATA', 'Laptop Dell Latitude 3410, 14 HD, Intel Core i5-10210U 1.60GHz, 4GB DDR4, 1TB SATA Video Intel UHD Graphics, Intel WiFi 6 AX201 2x2 802.11ax, Bluetooth, Camara Web.Sistema Operativo Linux Ubuntu',20,2960.00, 1, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F4.jpg?alt=media&token=36ff3795-43eb-4131-8bd8-a1ce6645a7d3');
insert into tb_productos values(null, 'Tablet Advance Prime PR5850, 7 1024x600, Android 8.1, 3G, Dual SIM, 16GB, RAM 1GB.', 'Tablet Advance Prime PR5850, 7 1024x600, Android 8.1, 3G, Dual SIM, 16GB, RAM 1GB. Banda 3G (850/1900 MHz) / 2G (850/900/1800/1900 MHz), Conectividad Wi-Fi / Bluetooth, procesador MTK 8321 Quad-Core, memoria RAM 1GB, memoria ROM 16GB, ranura microSD (soporta hasta 32GB), conector 3.5mm, cámara posterior 2.0 MP, cámara frontal 0.3 MP, radio FM, reproduce audio y video.', 10, 315.00, 2, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F5.jpg?alt=media&token=1b5aa9c6-3730-4429-944f-43faba7ffda4');
insert into tb_productos values(null, 'Tablet Samsung Galaxy Tab A7, 10.4 WUXGA+ TFT - 2000 x 1200', 'Tablet Samsung Galaxy Tab A7, 10.4 WUXGA+ TFT - 2000 x 1200 Conectividad Wireless 802.11a/b/g/n/ac 2.4G+5GHz, Bluetooth v5.0, Wi-Fi Direct, Redes Moviles 4G (LTE), Procesador Octa-Core (2GHz, 1.8 GHz), Memoria 3 GB RAM, Almacenamiento interno 32 GB ROM, Ranura MicroSD (soporta hasta 1TB), Cámara posterior o principal 8.0 MP, Cámara frontal 5.0 MP, Sensores Acelerómetro, Giroscopio, Localizacion GPS, Glonass, Beidou, Galileo, Bateria 7040 mAh, reproduce audio y video.', 35, 1320.00, 2, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F6.jpg?alt=media&token=ca304efa-3f08-4b44-bc1d-9d29c54ead5d');
insert into tb_productos values(null, 'Tablet Advance SmartPad SP4702, 10.1 IPS 1920*1200, 32GB, 3GB RAM, Android 9', 'Tablet Advance SmartPad SP4702, 10.1 IPS 1920*1200, 32GB, 3GB RAM, Android 9 Procesador SC9863 Octa-Core, ranura microSD (hasta 32GB), 4G, Conectividad Wireless 802.11 b/g/n, Bluetooth, GPS, Cámara Frontal 2.0MP / Cámara Posterior 5.0MP Flash LED, Metal Case.', 70, 625.00, 2, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F7.jpg?alt=media&token=2cc730d8-eb25-4c4f-9dbd-b5605df73ce5');
insert into tb_productos values(null, 'Tablet Advance SmartPad SP5702, 10.1 IPS 1920*1200, 32GB, 4GB RAM, Android 9', 'Tablet Advance SmartPad SP5702, 10.1 IPS 1920*1200, 32GB, 4GB RAM, Android 9 Procesador SC9863 Octa-Core, ranura microSD (hasta 32GB), Conectividad Wireless 802.11 b/g/n, Bluetooth, GPS, Cámara Frontal 2.0MP / Cámara Posterior 5.0MP Flash LED, Metal Case.', 68, 690.00, 2, 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F8.jpg?alt=media&token=4a759bc2-a331-41d2-bfbd-625c5666b108');
insert into tb_productos values(null, 'Multifuncional de tinta Epson WorkForce Pro WF-C878R , imprime/escanea/copia/fax/WiFi.', 'Multifuncional de tinta Epson WorkForce Pro WF-C878R , imprime/escanea/copia/fax/WiFi. Imprime 25 (Negro) / 24 (Color)ppm (simplex) / 17 (Negro) / 16 (Color)ppm (duplex) 4800 x 1200 dpi, escaner de cama plana a color/ADF automático de 2 caras de 600 dpi / 1200 dpi x 2400 dpi, 1 bandeja estándar y 3 bandejas opcionales - 250 hojas estándar, alimentación trasera 85 hojas (1.835 hojas total con las 3 bandejas opcionales de 500 hojas, 10 sobres. Conectividad SuperSpeed USB 3.0 / LAN / Wireless 802.11 b/g/n/a/ac, AC 100 V - 240 V', 43, 8400.00, 3 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F9.jpg?alt=media&token=904fe314-1126-4a3a-8581-2a041a064b8e');
insert into tb_productos values(null, 'Multifuncional de tinta Epson EcoTank L8160, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0', 'Multifuncional de tinta Epson EcoTank L8160, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0 Imprime 32/32 ppm (negro/color) a 5760 dpi x 1440 dpi, Escanea (Resolución óptica/máxima) a 1.200 dpi / 1.200 dpi x 4.800 dpi, Copia en A4 / Carta con resolucion maxima de 600 dpi x 600 dpi , Bandeja frontal 1: hasta 100 hojas (A4/LTR/LGL); bandeja frontal 2: hasta 20 fotos (hasta 5" x 7"); alimentación trasera: hasta 50 hojas (hasta A3+) papel normal y bond o 20 hojas en papel fotografco, Bandeja para impresión de CD & DVD, Conectividad USB 2.0 / Ethernet 10/100 , Wi-Fi 4 (IEEE 802.11 b/g/n), Voltaje de alimentación: AC 220V-240V/50-60 Hz.', 30, 2210.00, 3 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F10.jpg?alt=media&token=b5d4c19b-e4ea-450c-b883-ce940f92d8cf'); -- 10
insert into tb_productos values(null, 'PeMultifuncional de tinta Epson EcoTank L8180, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0', 'Multifuncional de tinta Epson EcoTank L8180, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0 Imprime 32/32 ppm (negro/color) a 5760 dpi x 1440 dpi, Escanea (Resolución óptica/máxima) a 1.200 dpi / 1.200 dpi x 4.800 dpi, Copia en A4 / Carta con resolucion maxima de 600 dpi x 600 dpi , Bandeja frontal 1: hasta 100 hojas (A4/LTR/LGL); bandeja frontal 2: hasta 20 fotos (hasta 5" x 7"); alimentación trasera: hasta 50 hojas (hasta A3+) papel normal y bond o 5 hojas en papel fotografco, Bandeja para impresión de CD & DVD, Conectividad USB 2.0 / Ethernet 10/100 , Wi-Fi 4 (IEEE 802.11 b/g/n), Voltaje de alimentación: AC 220V-240V/50-60 Hz.', 81, 3800.00, 3 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F11.jpg?alt=media&token=7fc932ef-a5ef-4183-b57a-5e507d61783f');
insert into tb_productos values(null, 'IMPRESORA WORKFORCE PRO C579R', 'IMPRESORA WORKFORCE PRO C579R', 56, 3900.00, 3 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F12.jpg?alt=media&token=e6b74a7e-fe8e-4847-aca0-462b69c34d07');
insert into tb_productos values(null, 'Monitor LG 25UM58, 25" IPS, UltraWide, 2560 x 1080, HDMI.', 'Monitor LG 25UM58, 25" IPS, UltraWide, 2560 x 1080, HDMI.', 94, 755.00, 4 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F13.jpg?alt=media&token=f22faf5c-5562-4ae3-8361-8e06a0a81dbe');
insert into tb_productos values(null, 'Monitor LG 24GL600F, 23.6", 1920x1080, HDMI / DisplayPort / Audio.', 'Monitor LG 24GL600F, 23.6", 1920x1080, HDMI / DisplayPort / Audio.', 71, 939.00, 4 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F14.jpg?alt=media&token=c5793da1-7550-44d8-8fb2-a44f030c38ca'); 
insert into tb_productos values(null, 'Monitor LG 27UL500-W, 27" IPS, 3840x2160, 4K UHD HDR, HDMI / DisplayPort / Audio..', 'Monitor LG 27UL500-W, 27" IPS, 3840x2160, 4K UHD HDR, HDMI / DisplayPort / Audio.. Relación de aspecto 16:9, relación de contraste 1000:1, tiempo de respuesta 5 ms, auto-voltaje 100 - 240VAC.', 39, 1500.00, 4 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F15.jpg?alt=media&token=f0733757-e206-4776-b097-10a6c6910c90'); -- 15
insert into tb_productos values(null, 'Monitor Dell UltraSharp U2719D, 27", 2560 x 1440, QHD, DP/HDMI/USB 3.0.', 'Monitor Dell UltraSharp U2719D, 27", 2560 x 1440, QHD, DP/HDMI/USB 3.0. Relación de aspecto 16:9, brillo 350 cd/m², contraste 1 000:1, tiempo de respuesta 8 ms (GtG), USB 3.0, auto-voltaje 100 - 240VAC.', 45, 2109.00, 4 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F16.jpg?alt=media&token=fca6ead3-728b-4519-a1ff-f503296e4aca');
insert into tb_productos values(null, 'Kit Inalámbrico Teclado + Mouse Teros TE4031, 2.4GHz, Receptor nano USB, Negro.', 'Kit Inalámbrico Teclado + Mouse Teros TE4031, 2.4GHz, Receptor nano USB, Negro. Teclado: Diseño Estandar, Idioma Español, teclas de accion suave.Mouse: Sensor Optico, 1000 DPI, 2 botones, Scroll.Bateria de larga duracion de hasta 15 meses, conexion de hasta 10 mts.', 60, 31.00, 5 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F17.jpg?alt=media&token=707d9566-5218-4955-a1fc-1deab2e410b0');
insert into tb_productos values(null, 'Kit Teclado y Mouse inalámbrico Microsoft Confort Desktop 5050, Receptor USB, 2.4 GHz.', 'Kit Teclado y Mouse inalámbrico Microsoft Confort Desktop 5050, Receptor USB, 2.4 GHz. Diseño Curvo, teclado Multimedia, teclas de acceso rápido personalizables, reposa-muñecas integrado.Mouse óptico, tecnología BlueTrack, resolución: 988 dpi, 2 botones y rueda Scroll.Presentación en caja.', 10, 250.00, 5 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F18.jpg?alt=media&token=1dc6d00e-8e49-4301-b18a-ce23774f442b');
insert into tb_productos values(null, 'Kit Teclado y Mouse Teros TED8700, USB, acabado elegante, Negro, Español, Óptico.', 'Kit Teclado y Mouse Teros TED8700, USB, acabado elegante, Negro, Español, Óptico. Teclado: Diseño elegante, tipo estandar, idioma Español.Mouse: sensor óptico, 2 botones, rueda Scroll, 1000 DPI.', 80, 23.00, 5 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F19.jpg?alt=media&token=9b270eb0-dc81-4d02-8a0d-5ad23161baf2');
insert into tb_productos values(null, 'Kit de teclado y mouse Gamer Advance ADV-4150, Retro-Iluminado USB, negro.', 'Kit de teclado y mouse Gamer Advance ADV-4150, Retro-Iluminado USB, negro. Teclado Retro-Iluminado, USB.Mouse óptico, 4 botones, USB.', 30, 48.00, 5 , 1,'https://firebasestorage.googleapis.com/v0/b/proyectointegrador2021-bb331.appspot.com/o/productos%2Fimg%2F20.jpg?alt=media&token=1a59a77d-1608-4438-a784-ac2eeed784ce'); -- 20

insert into tb_boleta values(1, 3, '2020-06-14', 999, 1);
insert into tb_detalle_boleta values(1, 17, 10, 99.90);

insert into tb_boleta values(2, 4, '2020-06-26', 199, 1);
insert into tb_detalle_boleta values(2, 1, 10, 19.90);

insert into tb_boleta values(3, 5, '2020-07-03', 599.90, 1);
insert into tb_detalle_boleta values(3, 10, 1, 599.90);

insert into tb_boleta values(4, 6, '2020-07-11', 999, 1);
insert into tb_detalle_boleta values(4, 15, 1, 129.90);

