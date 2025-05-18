-- Ver los servicios (accesibilidad) que hay según el idioma.
SELECT at.Nombre, a.idAccesibilidad FROM accesibilidad_traduccion at JOIN accesibilidad a ON a.idAccesibilidad = at.fk_idAccesibilidad
JOIN Idioma i ON i.idIdioma = at.fk_idIdioma WHERE i.CodigoIdioma = "es";

-- Ver los tipos de cocina y su nombre (Idioma ESP)
SELECT tct.Nombre, tc.idTipoCocina FROM tipo_cocina_traduccion tct
JOIN Tipo_Cocina tc ON tc.idTipoCocina = tct.fk_idTipoCocina WHERE tct.fk_idIdioma = 1;

-- Obtener restaurantes veganos
SELECT * FROM Restaurante WHERE VEGANO = 1;

-- Rangos de precio diferentes
SELECT DISTINCT RangoPrecio FROM Restaurante;

-- Filtrar por un idioma y por tipo de restaurante.
SELECT r.*, tct.Nombre FROM Restaurante r JOIN Tipo_cocina tc ON r.fk_idTipoCocina = tc.idTipoCocina JOIN Tipo_Cocina_Traduccion tct ON tc.idTipoCocina = tct.fk_idTipoCocina JOIN Idioma i ON tct.fk_idIdioma = i.idIdioma
WHERE i.CodigoIdioma = "ES" AND tct.Nombre = "Italiano";

-- Obtener los idiomas
SELECT * FROM Idioma;

-- Obtener la media de valoracion de un restaurante
SELECT TRUNCATE((SUM(v.Valoracion) / COUNT(v.Valoracion)), 1) AS "Media" FROM Valoracion v JOIN Restaurante r ON v.fk_idRestaurante = r.idRestaurante WHERE fk_idRestaurante = 1;

ALTER TABLE Valoracion
ADD COLUMN created_at TIMESTAMP NULL,
ADD COLUMN updated_at TIMESTAMP NULL;

ALTER TABLE Restaurante
ADD COLUMN created_at TIMESTAMP NULL,
ADD COLUMN updated_at TIMESTAMP NULL;

-- Ver los atributos de una tabla.
DESCRIBE Restaurante;