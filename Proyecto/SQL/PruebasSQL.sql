-- Ver los servicios (accesibilidad) que hay según el idioma.
SELECT at.Nombre, a.idAccesibilidad FROM accesibilidad_traduccion at JOIN accesibilidad a ON a.idAccesibilidad = at.fk_idAccesibilidad
JOIN Idioma i ON i.idIdioma = at.fk_idIdioma WHERE i.CodigoIdioma = "es";

-- Ver los tipos de cocina y su nombre (Idioma ESP)
SELECT tct.Nombre, tc.idTipoCocina FROM tipo_cocina_traduccion tct
JOIN Tipo_Cocina tc ON tc.idTipoCocina = tct.fk_idTipoCocina WHERE tct.fk_idIdioma = 1;