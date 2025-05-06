DROP DATABASE IF EXISTS SaboresDeInca;
CREATE DATABASE SaboresDeInca;
USE SaboresDeInca;

CREATE TABLE Tipo_Cocina(
idTipoCocina INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Idioma(
idIdioma INT AUTO_INCREMENT PRIMARY KEY,
Nombre Varchar(10),
CodigoIdioma Varchar(2)
);

CREATE TABLE Tipo_Cocina_Traduccion(
idTipoCocinaTraduccion INT AUTO_INCREMENT PRIMARY KEY,
Nombre Varchar(25),
fk_idIdioma INT,
fk_idTipoCocina INT,
FOREIGN KEY (fk_idIdioma) REFERENCES Idioma(idIdioma),
FOREIGN KEY (fk_idTipoCocina) REFERENCES Tipo_Cocina(idTipoCocina)
);

CREATE TABLE Accesibilidad(
idAccesibilidad INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Accesibilidad_Traduccion(
idAccesibilidadTraduccion INT AUTO_INCREMENT PRIMARY KEY,
Nombre Varchar(50),
fk_idIdioma INT,
fk_idAccesibilidad INT,
FOREIGN KEY (fk_idIdioma) REFERENCES Idioma(idIdioma),
FOREIGN KEY (fk_idAccesibilidad) REFERENCES Accesibilidad(idAccesibilidad)
);

CREATE TABLE Restaurante(
idRestaurante INT AUTO_INCREMENT PRIMARY KEY,
Nombre Varchar(25),
RangoPrecio Varchar(6), # La idea es poner € dependiendo de qué tan caro es
Vegano Bool, # Si es Vegano, será true, en caso contrario, false. Se controlará con un checkbox en la web
Telefono Varchar(20), # +34 xxx xxx xxx
SitioWeb Varchar(100), # URL
Direccion Varchar(150),
Carta Varchar(255), # Se guardará la ruta del archivo.
fk_idTipoCocina INT,
FOREIGN KEY (fk_idTipoCocina) REFERENCES Tipo_Cocina(idTipoCocina)
);

CREATE TABLE Restaurante_Accesibilidad(
idRestauranteAccesible INT AUTO_INCREMENT PRIMARY KEY,
fk_idRestaurante INT,
fk_idAccesibilidad INT,
FOREIGN KEY (fk_idRestaurante) REFERENCES Restaurante (idRestaurante),
FOREIGN KEY (fk_idAccesibilidad) REFERENCES Accesibilidad (idAccesibilidad)
);

CREATE TABLE Restaurante_Traduccion(
idRestauranteTraduccion INT AUTO_INCREMENT PRIMARY KEY,
Descripcion TEXT,
Horario Varchar(350),
fk_idRestaurante INT,
fk_idIdioma INT,
FOREIGN KEY (fk_idRestaurante) REFERENCES Restaurante(idRestaurante),
FOREIGN KEY (fk_idIdioma) REFERENCES Idioma(idIdioma)
);

CREATE TABLE Imagen(
idImagen INT AUTO_INCREMENT PRIMARY KEY,
fk_idRestaurante INT,
Url Varchar(255),
AltText Varchar(50),
FOREIGN KEY (fk_idRestaurante) REFERENCES Restaurante (idRestaurante)
);

CREATE TABLE Usuario(
idUsuario INT AUTO_INCREMENT PRIMARY KEY,
Username Varchar(100) UNIQUE NOT NULL,
Email Varchar(30) UNIQUE NOT NULL,
Password Varchar(40) NOT NULL,
FechaCreacion DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Valoracion(
idValoracion INT AUTO_INCREMENT PRIMARY KEY,
fk_idUsuario INT,
fk_idRestaurante INT,
Comentario TEXT,
Fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
Valoracion INT,
FOREIGN KEY (fk_idUsuario) REFERENCES Usuario (idUsuario),
FOREIGN KEY (fk_idRestaurante) REFERENCES Restaurante(idRestaurante)
);