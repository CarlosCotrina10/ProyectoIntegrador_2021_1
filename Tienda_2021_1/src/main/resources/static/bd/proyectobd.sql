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
	numBoleta 	char(5),
	codUsuario 	int,
	fecha 		datetime,
	total 		decimal(8,2),
	CONSTRAINT PK_Boleta Primary Key(numBoleta),
	CONSTRAINT FK_Boleta Foreign Key(codUsuario) REFERENCES tb_usuarios(codUsuario)
);

-- CREANDO LA TABAL tb_productos
DROP TABLE IF EXISTS tb_productos;
CREATE TABLE tb_productos(
	idProd 		int 		AUTO_INCREMENT,
    nomProd 	varchar(45),
	descripcion varchar(200),
	stock 		int,
	precio 		decimal(8,2),
	idCategoria int,
    estado 		bit, -- 0:Descativado , 1:Activo
	CONSTRAINT PK_Productos Primary Key(idProd), 
	CONSTRAINT FK_Productos_Categoria Foreign Key(idCategoria) REFERENCES tb_categorias(idCategoria)
);

select * from tb_productos;
-- CREANDO LA TABAL tb_detalle_boleta
DROP TABLE IF EXISTS tb_detalle_boleta;
CREATE TABLE tb_detalle_boleta(
	numBoleta char(5),
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

insert into tb_usuarios values(null, 'Carlos', 'Cotrina', 1, 'i201821721', '123', 1, 1);
insert into tb_usuarios values(null, 'David', 'Antonio', 3, 'i201823296', 'dac49', 1, 1);
insert into tb_usuarios values(null, 'Carlos', 'Garcia', 2, 'carlos', '123',0,1);
insert into tb_usuarios values(null, 'Javier', 'Jimenez', 2, 'javier', '456',0,1);
insert into tb_usuarios values(null, 'Paolo', 'Guerrero', 2, 'paolin', '999',0,1);
insert into tb_usuarios values(null, 'Rodrigo', 'Garcia', 2, 'miguel', '456',0,1);
insert into tb_usuarios values(null, 'Admin', 'istrador', 1, 'admin', '123',1,1);
insert into tb_usuarios values(null, 'Admin', 'istrador', 1, 'admin', '123',1,0);
select * from tb_usuarios where estado = 1;
insert into tb_categorias values(1,'Ropa');
insert into tb_categorias values(2,'Tecnologia');
insert into tb_categorias values(3,'Electrodomesticos');
insert into tb_categorias values(4,'Otros');
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

insert into tb_productos values(null, 'Laptop HP 240 G7, 14" HD, Intel Celeron N4100 1.10 GHz, 4GB DDR4, 1TB SATA.', 'Laptop HP 240 G7, 14" HD, Intel Celeron N4100 1.10 GHz, 4GB DDR4, 1TB SATA. Video Intel UHD Graphics 600, Intel Wireless LAN 802.11ac, Bluetooth, Cámara Web.', 20, 1750.00, 1, 1); -- 1
insert into tb_productos values(null, 'Laptop HP 245 G7 14" HD LED AMD Athlon Silver 3050U 2.3 / 3.2 GHz, 4GB DDR4, 500GB SATA', 'Laptop HP 245 G7 14" HD LED AMD Athlon Silver 3050U 2.3 / 3.2 GHz, 4GB DDR4, 500GB SATA Video AMD Radeon Graphics, LAN GbE, Realtek RTL8821CE 802.11a/b/g/n/ac (1x1) Wi-Fi y Bluetooth 4.2, Camara Web HD, SD Card Reader', 15, 1980.00, 1, 1);
insert into tb_productos values(null, 'Laptop Lenovo V14 IIL, 14" HD, Intel Core i5-1035G1 1.00 / 3.60GHz, 8GB DDR4, 1TB SATA', 'Laptop Lenovo V14 IIL, 14" HD, Intel Core i5-1035G1 1.00 / 3.60GHz, 8GB DDR4, 1TB SATA Video Integrated Intel UHD Graphics, Wireless 802.11ac, Bluetooth 4.2, cámara web.', 50, 2837.00, 3, 1);
insert into tb_productos values(null, 'Laptop Dell Latitude 3410, 14" HD, Intel Core i5-10210U 1.60GHz, 4GB DDR4, 1TB SATA', 'Laptop Dell Latitude 3410, 14" HD, Intel Core i5-10210U 1.60GHz, 4GB DDR4, 1TB SATA Video Intel UHD Graphics, Intel WiFi 6 AX201 2x2 802.11ax, Bluetooth, Camara Web.Sistema Operativo Linux Ubuntu',20,2960.00, 2, 1);
insert into tb_productos values(null, 'Tablet Advance Prime PR5850, 7" 1024x600, Android 8.1, 3G, Dual SIM, 16GB, RAM 1GB.', 'Tablet Advance Prime PR5850, 7" 1024x600, Android 8.1, 3G, Dual SIM, 16GB, RAM 1GB. Banda 3G (850/1900 MHz) / 2G (850/900/1800/1900 MHz), Conectividad Wi-Fi / Bluetooth, procesador MTK 8321 Quad-Core, memoria RAM 1GB, memoria ROM 16GB, ranura microSD (soporta hasta 32GB), conector 3.5mm, cámara posterior 2.0 MP, cámara frontal 0.3 MP, radio FM, reproduce audio y video.', 10, 315.00, 4, 1);
insert into tb_productos values(null, 'Tablet Samsung Galaxy Tab A7, 10.4" WUXGA+ TFT - 2000 x 1200', 'Tablet Samsung Galaxy Tab A7, 10.4" WUXGA+ TFT - 2000 x 1200 Conectividad Wireless 802.11a/b/g/n/ac 2.4G+5GHz, Bluetooth v5.0, Wi-Fi Direct, Redes Moviles 4G (LTE), Procesador Octa-Core (2GHz, 1.8 GHz), Memoria 3 GB RAM, Almacenamiento interno 32 GB ROM, Ranura MicroSD (soporta hasta 1TB), Cámara posterior o principal 8.0 MP, Cámara frontal 5.0 MP, Sensores Acelerómetro, Giroscopio, Localizacion GPS, Glonass, Beidou, Galileo, Bateria 7040 mAh, reproduce audio y video.', 35, 1320.00, 1, 1);
insert into tb_productos values(null, 'Tablet Advance SmartPad SP4702, 10.1" IPS 1920*1200, 32GB, 3GB RAM, Android 9', 'Tablet Advance SmartPad SP4702, 10.1" IPS 1920*1200, 32GB, 3GB RAM, Android 9 Procesador SC9863 Octa-Core, ranura microSD (hasta 32GB), 4G, Conectividad Wireless 802.11 b/g/n, Bluetooth, GPS, Cámara Frontal 2.0MP / Cámara Posterior 5.0MP Flash LED, Metal Case.', 70, 625.00, 2, 1);
insert into tb_productos values(null, 'Tablet Advance SmartPad SP5702, 10.1" IPS 1920*1200, 32GB, 4GB RAM, Android 9', 'Tablet Advance SmartPad SP5702, 10.1" IPS 1920*1200, 32GB, 4GB RAM, Android 9 Procesador SC9863 Octa-Core, ranura microSD (hasta 32GB), Conectividad Wireless 802.11 b/g/n, Bluetooth, GPS, Cámara Frontal 2.0MP / Cámara Posterior 5.0MP Flash LED, Metal Case.', 68, 690.00, 2, 1);
insert into tb_productos values(null, 'Multifuncional de tinta Epson WorkForce Pro WF-C878R , imprime/escanea/copia/fax/WiFi.', 'Multifuncional de tinta Epson WorkForce Pro WF-C878R , imprime/escanea/copia/fax/WiFi. Imprime 25 (Negro) / 24 (Color)ppm (simplex) / 17 (Negro) / 16 (Color)ppm (duplex) 4800 x 1200 dpi, escaner de cama plana a color/ADF automático de 2 caras de 600 dpi / 1200 dpi x 2400 dpi, 1 bandeja estándar y 3 bandejas opcionales - 250 hojas estándar, alimentación trasera 85 hojas (1.835 hojas total con las 3 bandejas opcionales de 500 hojas, 10 sobres. Conectividad SuperSpeed USB 3.0 / LAN / Wireless 802.11 b/g/n/a/ac, AC 100 V - 240 V', 43, 8400.00, 2 , 1);
insert into tb_productos values(null, 'Multifuncional de tinta Epson EcoTank L8160, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0', 'Multifuncional de tinta Epson EcoTank L8160, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0 Imprime 32/32 ppm (negro/color) a 5760 dpi x 1440 dpi, Escanea (Resolución óptica/máxima) a 1.200 dpi / 1.200 dpi x 4.800 dpi, Copia en A4 / Carta con resolucion maxima de 600 dpi x 600 dpi , Bandeja frontal 1: hasta 100 hojas (A4/LTR/LGL); bandeja frontal 2: hasta 20 fotos (hasta 5" x 7"); alimentación trasera: hasta 50 hojas (hasta A3+) papel normal y bond o 20 hojas en papel fotografco, Bandeja para impresión de CD & DVD, Conectividad USB 2.0 / Ethernet 10/100 , Wi-Fi 4 (IEEE 802.11 b/g/n), Voltaje de alimentación: AC 220V-240V/50-60 Hz.', 30, 2210.00, 3 , 1); -- 10
insert into tb_productos values(null, 'PeMultifuncional de tinta Epson EcoTank L8180, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0', 'Multifuncional de tinta Epson EcoTank L8180, imprime/escanea/copia, LAN/Wi-Fi/USB 2.0 Imprime 32/32 ppm (negro/color) a 5760 dpi x 1440 dpi, Escanea (Resolución óptica/máxima) a 1.200 dpi / 1.200 dpi x 4.800 dpi, Copia en A4 / Carta con resolucion maxima de 600 dpi x 600 dpi , Bandeja frontal 1: hasta 100 hojas (A4/LTR/LGL); bandeja frontal 2: hasta 20 fotos (hasta 5" x 7"); alimentación trasera: hasta 50 hojas (hasta A3+) papel normal y bond o 5 hojas en papel fotografco, Bandeja para impresión de CD & DVD, Conectividad USB 2.0 / Ethernet 10/100 , Wi-Fi 4 (IEEE 802.11 b/g/n), Voltaje de alimentación: AC 220V-240V/50-60 Hz.', 81, 3800.00, 4 , 1);
insert into tb_productos values(null, 'IMPRESORA WORKFORCE PRO C579R', 'IMPRESORA WORKFORCE PRO C579R', 56, 3900.00, 2 , 1);
insert into tb_productos values(null, 'Monitor LG 25UM58, 25" IPS, UltraWide, 2560 x 1080, HDMI.', 'Monitor LG 25UM58, 25" IPS, UltraWide, 2560 x 1080, HDMI.', 94, 755.00, 2 , 1);
insert into tb_productos values(null, 'Monitor LG 24GL600F, 23.6", 1920x1080, HDMI / DisplayPort / Audio.', 'Monitor LG 24GL600F, 23.6", 1920x1080, HDMI / DisplayPort / Audio.', 71, 939.00, 1 , 1); 
insert into tb_productos values(null, 'Monitor LG 27UL500-W, 27" IPS, 3840x2160, 4K UHD HDR, HDMI / DisplayPort / Audio..', 'Monitor LG 27UL500-W, 27" IPS, 3840x2160, 4K UHD HDR, HDMI / DisplayPort / Audio.. Relación de aspecto 16:9, relación de contraste 1000:1, tiempo de respuesta 5 ms, auto-voltaje 100 - 240VAC.', 39, 1500.00, 1 , 1); -- 15
insert into tb_productos values(null, 'Monitor Dell UltraSharp U2719D, 27", 2560 x 1440, QHD, DP/HDMI/USB 3.0.', 'Monitor Dell UltraSharp U2719D, 27", 2560 x 1440, QHD, DP/HDMI/USB 3.0. Relación de aspecto 16:9, brillo 350 cd/m², contraste 1 000:1, tiempo de respuesta 8 ms (GtG), USB 3.0, auto-voltaje 100 - 240VAC.', 45, 2109.00, 4 , 1);
insert into tb_productos values(null, 'Kit Inalámbrico Teclado + Mouse Teros TE4031, 2.4GHz, Receptor nano USB, Negro.', 'Kit Inalámbrico Teclado + Mouse Teros TE4031, 2.4GHz, Receptor nano USB, Negro. Teclado: Diseño Estandar, Idioma Español, teclas de accion suave.Mouse: Sensor Optico, 1000 DPI, 2 botones, Scroll.Bateria de larga duracion de hasta 15 meses, conexion de hasta 10 mts.', 60, 31.00, 3 , 1);
insert into tb_productos values(null, 'Kit Teclado y Mouse inalámbrico Microsoft Confort Desktop 5050, Receptor USB, 2.4 GHz.', 'Kit Teclado y Mouse inalámbrico Microsoft Confort Desktop 5050, Receptor USB, 2.4 GHz. Diseño Curvo, teclado Multimedia, teclas de acceso rápido personalizables, reposa-muñecas integrado.Mouse óptico, tecnología BlueTrack, resolución: 988 dpi, 2 botones y rueda Scroll.Presentación en caja.', 10, 250.00, 4 , 1);
insert into tb_productos values(null, 'Kit Teclado y Mouse Teros TED8700, USB, acabado elegante, Negro, Español, Óptico.', 'Kit Teclado y Mouse Teros TED8700, USB, acabado elegante, Negro, Español, Óptico. Teclado: Diseño elegante, tipo estandar, idioma Español.Mouse: sensor óptico, 2 botones, rueda Scroll, 1000 DPI.', 80, 23.00, 4 , 1);
insert into tb_productos values(null, 'Kit de teclado y mouse Gamer Advance ADV-4150, Retro-Iluminado USB, negro.', 'Kit de teclado y mouse Gamer Advance ADV-4150, Retro-Iluminado USB, negro. Teclado Retro-Iluminado, USB.Mouse óptico, 4 botones, USB.', 30, 48.00, 2 , 1); -- 20


insert into tb_boleta values('B0001', 3, '2020-06-14', 999);
insert into tb_detalle_boleta values('B0001', 17, 10, 99.90);

insert into tb_boleta values('B0002', 4, '2020-06-26', 199);
insert into tb_detalle_boleta values('B0002', 1, 10, 19.90);

insert into tb_boleta values('B0003', 5, '2020-07-03', 599.90);
insert into tb_detalle_boleta values('B0003', 10, 1, 599.90);

insert into tb_boleta values('B0004', 6, '2020-07-11', 999);
insert into tb_detalle_boleta values('B0004', 15, 1, 129.90);


/*--------------> CREANDO USP'S <--------------*/
/*
DROP PROCEDURE IF EXISTS sp_listar_prod;
DELIMITER //
CREATE PROCEDURE sp_listar_prod (
	est int
)
BEGIN
	select p.*, c.descripcion
	from tb_productos p  
	join tb_categorias c 
	on p.idcategoria = c.idcategoria 
    where p.estado = est;
END //
DELIMITER ;

call sp_listar_prod (1);

DROP PROCEDURE IF EXISTS sp_listar_prod_cod;
DELIMITER //
CREATE PROCEDURE sp_listar_prod_cod (
	codigo int, 
    est int
)
BEGIN
	select p.*, c.descripcion
	from tb_productos p  
	join tb_categorias c 
	on p.idcategoria = c.idcategoria
    where p.idcategoria = codigo
    and p.estado = est;
END //
DELIMITER ;

call sp_listar_prod_cod (1,1);

DROP PROCEDURE IF EXISTS sp_listar_usu;
DELIMITER //
CREATE PROCEDURE sp_listar_usu (
	est int
)
BEGIN
	select u.*, t.descripcion, d.nomdistrito
	from tb_usuarios u  
	join tb_tipos t 
	on u.idTipo = t.idTipo 
    join tb_distritos d
    on d.codDistrito = u.codDistrito
    where u.estado = est;
END //
DELIMITER ;

call sp_listar_usu (1);

DROP PROCEDURE IF EXISTS sp_listar_usu_tip;
DELIMITER //
CREATE PROCEDURE sp_listar_usu_tip (
	est int,
    tip int
   
)
BEGIN
	select u.*, t.descripcion, d.nomdistrito
	from tb_usuarios u  
	join tb_tipos t 
	on u.idTipo = t.idTipo 
    join tb_distritos d
    on d.codDistrito = u.codDistrito
    where u.idTipo = tip
    and u.estado = est;
END //
DELIMITER ;

call sp_listar_usu_tip (1,1);

DROP PROCEDURE IF EXISTS sp_listar_usu_dis;
DELIMITER //
CREATE PROCEDURE sp_listar_usu_dis (
	est int,
    dis int 
)
BEGIN
	select u.*, t.descripcion, d.nomdistrito
	from tb_usuarios u  
	join tb_tipos t 
	on u.idTipo = t.idTipo 
    join tb_distritos d
    on d.codDistrito = u.codDistrito
    where d.codDistrito = dis
    and u.estado = est;
END //
DELIMITER ;

call sp_listar_usu_dis (1,1);

DROP PROCEDURE IF EXISTS sp_listar_usu_dis_tip;
DELIMITER //
CREATE PROCEDURE sp_listar_usu_dis_tip (
	est int,
    dis int, 
    tip int    
)
BEGIN
	select u.*, t.descripcion, d.nomdistrito
	from tb_usuarios u  
	join tb_tipos t 
	on u.idTipo = t.idTipo 
    join tb_distritos d
    on d.codDistrito = u.codDistrito
    where d.codDistrito = dis
    and u.estado = est
    and u.idTipo = tip;
END //
DELIMITER ;

call sp_listar_usu_dis_tip (1,1,1);

DROP PROCEDURE IF EXISTS sp_listar_tienda;
DELIMITER //
CREATE PROCEDURE sp_listar_tienda ()
BEGIN
	select p.*, c.descripcion
	from tb_productos p  
	join tb_categorias c 
	on p.idcategoria = c.idcategoria 
    where p.stock > 0
    and estado = 1;
END //
DELIMITER ;

call sp_listar_tienda ();

DROP PROCEDURE IF EXISTS sp_listar_tienda_cod;
DELIMITER //
CREATE PROCEDURE sp_listar_tienda_cod (
	cod int
)
BEGIN
	select p.*, c.descripcion
	from tb_productos p  
	join tb_categorias c 
	on p.idcategoria = c.idcategoria 
    where p.estado = 1
    and p.stock > 0
    and p.idcategoria = cod;
END //
DELIMITER ;

call sp_listar_tienda_cod (1);

DELIMITER $$
DROP FUNCTION IF EXISTS initcap $$
CREATE FUNCTION `initcap`(x char(30)) RETURNS char(30) CHARSET utf8
BEGIN
SET @str='';
SET @l_str='';
WHILE x REGEXP ' ' DO
SELECT SUBSTRING_INDEX(x, ' ', 1) INTO @l_str;
SELECT SUBSTRING(x, LOCATE(' ', x)+1) INTO x;
SELECT CONCAT(@str, ' ', CONCAT(UPPER(SUBSTRING(@l_str,1,1)),LOWER(SUBSTRING(@l_str,2)))) INTO @str;
END WHILE;
RETURN LTRIM(CONCAT(@str, ' ', CONCAT(UPPER(SUBSTRING(x,1,1)),LOWER(SUBSTRING(x,2)))));
END$$
DELIMITER ;
*/
-- USP'S DE REGISTRO, ACTUALIZACIÓN
#PRODUCTOS
-- > Listar PRODUCTOS
DROP PROCEDURE IF EXISTS sp_listarProductos;
DELIMITER $$
CREATE PROCEDURE sp_listarProductos (
	codigo int, 
	est int
)
BEGIN
    Select p.*, c.descripcion
	From tb_productos p  
	Join tb_categorias c on p.idcategoria = c.idcategoria
    Where (p.idcategoria = codigo or codigo = 0) and p.estado = est;
END $$
DELIMITER ;

call sp_listarProductos(0,1);

-- > REGISTRAR PRODUCTO
DROP PROCEDURE IF EXISTS USP_registrarProducto;
DELIMITER $$
CREATE PROCEDURE USP_registrarProducto(
prod varchar(45),
descrip varchar(200),
stck int,
prec decimal(8,2),
categoria int,
est bit
)
BEGIN
	insert into tb_productos(nomProd,descripcion,stock,precio,idCategoria,estado)
    values (prod,descrip,stck,prec,categoria,est);
END $$
DELIMITER ;

CALL USP_registrarProducto('Play Station 5', 'Consola de videoJuegos versión 5', 30, 20.75, 3 , 1);

-- > Actualizar PRODUCTO
DROP PROCEDURE IF EXISTS USP_actualizarProducto;
DELIMITER $$
CREATE PROCEDURE USP_actualizarProducto(
prod varchar(45),
descrip varchar(200),
stck int,
prec decimal(8,2),
categoria int,
est bit,
id int
)
BEGIN
    Update tb_productos
	Set  nomprod = prod, descripcion = descrip, stock = stck, precio = prec, idcategoria = categoria, estado = est
	Where idprod = id;
END $$
DELIMITER ;

CALL USP_actualizarProducto('Play Station 5', 'Consola de videoJuegos versión 5.1', 30, 20.75, 3 , 1,23);

-- > CAMBIAR ESTADO PRODUCTO
DROP PROCEDURE IF EXISTS USP_cambiarEstadoProducto;
DELIMITER $$
CREATE PROCEDURE USP_cambiarEstadoProducto(
est bit,
id int
)
BEGIN
	Update tb_productos
	Set estado = est
	Where idprod = id;
END $$
DELIMITER ;

CALL USP_cambiarEstadoProducto(0,23);

-- > BUSCAR PRODUCTO
DROP PROCEDURE IF EXISTS USP_buscarProducto;
DELIMITER $$
CREATE PROCEDURE USP_buscarProducto(
id int
)
BEGIN
	Select * 
    From tb_productos 
    Where idprod = id;
END $$
DELIMITER ;

CALL USP_buscarProducto(14);

#CATEGORIA
-- > LISTAR CATEGORIAS
DROP PROCEDURE IF EXISTS sp_listarCategoria;
DELIMITER $$
CREATE PROCEDURE sp_listarCategoria()
BEGIN
	Select *
    From tb_categorias;
END $$
DELIMITER ;
CALL sp_listarCategoria();

#REPORTES
-- > LISTAR CANTIDAD DE STOCK
DROP PROCEDURE IF EXISTS sp_listarStock;
DELIMITER //
CREATE PROCEDURE sp_listarStock(
	sto int
)
BEGIN
	select p.*, c.descripcion as categoria
	from tb_productos p  
	join tb_categorias c 
	on p.idcategoria = c.idcategoria
    where stock <= sto
    order by stock asc;
END //
DELIMITER ;
CALL sp_listarStock(20);

-- > LISTAR VENTAS POR MES
DROP PROCEDURE IF EXISTS sp_listarVentas; -- por mes #CONSULTAR
DELIMITER //
CREATE PROCEDURE sp_listarVentas(
	anio int
)
BEGIN
	select (DATE_FORMAT(b.fecha, "%M")) mes,year(b.fecha) anio, sum(b.total) as total, sum(db.cantidad) as productos, count(distinct(b.codUsuario)) clientes, users.users
	from tb_boleta b
    join tb_detalle_boleta db
    on db.numBoleta = b.numBoleta,
	(select count(codUsuario) as users from tb_usuarios
     where idTipo = 0) as users
	where year(b.fecha) = anio
	group by mes; 
END //
DELIMITER ;
CALL sp_listarVentas(2020);

-- > LISTAR VENTAS DE PRODUCTO POR MES
DROP PROCEDURE IF EXISTS sp_listarProductosVentas; -- por mes
DELIMITER //
CREATE PROCEDURE sp_listarProductosVentas(
	fecha1 date,
    fecha2 date
)
BEGIN
	select p.idprod,
    p.nomprod as nombre, 
    p.stock, 
    c.descripcion as categoria,
    sum(db.cantidad) as cantidad,
    sum(db.cantidad*db.preciovta) as total,
    p.estado
    from tb_detalle_boleta db
    join tb_boleta b on db.numBoleta = b.numBoleta
    join tb_productos p on db.idprod = p.idprod
    join tb_categorias c on p.idcategoria = c.idcategoria
    where b.fecha between fecha1 and fecha2
    group by p.nomprod;
END //
DELIMITER ;
CALL sp_listarProductosVentas('2020-01-10', '2020-10-10');

SET lc_time_names = 'es_PE';

#USUARIO
-- > VALIDAR USUARIO
DROP PROCEDURE IF EXISTS sp_validaUsuario;
DELIMITER //
CREATE PROCEDURE sp_validaUsuario(usr varchar(45), psw varchar(12))
BEGIN
	SELECT*FROM tb_usuarios
	WHERE usuario=usr AND clave=psw and estado = 1;
END //
DELIMITER ;

CALL sp_validaUsuario('i201823296','dac49');

-- > BUSCAR USUARIO
DROP PROCEDURE IF EXISTS USP_buscarUsuario;
DELIMITER $$
CREATE PROCEDURE USP_buscarUsuario(
id int
)
BEGIN
	Select * 
    From tb_usuarios 
    Where codUsuario = id;
END $$
DELIMITER ;

CALL USP_buscarUsuario(1);

-- > ACTUALIZAR USUARIO
DROP PROCEDURE IF EXISTS USP_ActualizarUsuario;
DELIMITER $$
CREATE PROCEDURE USP_ActualizarUsuario(
nomb varchar(15),
ape varchar(25),
dist int,
usu varchar(45),
cla varchar(12),
tipo int,
est bit,
id int
)
BEGIN
	 Update tb_usuarios 
     Set  nombre = nomb, apellido = ape, codDistrito = dist, usuario = usu, clave = cla, idTipo = tipo, estado = est
     Where codUsuario = id;
END $$
DELIMITER ;

CALL USP_ActualizarUsuario('Rodrigo','Garcia',3,'miguel','123456',0,1,6);

-- > ACTUALIZAR ESTADO USUARIO
DROP PROCEDURE IF EXISTS USP_ActualizarEstadoUsuario;
DELIMITER $$
CREATE PROCEDURE USP_ActualizarEstadoUsuario(
est bit,
id int
)
BEGIN
	 Update tb_usuarios 
     Set estado = est
     Where codUsuario = id;
END $$
DELIMITER ;

CALL USP_ActualizarEstadoUsuario(0,6);

-- > LISTAR USUARIOS 
DROP PROCEDURE IF EXISTS USP_ListarUsuarios;
DELIMITER $$
CREATE PROCEDURE USP_ListarUsuarios(est bit, dist int, tipo int)
BEGIN
	Select *
    From tb_usuarios
    Where estado = est
    and (codDistrito = dist or dist = 0)
    and (idTipo = tipo or tipo = -1);
END $$
DELIMITER ;	

CALL USP_ListarUsuarios(1,0,-1);

-- > LISTAR DISTRITOS
DROP PROCEDURE IF EXISTS sp_listarDistritos;
DELIMITER //
CREATE PROCEDURE sp_listarDistritos()
BEGIN
	SELECT *
    FROM tb_distritos;
END //
DELIMITER ;
CALL sp_listarDistritos();

-- > REGISTRAR USUARIO
DROP PROCEDURE IF EXISTS USP_RegistrarUsuario;
DELIMITER $$
CREATE PROCEDURE USP_RegistrarUsuario(
	nombre 		varchar(15),
	apellido 	varchar(25),
	codDistrito int,
	usuario  	varchar(45),
	clave    	varchar(12),
	idTipo    	int ,  
	estado  	bit 
)
BEGIN
	insert into tb_usuarios values(null,nombre,apellido,codDistrito,usuario,clave,idTipo,estado);
END $$
DELIMITER ;

#BOLETA
-- > GENERANDO EL CODIGO CORRELATIVO DE LA BOLETA
DROP FUNCTION IF EXISTS UF_generatePKBoleta;
DELIMITER $$
CREATE FUNCTION UF_generatePKBoleta() RETURNS CHAR(5) CHARACTER SET utf8
READS SQL DATA
DETERMINISTIC
BEGIN
    SET @v_code = (Select (CAST(IFNULL(RIGHT(MAX(numBoleta),4),0) as SIGNED) + 1) From tb_boleta);
	SET @v_codeCorrlative = CAST(CONCAT('B',REPEAT('0',4 - LENGTH(@v_code)),@v_code) as Char(5));
    RETURN @v_codeCorrlative;
END $$
DELIMITER ;

SELECT UF_generatePKBoleta();

-- > REGISTRAR BOLETA
DROP PROCEDURE IF EXISTS USP_RegistrarBoleta;
DELIMITER $$
CREATE PROCEDURE USP_RegistrarBoleta(
id char(5),
idUsuario int,
tot decimal(8,2)
)
BEGIN
	insert tb_boleta(numBoleta,codUsuario,fecha,total)
    values(id,idUsuario,CURDATE(),tot);
END $$
DELIMITER ;

-- > LISTAR TIENDAS
DROP PROCEDURE IF EXISTS USP_ListarProductosXCategoria;
DELIMITER $$
CREATE PROCEDURE USP_ListarProductosXCategoria(categoria int)
BEGIN
	select p.*, c.descripcion
	from tb_productos p  
	join tb_categorias c 
	on p.idcategoria = c.idcategoria 
    where p.stock > 0
    and (p.idcategoria = categoria or categoria = 0)
    and estado = 1;
END $$
DELIMITER ;

CALL USP_ListarProductosXCategoria(1);