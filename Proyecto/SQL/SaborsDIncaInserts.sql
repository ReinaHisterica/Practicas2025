-- ACCESIBILIDAD 
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (1);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (2);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (3);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (4);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (5);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (6);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (7);
INSERT INTO ACCESIBILIDAD (idAccesibilidad) VALUES (8);

-- IDIOMA
INSERT INTO IDIOMA (Nombre, CodigoIdioma) VALUES ("Espanol", "es");
INSERT INTO IDIOMA (Nombre, CodigoIdioma) VALUES ("Català", "ca");
INSERT INTO IDIOMA (Nombre, CodigoIdioma) VALUES ("English", "en");
INSERT INTO IDIOMA (Nombre, CodigoIdioma) VALUES ("Deutsch", "de");

-- ACCESIBILIDAD TRADUCCIÓN
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Aseos", 1, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Banys", 1, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Restroom", 1, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Toiletten", 2, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("WiFi gratis", 2, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("WiFi gratuït", 2, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Free WiFi", 2, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Kostenloses WiFi", 2, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Acceso para silla de ruedas", 3, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Accés per a cadira de rodes", 3, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Wheelchair accessible", 3, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Zugang für Rollstühle", 3, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Para llevar", 4, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Per emportar", 4, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("To take away", 4, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Zum Mitnehem", 4, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("A domicilio", 5, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("A domicili", 5, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Home delivery", 5, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Hauszustellung", 5, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Accepta reservas", 6, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Accepta reserves", 6, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Reservations accepted", 6, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Reservierungen angenommen", 6, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Tarjeta de crédito", 7, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Targeta de crèdit", 7, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Credit card", 7, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Kreditkarte", 7, 4);

INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Asientos al aire libre", 8, 1);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Seients a l'aire lliure", 8, 2);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Outdoor Seating", 8, 3);
INSERT INTO ACCESIBILIDAD_TRADUCCION (Nombre, fk_idAccesibilidad, fk_idIdioma) VALUES ("Sitzplätze im Freien", 8, 4);

-- TIPO COCINA
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (1);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (2);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (3);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (4);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (5);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (6);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (7);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (8);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (9);
INSERT INTO TIPO_COCINA (idTipoCocina) VALUES (10);

-- TIPO COCINA TRADUCCIÓN
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mediterráneo", 1, 1);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mediterrani", 2, 1);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mediterranean", 3, 1);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mediterran", 4, 1);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Italiano", 1, 2);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Italià", 2, 2);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Italian", 3, 2);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Italienisch", 4, 2);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Japonés", 1, 3);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Japonès", 2, 3);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Japanese", 3, 3);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Japanisch", 4, 3);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Comida rápida", 1, 4);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Menjar ràpid", 2, 4);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Fast food", 3, 4);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Fastfood", 4, 4);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Kebab", 1, 5);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Kebab", 2, 5);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Kebab", 3, 5);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Kebab", 4, 5);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Argentino", 1, 6);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Argentí", 2, 6);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Argentine", 3, 6);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Argentinen", 4, 6);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Indio", 1, 7);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Indi", 2, 7);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Indian", 3, 7);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Indisch", 4, 7);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mexicano", 1, 8);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mexicà", 2, 8);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mexican", 3, 8);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Mexikanisch", 4, 8);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Poke / Saludable", 1, 9);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Poke / Saludable", 2, 9);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Poke / Healthy", 3, 9);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Poke / Gesund", 4, 9);

INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Chino", 1, 10);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Xinès", 2, 10);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Chinese", 3, 10);
INSERT INTO TIPO_COCINA_TRADUCCION (Nombre, fk_idIdioma, fk_idTipoCocina) VALUES ("Chinesisch", 4, 10);

-- RESTAURANTES
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Natur Inca", "€€", 1, "+34 871 03 84 78", "https://natur.last.shop/es/", "Gran Via Colom, 44, 07300 Inca", "", 9);
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Sushi Ninja", "€€", 1, "+34 971 66 75 95", "https://www.sushininja87.es/", "Avinguda del General Luque, 375, 07300 Inca", "",  3);
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Yi Sushi", "€€", 1, "+34 655 40 06 30", "", "Av. Jaume I, 8, 07300, Inca", "", 3);
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Kebab Estación", "€-€€", "0", "+34 666 02 36 21", "", "Avenida del Tren 16, 07300, Inca", "", 5); # Tiene para llevar. Cierra Miércoles. Horario: de 12:00 a 00:00.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Kebab Totbo", "€", "0 ", "+34 697 67 25 73", "", "Carrer Ponent, 6, 07300, Inca", "", 5); # Abre todos los días de 12:00 a 00:00. Tiene terraza y para llevar. # Aquí hay fotos: https://gastroranking.es/r/kebab-tot-bo_228643/. Info accesibilidad y más fotos: https://es.restaurantguru.com/Kebab-Tot-Bo-Inca.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Lipari - Stromboli", "€", "1" , "+34 971 88 05 01", "http://www.lipari-stromboli.es/", "Gran Via Colom, 07300, Inca", "", 2); # Cartas descargadas en pdf. Cierra los martes. Más info: https://es.restaurantguru.com/STROMBOLI-Inca.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Burger & Taco", "€€", 1, "+34 971 88 40 87", "https://burgerandtaco.es/", "Gran Via Colom, 119, 07300 Inca", "",  4); # Carta descargada en png. Cierra los martes. Info en: https://es.restaurantguru.com/Burger-and-Taco-Inca y en https://burgerandtaco.es/.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Sexto Sentido", "€€€", 0, "+34 687 63 81 19", "https://sextosentidosmashburger.es/", "Gran Via Colom, 86, 07300 Inca", "", 4); # Cierra los lunes. Más info en: https://es.restaurantguru.com/Sexto-Sentido-Burguer-Smash-y-Hot-dog-Inca. Reservar, para llevar, a domicilio y silla de ruedas.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Canyamel", "€€", 0, "+34 675 58 14 37", "", "Av. Jaume I, 16, 07300 Inca", "", 1); # Cierra lunes y martes. Para llevar, reserva, silla de ruedas. Más info: https://es.restaurantguru.com/Canyamel-Inca.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("KFC", "€-€€", "1", "+34 971 15 83 17", "https://www.kfc.es/menu", "Av. Jaume I, 143, 07300 Inca", "", 4); # Más info: https://es.restaurantguru.com/Restaurante-KFC-Inca
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Burger King", "€-€€", 1, "+34 649 62 84 56", "https://www.burgerking.es/es/menu", "Carrer Teixidors, 999, 07300 Inca", "", 4); # Info: https://es.restaurantguru.com/Burguer-King-Inca
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("McDonald's", "€-€€", 1, "+34 971 50 74 54", "https://mcdonalds.es/productos", "Carrer Sencelles, 73-74, 07300 Inca", "", 4); # Info: https://es.restaurantguru.com/McDonalds-Inca
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Ké Cocina", "€€", 0, "+34 971 50 58 59", "", "Pl. de la Llibertat, 7, 07300 Inca", "", 10); # https://es.restaurantguru.com/Restaurantes-Ke-Cocina-Inca
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("TaqueroMucho", "€€€", 0, "+34 971 94 11 22", "", "Pl. de la Llibertat, 5, 07300 Inca", "", 8); # https://es.restaurantguru.com/TaqueroMucho-Palma
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Parilla El Argentino", "€€€", 0, "+34 871 91 45 80", "https://parrillaelargentino.com/", "Gran Via Colom, 24, 07300 Inca", "", 6); # https://es.restaurantguru.com/El-Argentino-Inca
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("C'an Zhang", "€€", 0, "+34 971 88 11 37", "", "Gran Via Colom, 16, 07300 Inca", "", 10); # https://es.restaurantguru.com/Restaurante-Chino-Can-Zhang-Inca. Reserva, para llevar, silla de ruedas.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Pizza Libre", "€€", 1 , "+34 971 88 02 30", "https://www.pizzalibre.es/", "Gran Via Colom, 125, 07300 Inca", "", 2); # https://es.restaurantguru.com/Pizza-libre-Inca. Para llevar, entrega, reserva, silla de ruedas.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Vadepizza", "€€", 1, "+34 971 50 75 55", "http://www.vadepizzainca.es/", "Gran Via Colom, 110, 07300 Inca", "", 2); # https://vadepizzainca.es/. Sillas de ruedas, para llevar, a domicilio (entrega).
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Basant Indian Fusion Food", "€€", 1,"+34 871 51 09 06", "", "Gran Via Colom, 80, 07300 Inca", "", 7); # https://es.restaurantguru.com/Basant-Indian-Fusion-Food-Inca. Silla de ruedas, domicilio, reserva, para llevar.
# INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Llar Des Padrins", "€€", 0, "+34 971 50 36 22", "", "Carrer des Barco, 9, 07300 Inca", "", 1); # https://es.restaurantguru.com/Llar-Des-Padrins-Inca. Reserva, a domicilio, silla de ruedas.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Ca'n Pedro", "€€", 0, "+34 971 51 57 77", "https://canpedroinca.com/es/", "Plaça Santa Maria la Major, 5, 07300 Inca", "", 1); # https://es.restaurantguru.com/Can-Pedro-Inca. Para llevar, reserva, silla de ruedas.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("La barra de Miceli", "€-€€", 0, "+34 676 940 559", "", "Carrer de la Pau, 29, 07300 Inca", "", 1); # https://es.restaurantguru.com/La-barra-de-miceli-Inca. Silla de ruedas, reserva.
INSERT INTO RESTAURANTE (Nombre, RangoPrecio, Vegano, Telefono, SitioWeb, Direccion, Carta, fk_idTipoCocina) VALUES ("Es Ginebró", "€€", 1, "+34 971 50 02 09", "https://esginebro.com/", "Avenida del, Avinguda del Bisbe Llompart, 124, 07300 Inca", "", 1); # https://es.restaurantguru.com/Ginebro-Inca. Reserva, para llevar, silla de ruedas.

-- RESTAURANTE ACCESIBILIDAD
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (1, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (2, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (3, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (3, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (3, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (3, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (3, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (3, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (4, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (4, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (4, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (4, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (4, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (5, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (6, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 2);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (7, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (8, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (8, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (8, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (9, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (9, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (9, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (9, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (9, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (9, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (10, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (10, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (10, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (10, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (10, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (10, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (11, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (12, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (12, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (12, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (12, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (12, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (12, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (13, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (14, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (15, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (15, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (15, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (15, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (15, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (15, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (16, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (17, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (18, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (18, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (18, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (18, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (18, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (18,  8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 5);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (19, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (20, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (20, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (20,5 );
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (20, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (20, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (20, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 2);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 4);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 7);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (21, 8);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (22, 1);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (22, 3);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (22, 6);
INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (22, 7);
# INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (23, 1);
# INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (23, 3);
# INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (23, 4);
# INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (23, 6);
# INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (23, 7);
# INSERT INTO RESTAURANTE_ACCESIBILIDAD (fk_idRestaurante, fk_idAccesibilidad) VALUES (23, 8);

-- RESTAURANTE TRADUCCION
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES 
("Somos mucho más que un restaurante de poke, somos el verdadero PLACER SIN PECADO. Ven a probar platos deliciosos y nutritivos de otro nivel, tenemos opciones para veganos y celíacos además de platos personalizables. Puedes elegir si quieres venir a disfrutar al restaurante o si quieres pedir take away o delivery para que comas Natur Poke allá donde quieras. ¡Te esperamos!", 
"
Lunes: 12:00-23:00
Martes: 12:00-23:00
Miércoles: 12:00-23:00
Jueves: 12:00-23:00
Viernes: 12:00-23:00
Sábado: 12:00-23:00
Domingo: 12:00-23:00
", 1, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Som molt més que un restaurant de poke, som el veritable PLAER SENSE PECAT. Vine a tastar plats deliciosos i nutritius d'un altre nivell, tenim opcions per a vegans i celíacs a més de plats personalitzables. Pots triar si vols venir a gaudir al restaurant o si vols demanar take away o delivery perquè mengis Natur Poke allà on vulguis. T'esperem!",
"
Dilluns: 12:00-23:00
Dimarts: 12:00-23:00
Dimecres: 12:00-23:00
Dijous: 12:00-23:00
Divendres: 12:00-23:00
Dissabte: 12:00-23:00
Diumenge: 12:00-23:00
", 1, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("We are much more than a poke restaurant, we are the true SINLESS PLEASURE. Come and taste delicious and nutritious dishes of another level, we have options for vegans and coeliacs as well as customisable dishes. You can choose if you want to come and enjoy at the restaurant or if you want to order take away or delivery so you can eat Natur Poke wherever you want. We are waiting for you!",
"Monday: 12:00-23:00
Tuesday: 12:00-23:00
Wednesday: 12:00-23:00
Thursday: 12:00-23:00
Friday: 12:00-23:00
Saturday: 12:00-23:00
Sunday: 12:00-23:00",
1, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Wir sind viel mehr als ein Poke-Restaurant, wir sind das wahre SINLESS PLEASURE. Kommen Sie und probieren Sie köstliche und nahrhafte Gerichte auf einem anderen Niveau, wir haben Optionen für Veganer und Zöliakiekranke sowie individuell anpassbare Gerichte. Sie können wählen, ob Sie ins Restaurant kommen und genießen möchten oder ob Sie einen Lieferservice bestellen möchten, damit Sie Natur Poke essen können, wo immer Sie wollen - wir erwarten Sie!", 
"
Montag: 12:00-23:00
Dienstag: 12:00-23:00
Mittwoch: 12:00-23:00
Donnerstag: 12:00-23:00
Freitag: 12:00-23:00
Samstag: 12:00-23:00
Sonntag: 12:00-23:00
",1 ,4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sushi Ninja ofrece una experiencia gastronómica centrada en la cocina japonesa, con especialidad en sushi y platos tradicionales preparados con ingredientes frescos. El restaurante presenta un ambiente moderno y acogedor, ideal para disfrutar de una comida tranquila en pareja o con amigos. Su carta incluye opciones variadas que combinan sabores clásicos con toques contemporáneos.", 
"
Lunes: Cerrado
Martes: 13:00-16:00
20:00-00:00
Miércoles: 13:00-16:00
20:00-00:00
Jueves: 13:00-16:00
20:00-00:00
Viernes: 13:00-16:00
20:00-00:00
Sábado: 13:00-16:00
20:00-00:00
Domingo: 13:00-16:00
20:00-00:00
", 2, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sushi Ninja ofereix una experiència gastronòmica centrada en la cuina japonesa, amb especialitat en sushi i plats tradicionals preparats amb ingredients frescos. El restaurant presenta un ambient modern i acollidor, ideal per gaudir d´un àpat tranquil en parella o amb amics.",
"
Dilluns: Tancat
Dimarts: 13:00-16:00
20:00-00:00
Dimecres: 13:00-16:00
20:00-00:00
Dijous: 13:00-16:00
20:00-00:00
Divendres: 13:00-16:00
20:00-00:00
Dissabte: 13:00-16:00
20:00-00:00
Diumenge: 13:00-16:00
20:00-00:00
", 2, 2
);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sushi Ninja offers a gastronomic experience focused on Japanese cuisine, specialising in sushi and traditional dishes prepared with fresh ingredients. The restaurant has a modern and welcoming atmosphere, ideal for enjoying a quiet meal in a couple or with friends.",
"
Monday: Closed
Tuesday: 1:00 PM - 4:00 PM
8:00 PM - 12:00 AM
Wednesday: 1:00 PM - 4:00 PM
8:00 PM - 12:00 AM
Thursday: 1:00 PM - 4:00 PM
8:00 PM - 12:00 AM
Friday: 1:00 PM - 4:00 PM
8:00 PM - 12:00 AM
Saturday: 1:00 PM - 4:00 PM
8:00 PM - 12:00 AM
Sunday: 1:00 PM - 4:00 PM
8:00 PM - 12:00 AM
",2 , 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Das Sushi Ninja bietet ein gastronomisches Erlebnis mit Schwerpunkt auf der japanischen Küche und ist spezialisiert auf Sushi und traditionelle Gerichte, die mit frischen Zutaten zubereitet werden. Das Restaurant hat eine moderne und einladende Atmosphäre, ideal für ein ruhiges Essen zu zweit oder mit Freunden.",
"
Montag: Geschlossen
Dienstag: 13:00 - 16:00 Uhr
20:00 - 0:00 Uhr
Mittwoch: 13:00 - 16:00 Uhr
20:00 - 0:00 Uhr
Donnerstag: 13:00 - 16:00 Uhr
20:00 - 0:00 Uhr
Freitag: 13:00 - 16:00 Uhr
20:00 - 0:00 Uhr
Samstag: 13:00 - 16:00 Uhr
20:00 - 0:00 Uhr
Sonntag: 13:00 - 16:00 Uhr
20:00 - 0:00 Uhr
", 2, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Yi Sushi es un restaurante especializado en gastronomía asiática, con una carta que fusiona sabores del sudeste asiático con una destacada selección de sushi. Su propuesta combina tradición y modernidad en un espacio acogedor, perfecto para los amantes de la cocina oriental.",
"
Lunes: 13:00-16:00
20:00-23:30
Martes: Cerrado
Miércoles: 13:00-16:00
20:00-23:30
Jueves: 13:00-16:00
20:00-23:30
Viernes: 13:00-16:00
20:00-23:30
Sábado: 13:00-16:00
20:00-23:30
Domingo: 13:00-16:00
20:00-23:30
", 3, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Yi Sushi és un restaurant especialitzat en gastronomia asiàtica, amb una carta que fusiona sabors del sud-est asiàtic amb una destacada selecció de sushi. La seva proposta combina tradició i modernitat en un espai acollidor, perfecte pels amants de la cuina oriental.", 
"Dilluns: 13:00-16:00
20:00-23:30
Dimarts: Tancat
Dimecres: 13:00-16:00
20:00-23:30
Dijous: 13:00-16:00
20:00-23:30
Divendres: 13:00-16:00
20:00-23:30
Dissabte: 13:00-16:00
20:00-23:30
Diumenge: 13:00-16:00
20:00-23:30",
3, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Yi Sushi is a restaurant specialising in Asian cuisine, with a menu that fuses Southeast Asian flavours with an outstanding selection of sushi. Its proposal combines tradition and modernity in a cosy space, perfect for lovers of oriental cuisine.",
"Monday: 13:00-16:00
20:00-23:30
Tuesday: Closed
Wednesday: 13:00-16:00
20:00-23:30
Thursday: 13:00-16:00
20:00-23:30
Friday: 13:00-16:00
20:00-23:30
Saturday: 13:00-16:00
20:00-23:30
Sunday: 13:00-16:00
20:00-23:30", 
3, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Yi Sushi ist ein auf asiatische Küche spezialisiertes Restaurant mit einer Speisekarte, die südostasiatische Aromen mit einer hervorragenden Auswahl an Sushi verbindet. Sein Angebot verbindet Tradition und Moderne in einem gemütlichen Raum, der perfekt für Liebhaber der orientalischen Küche ist.",
"Montag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Dienstag: Geschlossen
Mittwoch: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Donnerstag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Freitag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Samstag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Sonntag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr",
3, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Estación es un local informal que ofrece comida rápida de inspiración turca, con especialidad en kebabs, dürüms y platos combinados. Ubicado en una zona céntrica, es una opción práctica para quienes buscan una comida sabrosa y asequible en un ambiente desenfadado.",
"
Lunes: 12:00-00:00
Martes: 12:00-00:00
Miércoles: Cerrado
Jueves: 12:00-00:00
Viernes: 12:00-00:00
Sábado: 12:00-00:00
Domingo: 12:00-00:00
",
4, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Estación és un local informal que ofereix menjar ràpid d'inspiració turca, amb especialitat en kebabs, dürüms i plats combinats. Ubicat en una zona cèntrica, és una opció pràctica per als que busquen un menjar saborós i assequible en un ambient desenfadat.", "
Dilluns: 12:00-00:00
Dimarts: 12:00-00:00
Dimecres: Tancat
Dijous: 12:00-00:00
Divendres: 12:00-00:00
Dissabte: 12:00-00:00
Diumenge: 12:00-00:00", 4, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Estación is a casual eatery offering Turkish-inspired fast food, specialising in kebabs, dürüms and mixed dishes. Centrally located, it is a convenient option for those looking for tasty and affordable food in a casual atmosphere.",
"
Monday: 12:00-0:00
Tuesday: 12:00-0:00
Wednesday: Closed
Thursday: 12:00-0:00
Friday: 12:00-0:00
Saturday: 12:00-0:00
Sunday: 12:00-0:00
", 4, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Estación ist ein zwangloses Lokal, das türkisch inspirierte Schnellgerichte anbietet und sich auf Kebab, Dürüms und gemischte Gerichte spezialisiert hat. Das zentral gelegene Lokal ist eine gute Wahl für alle, die schmackhaftes und erschwingliches Essen in einer lockeren Atmosphäre suchen.", 
"
Montag: 12:00-00:00
Dienstag: 12:00-00:00
Mittwoch: Geschlossen
Donnerstag: 12:00-00:00
Freitag: 12:00-00:00
Samstag: 12:00-00:00
Sonntag: 12:00-00:00
", 4, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Tot Bo ofrece una selección de kebabs, pizzas y platos rápidos en un entorno sencillo y funcional. Ideal para una comida informal, el local destaca por su variedad de opciones y servicio ágil, siendo una alternativa popular para quienes buscan un bocado rápido sin complicaciones.",
"
Lunes: 12:00-00:00
Martes: 12:00-00:00
Miércoles: 12:00-00:00
Jueves: 12:00-00:00
Viernes: 12:00-00:00
Sábado: 12:00-00:00
Domingo: 12:00-00:00
", 
5, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Tot Bo ofereix una selecció de kebabs, pizzes i plats ràpids en un entorn senzill i funcional. Ideal per a un àpat informal, el local destaca per la seva varietat d'opcions i servei àgil, sent una alternativa popular per als que busquen una mossegada ràpida sense complicacions.", 
"
Dilluns: 12:00-00:00
Dimarts: 12:00-00:00
Dimecres: 12:00-00:00
Dijous: 12:00-00:00
Divendres: 12:00-00:00
Dissabte: 12:00-00:00
Diumenge: 12:00-00:00
", 5, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Tot Bo offers a selection of kebabs, pizzas and quick dishes in a simple and functional environment. Ideal for a casual meal, the place stands out for its variety of options and quick service, making it a popular alternative for those looking for a quick bite without the hassle.", 
" 
Monday: 12:00-00:00
Tuesday: 12:00-00:00
Wednesday: 12:00-00:00
Thursday: 12:00-00:00
Friday: 12:00-00:00
Saturday: 12:00-00:00
Sunday: 12:00-00:00
", 5, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Kebab Tot Bo bietet eine Auswahl an Kebabs, Pizzen und Schnellgerichten in einer einfachen und funktionalen Umgebung. Das Lokal ist ideal für eine zwanglose Mahlzeit und zeichnet sich durch seine Vielfalt an Optionen und den schnellen Service aus, was es zu einer beliebten Alternative für diejenigen macht, die einen schnellen Happen ohne Stress suchen.", 
"
Montag: 12:00-00:00
Dienstag: 12:00-00:00
Mittwoch: 12:00-00:00
Donnerstag: 12:00-00:00
Freitag: 12:00-00:00
Samstag: 12:00-00:00
Sonntag: 12:00-00:00
", 5, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Nos apasiona la CREATIVDAD , los DETALLES y los nuevos DESAFIOS, es por ello que a través de nuestros pensamientos innovadores nos encanta transformar el diseño y el arte de la gastronomía para paladares exquisitos y exigentes. Disfruta en compañía de tu #pareja #amigos #familiares #clientes , para tus #reunionessociales #ReunionesConEncanto #ReunionesCorporativas #cumpleaños #fiestasinfantiles #FiestasInolvidables #teambuilding #reunionesdetrabajo o para que te deleites de un exquisito menú, de nuestra variedad en #cocteleria o el #bar.", 
"
Lunes: 12:30-15:30
19:30-22:30
Martes: Cerrado
Miércoles: Cerrado
Jueves: 12:30-15:30
19:30-22:30
Viernes: 12:30-15:30
19:30-23:30
Sábado: 12:30-15:30
19:30-23:30
Domingo: 12:30-15:30
19:30-22:30
", 6, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Ens apassiona la CREATIVDAD, els DETALLS i els nous DESAFIAMENTS, és per això que a través dels nostres pensaments innovadors ens encanta transformar el disseny i l'art de la gastronomia per a paladars exquisits i exigents. Gaudeix en companyia de la teva #parella #amics #familiars #clients , per als teus #reunionssocials #ReunionesConEncanto #ReunionesCorporativas #aniversaris #festesinfantils #FestesInoblidables #teambuilding #reunionsdetreball #perquè et delectis d'un exquisit menú.", 
"
Dilluns: 12:30-15:30
19:30-22:30
Dimarts: Tancat
Dimecres: Tancat
Dijous: 12:30-15:30
19:30-22:30
Divendres: 12:30-15:30
19:30-23:30
Dissabte: 12:30-15:30
19:30-23:30
Diumenge: 12:30-15:30
19:30-22:30
", 
6, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("We are passionate about CREATIVITY, DETAILS and new CHALLENGES, which is why through our innovative thinking we love to transform the design and art of gastronomy for exquisite and demanding palates. Enjoy in the company of your #couple #friends #friends #family #clients, for your #social #meetings #meetingsWithEnchantment #CorporateMeetings #birthdays #children's #parties #unforgettable #teambuilding #workmeetings or to delight yourself with an exquisite menu, our variety in #cocktails or the #bar.", 
"
Monday: 12:30-3:30 PM
7:30-10:30 PM
Tuesday: Closed
Wednesday: Closed
Thursday: 12:30-3:30 PM
7:30-10:30 PM
Friday: 12:30-3:30 PM
7:30-11:30 PM
Saturday: 12:30-3:30 PM
7:30-11:30 PM
Sunday: 12:30-3:30 PM
7:30-10:30 PM
", 6, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Unsere Leidenschaft gilt der KREATIVITÄT, den DETAILS und neuen HERAUSFORDERUNGEN. Deshalb lieben wir es, durch unser innovatives Denken das Design und die Kunst der Gastronomie für exquisite und anspruchsvolle Gaumen zu verwandeln. Genießen Sie in der Gesellschaft Ihres #Paares #Freunde #Familie #Kunden, für Ihre #gesellschaftliche #Treffen #meetingsWithEnchantment #CorporateMeetings #Geburtstage #Kinder #parties #unvergesslich #teambuilding #workmeetings oder um sich selbst mit einem exquisiten Menü, unsere Vielfalt in #cocktails oder die #bar.", 
"Montag: 12:30-15:30
19:30 - 22:30 Uhr
Dienstag: Geschlossen
Mittwoch: Geschlossen
Donnerstag: 12:30-15:30
19:30 - 22:30 Uhr
Freitag: 12:30-15:30
19:30 - 23:30 Uhr
Samstag: 12:30-15:30
19:30 - 23:30 Uhr
Sonntag: 12:30-15:30
19:30 - 22:30 Uhr",
6, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Burger & Taco combina sabores americanos y mexicanos en una propuesta informal y sabrosa. Su carta incluye hamburguesas, tacos, nachos y otros clásicos, en un ambiente desenfadado ideal para compartir una comida con amigos o en familia.", 
"
Lunes: Cerrado
Martes: Cerrado
Miércoles: 19:30-23:45
Jueves: 19:30-23:45
Viernes: 19:30-23:45
Sábado: 19:30-23:45
Domingo: 19:30-23:45
", 7, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Burger & Taco combina sabors americans i mexicans en una proposta informal i saborosa. La carta inclou hamburgueses, tacs, nachos i altres clàssics, en un ambient desenfadat ideal per compartir un dinar amb amics o en família.", 
"
Dilluns: Tancat
Dimarts: Tancat
Dimecres: 19:30-23:45
Dijous: 19:30-23:45
Divendres: 19:30-23:45
Dissabte: 19:30-23:45
Diumenge: 19:30-23:45
", 7, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Burger & Taco combines American and Mexican flavours in an informal and tasty proposal. Its menu includes burgers, tacos, nachos and other classics, in a casual atmosphere ideal for sharing a meal with friends or family.", 
"
Monday: Closed
Tuesday: Closed
Wednesday: 19:30-23:45
Thursday: 19:30-23:45
Friday: 19:30-23:45
Saturday: 19:30-23:45
Sunday: 19:30-23:45
", 7, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Burger & Taco combina sabores americanos y mexicanos en una propuesta informal y sabrosa. Su carta incluye hamburguesas, tacos, nachos y otros clásicos, en un ambiente desenfadado ideal para compartir una comida con amigos o en familia.", 
"
Montag: Geschlossen
Dienstag: Geschlossen
Mittwoch: 19:30 - 23:45 Uhr
Donnerstag: 19:30 - 23:45 Uhr
Freitag: 19:30 - 23:45 Uhr
Samstag: 19:30 - 23:45 Uhr
Sonntag: 19:30 - 23:45 Uhr
", 7, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sexto Sentido ofrece una propuesta gastronómica que combina platos caseros con toques de cocina creativa. Su carta incluye opciones como hamburguesas americanas, alitas  y patatas elaboradas con esmero, todo en un ambiente moderno y cuidado al detalle.", 
"
Lunes: Cerrado
Martes: 19:00-23:00
Miércoles: 19:00-23:00
Jueves: 19:00-23:00
Viernes: 19:00-23:00
Sábado: 19:00-23:00
Domingo: 19:00-23:00
", 8, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sexto Sentido ofereix una proposta gastronòmica que combina plats casolans amb tocs de cuina creativa. La seva carta inclou opcions com hamburgueses americanes, aletes i patates elaborades amb cura, tot en un ambient modern i cura al detall.",
"
Dilluns: Tancat
Dimarts: 19:00-23:00
Dimecres: 19:00-23:00
Dijous: 19:00-23:00
Divendres: 19:00-23:00
Dissabte: 19:00-23:00
Diumenge: 19:00-23:00
", 8, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sexto Sentido offers a gastronomic proposal that combines homemade dishes with touches of creative cuisine. Its menu includes options such as American hamburgers, wings and carefully prepared fries, all in a modern atmosphere with attention to detail.", 
"
Monday: Closed
Tuesday: 7:00 PM - 11:00 PM
Wednesday: 7:00 PM - 11:00 PM
Thursday: 7:00 PM - 11:00 PM
Friday: 7:00 PM - 11:00 PM
Saturday: 7:00 PM - 11:00 PM
Sunday: 7:00 PM - 11:00 PM
", 8, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sexto Sentido bietet ein gastronomisches Angebot, das hausgemachte Gerichte mit einem Hauch von kreativer Küche kombiniert. Auf der Speisekarte stehen unter anderem amerikanische Hamburger, Wings und sorgfältig zubereitete Pommes frites, alles in einem modernen Ambiente mit viel Liebe zum Detail.", 
"
Montag: Geschlossen
Dienstag: 19:00 - 23:00 Uhr
Mittwoch: 19:00 - 23:00 Uhr
Donnerstag: 19:00 - 23:00 Uhr
Freitag: 19:00 - 23:00 Uhr
Samstag: 19:00 - 23:00 Uhr
Sonntag: 19:00 - 23:00 Uhr
", 8, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Si nunca has intentado probar las cocinas mediterránea y española, prueba en este restaurante. No hay duda de que te van a encantar su tierno rape, sus atrayentes empanadas y sus sorprendentes caracoles. En Restaurante Canyamel, sus clientes pueden tomar un bien preparado pastel de frutas y una delicada tarta de queso. No pierdas la oportunidad de probar su excelente vino o su irresistible cerveza. Este lugar ofrece entre sus bebidas un magnífico café cortado y una insuperable limonada.", 
"
Lunes: Cerrado
Martes: Cerrado
Miércoles: 13:00-16:15
Jueves: 13:00-16:15
Viernes: 13:00-16:15
Sábado: 13:00-16:15
Domingo: 13:00-16:15
", 9, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Si mai no has intentat tastar les cuines mediterrània i espanyola, prova en aquest restaurant. No hi ha dubte que t'encantaran el seu rap tendre, les seves atraients empanades i els seus sorprenents cargols. Al Restaurant Canyamel, els seus clients poden prendre un pastís de fruites ben preparat i un delicat pastís de formatge. No perdis l'oportunitat de tastar el seu vi excel·lent o la seva irresistible cervesa. Aquest lloc ofereix entre les begudes un magnífic cafè tallat i una insuperable llimonada.", 
"
Dilluns: Tancat
Dimarts: Tancat
Dimecres: 13:00-16:15
Dijous: 13:00-16:15
Divendres: 13:00-16:15
Dissabte: 13:00-16:15
Diumenge: 13:00-16:15
", 9, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("If you've never tried Mediterranean and Spanish cuisine before, try this restaurant. There is no doubt that you will love its tender monkfish, its appealing empanadas and its amazing snails. At Restaurante Canyamel, customers can enjoy a well-prepared fruit cake and a delicate cheesecake. Don't miss the opportunity to try their excellent wine or their irresistible beer. This place offers among its drinks a magnificent café cortado and an unbeatable lemonade.", 
"
Monday: Closed
Tuesday: Closed
Wednesday: 1:00 PM - 4:15 PM
Thursday: 1:00 PM - 4:15 PM
Friday: 1:00 PM - 4:15 PM
Saturday: 1:00 PM - 4:15 PM
Sunday: 1:00 PM - 4:15 PM", 9, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Wenn Sie noch nie die mediterrane und spanische Küche probiert haben, sollten Sie dieses Restaurant besuchen. Zweifellos werden Sie den zarten Seeteufel, die ansprechenden Empanadas und die erstaunlichen Schnecken lieben. Im Restaurante Canyamel können die Kunden einen gut zubereiteten Obstkuchen und einen delikaten Käsekuchen genießen. Verpassen Sie nicht die Gelegenheit, den hervorragenden Wein oder das unwiderstehliche Bier zu probieren. Zu den Getränken gehören auch ein hervorragender Café Cortado und eine unschlagbare Limonade.", 
"
Montag: Geschlossen
Dienstag: Geschlossen
Mittwoch: 13:00 - 16:15 Uhr
Donnerstag: 13:00 - 16:15 Uhr
Freitag: 13:00 - 16:15 Uhr
Samstag: 13:00 - 16:15 Uhr
Sonntag: 13:00 - 16:15 Uhr
", 9, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("¿Eres fan del #PolloPollo? Tú, sí sí, tú, porque en KFC tenemos más de 23.000 restaurantes en todo el mundo. ¿Me crees si te digo que cada 6 horas abre un restaurante nuevo? Me juego un Megabox a que hay un KFC esperándote más cerca de lo que piensas. Y es que si algo nos hace especiales son nuestras sabrosas hamburguesas, nuestros Buckets de pollo frito o el famoso Kreamball: de Oreo, Kit Kat, incluso de Lacasitos...Mmmm...(ups, perdona, hablando de nuestros productos me ha entrado hambre). ¿Te atreves a visitarnos", 
"
Lunes: 12:00-22:00
Martes: 12:00-22:00
Miércoles: 12:00-22:00
Jueves: 12:00-22:00
Viernes: 12:00-22:30
Sábado: 12:00-22:30
Domingo: 12:00-22:00
", 10, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Ets fan del #PolloPollo? Tu, sí sí, tu, perquè a KFC tenim més de 23.000 restaurants a tot el món. Em penses si et dic que cada 6 hores obre un restaurant nou? Em jugo un Megabox al fet que hi ha un KFC esperant-te més a prop del que penses. I és que si alguna cosa ens fa especials són les nostres saboroses hamburgueses, els nostres Buckets de pollastre fregit o el famós Kreamball: d'Oreo, Kit Kat, fins i tot de Lacasitos...Mmmm...(ups, perdona, parlant dels nostres productes m'ha entrat gana). T'atreveixes a visitar-nos?",
"
Dilluns: 12:00-22:00
Dimarts: 12:00-22:00
Dimecres: 12:00-22:00
Dijous: 12:00-22:00
Divendres: 12:00-22:30
Dissabte: 12:00-22:30
Diumenge: 12:00-22:00
", 10, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Are you a fan of #ChickenChicken? You, yes yes yes, you, because at KFC we have more than 23,000 restaurants worldwide. Do you believe me if I tell you that a new restaurant opens every 6 hours? I'll bet you a Megabox that there's a KFC waiting for you closer than you think. And if anything makes us special, it's our tasty burgers, our fried chicken buckets or the famous Kreamball: Oreo, Kit Kat, even Lacasitos... Mmmm...(oops, sorry, talking about our products has made me hungry). Do you dare to visit us?", 
"
Monday: 12:00-22:00
Tuesday: 12:00-22:00
Wednesday: 12:00-22:00
Thursday: 12:00-22:00
Friday: 12:00-22:30
Saturday: 12:00-22:30
Sunday: 12:00-22:00
", 10, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Sind Sie ein Fan von #ChickenChicken? Du, ja ja ja, du, denn bei KFC haben wir mehr als 23.000 Restaurants weltweit. Glaubst du mir, wenn ich dir sage, dass alle 6 Stunden ein neues Restaurant eröffnet? Ich wette mit dir um eine Megabox, dass ein KFC näher auf dich wartet, als du denkst. Und wenn es etwas gibt, das uns besonders macht, dann sind es unsere leckeren Burger, unsere frittierten Hähncheneimer oder der berühmte Kreamball: Oreo, Kit Kat, sogar Lacasitos...Mmmm...(oops, sorry, das Reden über unsere Produkte hat mich hungrig gemacht). Trauen Sie sich, uns zu besuchen?",
"
Montag: 12:00-22:00
Dienstag: 12:00-22:00
Mittwoch: 12:00-22:00
Donnerstag: 12:00-22:00
Freitag: 12:00-22:30
Samstag: 12:00-22:30
Sonntag: 12:00-22:00
", 10, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("HOME OF THE WHOPPER. Aquí podrás disfrutar de hamburguesas de verdad, con ingredientes frescos, cuidadosamente seleccionados, sin conservantes ni colorantes artificiales, que llevarán a tu boca el inconfundible sabor a la parrilla que nos ha hecho tan famosos alrededor del mundo. ¡Acompáñalas con los snacks y patatas más crujientes! ¿un Shake o un King Fusion? Ven a disfrutar del mejor sabor, a tu manera.", 
"
Lunes: 12:00–0:30
Martes: 12:00–0:30
Miércoles: 12:00–0:30
Jueves: 12:00–0:30
Viernes: 12:00–1:00
Sábado: 12:00–1:00
Domingo: 12:00–0:30
", 11, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("HOME OF THE WHOPPER. Aquí podràs gaudir d'hamburgueses de debò, amb ingredients frescos, acuradament seleccionats, sense conservants ni colorants artificials, que portaran a la teva boca l'inconfusible sabor a la graella que ens ha fet tan famosos arreu del món. Acompanya-les amb els snacks i patates més cruixents! un Shake o un King Fusion? Vine a gaudir del millor sabor, a la teva manera.", 
"
Dilluns: 12:00–0:30
Dimarts: 12:00–0:30
Dimecres: 12:00–0:30
Dijous: 12:00–0:30
Divendres: 12:00–1:00
Dissabte: 12:00–1:00
Diumenge: 12:00–0:30
", 11, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("HOME OF THE WHOPPER. Here you can enjoy real burgers, with fresh, carefully selected ingredients, without preservatives or artificial colouring, that will bring to your mouth the unmistakable grilled flavour that has made us so famous around the world, accompanied by the crunchiest snacks and chips! A Shake or a King Fusion? Come and enjoy the best taste, your way.", 
"
Monday: 12:00–12:30
Tuesday: 12:00–12:30
Wednesday: 12:00–12:30
Thursday: 12:00–12:30
Friday: 12:00–1:00
Saturday: 12:00–1:00
Sunday: 12:00–12:30
", 11, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("DIE HEIMAT DES WHOPPER. Hier können Sie echte Burger genießen, mit frischen, sorgfältig ausgewählten Zutaten, ohne Konservierungsstoffe oder künstliche Farbstoffe, die Ihnen den unverwechselbaren Grillgeschmack in den Mund bringen, der uns in der ganzen Welt so berühmt gemacht hat, begleitet von den knusprigsten Snacks und Pommes frites: ein Shake oder ein King Fusion? Kommen Sie und genießen Sie den besten Geschmack, auf Ihre Art.", 
"
Montag: 12:00–0:30
Dienstag: 12:00–0:30
Mittwoch: 12:00–0:30
Donnerstag: 12:00–0:30
Freitag: 12:00–13:00 Uhr
Samstag: 12:00–13:00 Uhr
Sonntag: 12:00–0:30
", 11, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("McDonald's es la compañía líder del sector de la restauración en España. La marca sirve a más de 225 millones de clientes al año, a través de 600 restaurantes que operan en nuestro país para generar un impacto positivo en la sociedad. Guiada por sus valores -Servicio, Comunidad, Integridad, Inclusión y Familia- y junto a sus empleados, franquiciados, proveedores y clientes, McDonald's practica un negocio sostenible y responsable con el propósito de apoyar a las comunidades en las que está presente. Entre sus principales compromisos se encuentran impulsar la sostenibilidad económica, social y medioambiental en toda su cadena de valor; el origen local, el apoyo al campo español y la calidad de sus productos, entre otros objetivos.", 
"
Lunes: 10:00-00:00
Martes: 10:00-00:00
Miércoles: 10:00-00:00
Jueves: 10:00-00:00
Viernes: 10:00-01:00
Sábado: 10:00-01:00
Domingo: 10:00-00:00
", 12, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("McDonald's és la companyia capdavantera del sector de la restauració a Espanya. La marca serveix més de 225 milions de clients a l'any, a través de 600 restaurants que operen al nostre país per generar un impacte positiu a la societat. Guiada pels seus valors -Servei, Comunitat, Integritat, Inclusió i Família- i juntament amb els seus empleats, franquiciats, proveïdors i clients, McDonald's practica un negoci sostenible i responsable amb el propòsit de donar suport a les comunitats on és present. Entre els seus principals compromisos hi ha impulsar la sostenibilitat econòmica, social i mediambiental a tota la seva cadena de valor; l'origen local, el suport al camp espanyol i la qualitat dels seus productes, entre d'altres objectius.", 
"
Dilluns: 10:00-00:00
Dimarts: 10:00-00:00
Dimecres: 10:00-00:00
Dijous: 10:00-00:00
Divendres: 10:00-01:00
Dissabte: 10:00-01:00
Diumenge: 10:00-00:00
", 12, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("McDonald's is the leading company in the restaurant sector in Spain. The brand serves more than 225 million customers a year, through 600 restaurants operating in our country to generate a positive impact on society. Guided by its values -Service, Community, Integrity, Inclusion and Family- and together with its employees, franchisees, suppliers and customers, McDonald's practices a sustainable and responsible business with the purpose of supporting the communities in which it is present. Among its main commitments are to promote economic, social and environmental sustainability throughout its value chain; local origin, support for the Spanish countryside and the quality of its products, among other objectives.", 
"
Monday: 10:00–00:00
Tuesday: 10:00–00:00
Wednesday: 10:00–00:00
Thursday: 10:00–00:00
Friday: 10:00–01:00
Saturday: 10:00–01:00
Sunday: 10:00–00:00
", 12, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("McDonald's ist das führende Unternehmen im Restaurantbereich in Spanien. Die Marke bedient mehr als 225 Millionen Kunden pro Jahr in 600 Restaurants in unserem Land und hat einen positiven Einfluss auf die Gesellschaft. Geleitet von seinen Werten - Service, Gemeinschaft, Integrität, Integration und Familie - und gemeinsam mit seinen Mitarbeitern, Franchisenehmern, Lieferanten und Kunden betreibt McDonald's ein nachhaltiges und verantwortungsbewusstes Geschäft mit dem Ziel, die Gemeinden, in denen es präsent ist, zu unterstützen. Zu den wichtigsten Verpflichtungen des Unternehmens gehören die Förderung der wirtschaftlichen, sozialen und ökologischen Nachhaltigkeit in der gesamten Wertschöpfungskette, die Förderung der lokalen Herkunft, die Unterstützung des spanischen ländlichen Raums und die Qualität der Produkte, neben anderen Zielen.", 
"
Montag: 10:00-00:00
Dienstag: 10:00-00:00
Mittwoch: 10:00-00:00
Donnerstag: 10:00-00:00
Freitag: 10:00-01:00
Samstag: 10:00-01:00
Sonntag: 10:00-00:00
", 12, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Restaurante de auténtica comida china ubicado en Inca", 
"
Lunes: Cerrado
Martes: 12:00-16:30
19:00-00:00
Miércoles: 12:00-16:30
19:00-00:00
Jueves: 12:00-16:30
19:00-00:00
Viernes: 12:00-16:30
19:00-00:00
Sábado: 12:00-16:30
19:00-00:00
Domingo: 12:00-16:30
19:00-00:00
", 13, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Restaurant d'autèntic menjar xinès ubicat a Inca", 
"
Dilluns: Tancat
Dimarts: 12:00-16:30
19:00-00:00
Dimecres: 12:00-16:30
19:00-00:00
Dijous: 12:00-16:30
19:00-00:00
Divendres: 12:00-16:30
19:00-00:00
Dissabte: 12:00-16:30
19:00-00:00
Diumenge: 12:00-16:30
19:00-00:00
", 13, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Authentic Chinese food restaurant in Inca", 
"
Monday: Closed
Tuesday: 12:00-4:30 PM
7:00 PM-12:00 AM
Wednesday: 12:00-4:30 PM
7:00 PM-12:00 AM
Thursday: 12:00-4:30 PM
7:00 PM-12:00 AM
Friday: 12:00-4:30 PM
7:00 PM-12:00 AM
Saturday: 12:00-4:30 PM
7:00 PM-12:00 AM
Sunday: 12:00-4:30 PM
7:00 PM-12:00 AM
", 13, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Authentisches chinesisches Restaurant in Inca", 
"
Montag: Geschlossen
Dienstag: 12:00-16:30
19:00-00:00
Mittwoch: 12:00-16:30
19:00-00:00
Donnerstag: 12:00-16:30
19:00-00:00
Freitag: 12:00-16:30
19:00-00:00
Samstag: 12:00-16:30
19:00-00:00
Sonntag: 12:00-16:30
19:00-00:00
", 13, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Típica Cantina Mexicana. Las mejores cervezas y los mejores tacos de la Isla en Taquero Mucho Puedes llamar al 971 94 11 22 para Take away o bien pedir en JustEat o Uber Eats.", 
"
Lunes: Cerrado
Martes: Cerrado
Miércoles: 19:30-23:00
Jueves: 19:30-23:00
Viernes: 19:30-23:00
Sábado: 13:00-15:30
19:30-23:00
Domingo: 13:00-15:30
19:30-23:00
", 14, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Típica Cantina Mexicana. Les millors cerveses i els millors tacs de l'Illa a Taquero Molt Pots trucar al 971 94 11 22 per a Take away o bé demanar a JustEat o Uber Eats.", 
"
Dilluns: Tancat
Dimarts: Tancat
Dimecres: 19:30-23:00
Dijous: 19:30-23:00
Divendres: 19:30-23:00
Dissabte: 13:00-15:30
19:30-23:00
Diumenge: 13:00-15:30
19:30-23:00
", 14, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Typical Mexican Cantina. The best beers and the best tacos on the island at Taquero Mucho. You can call 971 94 11 22 to take away or order from JustEat or Uber Eats.", 
"
Monday: Closed
Tuesday: Closed
Wednesday: 7:30 PM - 11:00 PM
Thursday: 7:30 PM - 11:00 PM
Friday: 7:30 PM - 11:00 PM
Saturday: 1:00 PM - 3:30 PM
7:30 PM - 11:00 PM
Sunday: 1:00 PM - 3:30 PM
7:30 PM - 11:00 PM
", 14, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Typisch mexikanische Cantina. Die besten Biere und die besten Tacos der Insel bei Taquero Mucho. 971 94 11 22 zum Mitnehmen anrufen oder über JustEat oder Uber Eats bestellen.", 
"
Montag: Geschlossen
Dienstag: Geschlossen
Mittwoch: 19:30 - 23:00 Uhr
Donnerstag: 19:30 - 23:00 Uhr
Freitag: 19:30 - 23:00 Uhr
Samstag: 13:00 - 15:30 Uhr
19:30 - 23:00 Uhr
Sonntag: 13:00 - 15:30 Uhr
19:30 - 23:00 Uhr
", 14, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("En nuestro restaurante encontrarás una gran variedad de carnes, cortes típicos argentinos y el toque distintivo de las brasas...", 
"
Lunes: 13:00-16:00
20:00-23:00
Martes: Cerrado
Miércoles: 20:00-23:00
Jueves: 20:00-23:00
Viernes: 13:00-16:00
20:00-23:30
Sábado: 13:00-16:00
20:00-23:30
Domingo: 13:00-16:00
", 15, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Al nostre restaurant trobaràs una gran varietat de carns, talls típics argentins i el toc distintiu de les brases...",
"
Dilluns: 13:00-16:00
20:00-23:00
Dimarts: Tancat
Dimecres: 20:00-23:00
Dijous: 20:00-23:00
Divendres: 13:00-16:00
20:00-23:30
Dissabte: 13:00-16:00
20:00-23:30
Diumenge: 13:00-16:00
", 15, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("In our restaurant you will find a great variety of meats, typical Argentinean cuts and the distinctive touch of the coals...", 
"
Monday: 1:00 PM - 4:00 PM
8:00 PM - 11:00 PM
Tuesday: Closed
Wednesday: 8:00 PM - 11:00 PM
Thursday: 8:00 PM - 11:00 PM
Friday: 1:00 PM - 4:00 PM
8:00 PM - 11:30 PM
Saturday: 1:00 PM - 4:00 PM
8:00 PM - 11:30 PM
Sunday: 1:00 PM - 4:00 PM
", 15, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("In unserem Restaurant finden Sie eine große Auswahl an Fleischsorten, typisch argentinische Stücke und die unverwechselbare Note der Glut...", 
"
Montag: 13:00 - 16:00 Uhr
20:00 - 23:00 Uhr
Dienstag: Geschlossen
Mittwoch: 20:00 - 23:00 Uhr
Donnerstag: 20:00 - 23:00 Uhr
Freitag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Samstag: 13:00 - 16:00 Uhr
20:00 - 23:30 Uhr
Sonntag: 13:00 - 16:00 Uhr
", 15, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("C'an Zhang es un restaurante especializado en cocina china tradicional, con una amplia variedad de platos que van desde arroces y tallarines hasta especialidades típicas del país. Su ambiente familiar y su servicio atento lo convierten en una opción confiable para disfrutar de sabores orientales en el centro de Inca.", 
"
Lunes: 12:00-16:00
20:00-00:00
Martes: 12:00-16:00
20:00-00:00
Miércoles: 12:00-16:00
20:00-00:00
Jueves: 12:00-16:00
20:00-00:00
Viernes: 12:00-16:15
20:00-00:00
Sábado: 12:00-16:15
20:00-00:00
Domingo: 12:00-16:15
20:00-00:00
", 16, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("C'an Zhang és un restaurant especialitzat en cuina xinesa tradicional, amb una àmplia varietat de plats que van des d'arrossos i tallarines fins a especialitats típiques del país.", 
"
Dilluns: 12:00-16:00
20:00-00:00
Dimarts: 12:00-16:00
20:00-00:00
Dimecres: 12:00-16:00
20:00-00:00
Dijous: 12:00-16:00
20:00-00:00
Divendres: 12:00-16:15
20:00-00:00
Dissabte: 12:00-16:15
20:00-00:00
Diumenge: 12:00-16:15
20:00-00:00
", 16, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("C'an Zhang is a restaurant specialising in traditional Chinese cuisine, with a wide variety of dishes ranging from rice and noodles to typical Chinese specialities. Its family atmosphere and attentive service make it a reliable option to enjoy oriental flavours in the centre of Inca.", 
"
Monday: 12:00-16:00
20:00-00:00
Tuesday: 12:00-16:00
20:00-00:00
Wednesday: 12:00-16:00
20:00-00:00
Thursday: 12:00-16:00
20:00-00:00
Friday: 12:00-16:15
20:00-00:00
Saturday: 12:00-16:15
20:00-00:00
Sunday: 12:00-16:15
20:00-00:00
", 16, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Das C'an Zhang ist ein auf die traditionelle chinesische Küche spezialisiertes Restaurant mit einem breiten Angebot an Gerichten, das von Reis und Nudeln bis hin zu typischen chinesischen Spezialitäten reicht. Die familiäre Atmosphäre und der aufmerksame Service machen es zu einer zuverlässigen Option, um orientalische Köstlichkeiten im Zentrum von Inca zu genießen.", 
"
Montag: 12:00-16:00
20:00 - 0:00 Uhr
Dienstag: 12:00-16:00
20:00 - 0:00 Uhr
Mittwoch: 12:00-16:00
20:00 - 0:00 Uhr
Donnerstag: 12:00-16:00
20:00 - 0:00 Uhr
Freitag: 12:00-16:15
20:00 - 0:00 Uhr
Samstag: 12:00-16:15
20:00 - 0:00 Uhr
Sonntag: 12:00-16:15
20:00 - 0:00 Uhr
", 16, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Pizza Libre es el lugar perfecto para los amantes de la pizza que buscan una experiencia totalmente personalizada. Ofrecen la posibilidad de crear tu pizza ideal, eligiendo entre una amplia variedad de ingredientes frescos y sabrosos. Además, puedes seleccionar el tamaño que más se ajuste a tu apetito, desde porciones individuales hasta opciones más grandes para compartir. Un ambiente relajado y acogedor, ideal para disfrutar con amigos, familiares o incluso para una comida rápida, sin sacrificar calidad. ¡Haz de tu pizza un plato único con Pizza Libre!", 
"
Lunes: 12:00-16:00
20:00-00:00
Martes: 12:00-16:00
20:00-00:00
Miércoles: 12:00-16:00
20:00-00:00
Jueves: 12:00-16:00
20:00-00:00
Viernes: 12:00-16:15
20:00-00:00
Sábado: 12:00-16:15
20:00-00:00
Domingo: 12:00-16:15
20:00-00:00
", 17, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Pizza Libre és el lloc perfecte per als amants de la pizza que cerquen una experiència totalment personalitzada. Ofereixen la possibilitat de crear la teva pizza ideal, escollint entre una àmplia varietat d'ingredients frescos i saborosos. A més, podeu seleccionar la mida que més s'ajusti a la vostra gana, des de porcions individuals fins a opcions més grans per compartir. Un ambient relaxat i acollidor, ideal per gaudir amb amics, familiars o fins i tot per menjar ràpid, sense sacrificar qualitat. Fes de la teva pizza un plat únic amb Pizza Lliure!", 
"
Dilluns: 12:00-16:00
20:00-00:00
Dimarts: 12:00-16:00
20:00-00:00
Dimecres: 12:00-16:00
20:00-00:00
Dijous: 12:00-16:00
20:00-00:00
Divendres: 12:00-16:15
20:00-00:00
Dissabte: 12:00-16:15
20:00-00:00
Diumenge: 12:00-16:15
20:00-00:00
", 17, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Pizza Libre is the perfect place for pizza lovers looking for a fully customized experience. They offer the ability to create your ideal pizza, choosing from a wide variety of fresh and tasty ingredients. Plus, you can select the size that best suits your appetite, from individual slices to larger options for sharing. A relaxed and cozy atmosphere, ideal to enjoy with friends, family or even for a quick meal, without sacrificing quality, make your pizza a unique dish with Pizza Libre!", 
"
Monday: 12:00-16:00
20:00-00:00
Tuesday: 12:00-16:00
20:00-00:00
Wednesday: 12:00-16:00
20:00-00:00
Thursday: 12:00-16:00
20:00-00:00
Friday: 12:00-16:15
20:00-00:00
Saturday: 12:00-16:15
20:00-00:00
Sunday: 12:00-16:15
20:00-00:00
", 17, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Pizza Libre ist der perfekte Ort für Pizzaliebhaber, die ein ganz persönliches Erlebnis suchen. Sie haben die Möglichkeit, aus einer Vielzahl von frischen und leckeren Belägen Ihre Wunschpizza zusammenzustellen. Außerdem können Sie die Größe wählen, die Ihrem Appetit am besten entspricht, von einzelnen Scheiben bis hin zu größeren Varianten zum Teilen. Eine entspannte und einladende Atmosphäre, ideal zum Genießen mit Freunden, der Familie oder auch für eine schnelle Mahlzeit, ohne Abstriche bei der Qualität zu machen - machen Sie Ihre Pizza zu einem einzigartigen Gericht mit Pizza Libre!", 
"
Montag: 12:00-16:00
20:00 - 0:00 Uhr
Dienstag: 12:00-16:00
20:00 - 0:00 Uhr
Mittwoch: 12:00-16:00
20:00 - 0:00 Uhr
Donnerstag: 12:00-16:00
20:00 - 0:00 Uhr
Freitag: 12:00-16:15
20:00 - 0:00 Uhr
Samstag: 12:00-16:15
20:00 - 0:00 Uhr
Sonntag: 12:00-16:15
20:00 - 0:00 Uhr
", 17, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Vadepizza es el lugar ideal para disfrutar de pizzas de alta calidad en un ambiente acogedor y relajado. Ofrecen una amplia variedad de opciones, desde clásicas hasta combinaciones más innovadoras, todas preparadas con ingredientes frescos y sabrosos. Ya sea que busques una pizza tradicional o te atrevas con algo más creativo, en Vadepizza encontrarás algo que satisfaga tu gusto. Además, su servicio rápido y amable lo convierte en un excelente lugar tanto para una comida rápida como para una velada más tranquila con amigos y familia.", 
"
Lunes: 19:00-23:30
Martes: 19:00-23:30
Miércoles: Cerrado
Jueves: 19:00-23:30
Viernes: 19:00-23:30
Sábado: 19:00-23:30
Domingo: 19:00-23:30
", 18, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Vadepizza és el lloc ideal per gaudir de pizzes d'alta qualitat en un ambient acollidor i relaxat. Ofereixen una àmplia varietat d´opcions, des de clàssiques fins a combinacions més innovadores, totes preparades amb ingredients frescos i saborosos. Ja sigui que busquis una pizza tradicional o t'atreveixis amb una mica més creatiu, a Vadepizza trobaràs una cosa que satisfaci el teu gust. A més, el seu servei ràpid i amable el converteix en un excel·lent lloc tant per a un àpat ràpid com per a una vetllada més tranquil·la amb amics i família.", 
"
Dilluns: 19:00-23:30
Dimarts: 19:00-23:30
Dimecres: Tancat
Dijous: 19:00-23:30
Divendres: 19:00-23:30
Dissabte: 19:00-23:30
Diumenge: 19:00-23:30
", 18, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Vadepizza is the ideal place to enjoy high quality pizzas in a cosy and relaxed atmosphere. They offer a wide variety of options, from classic to more innovative combinations, all prepared with fresh and tasty ingredients. Whether you're looking for a traditional pizza or something more creative, at Vadepizza you'll find something to suit your taste. Plus, the fast and friendly service makes it a great place for both a quick meal and a more relaxed evening with friends and family.", 
"
Monday: 7:00 PM - 11:30 PM
Tuesday: 7:00 PM - 11:30 PM
Wednesday: Closed
Thursday: 7:00 PM - 11:30 PM
Friday: 7:00 PM - 11:30 PM
Saturday: 7:00 PM - 11:30 PM
Sunday: 7:00 PM - 11:30 PM
", 18, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Vadepizza ist der ideale Ort, um qualitativ hochwertige Pizzen in einer gemütlichen und entspannten Atmosphäre zu genießen. Das Angebot reicht von Klassikern bis hin zu innovativen Kombinationen, die alle mit frischen und schmackhaften Zutaten zubereitet werden. Egal, ob Sie eine traditionelle Pizza oder etwas Kreatives suchen, bei Vadepizza finden Sie etwas nach Ihrem Geschmack. Der schnelle und freundliche Service macht das Lokal zu einem idealen Ort für eine schnelle Mahlzeit oder einen entspannten Abend mit Freunden und Familie.", 
"
Montag: 19:00 - 23:30 Uhr
Dienstag: 19:00 - 23:30 Uhr
Mittwoch: Geschlossen
Donnerstag: 19:00 - 23:30 Uhr
Freitag: 19:00 - 23:30 Uhr
Samstag: 19:00 - 23:30 Uhr
Sonntag: 19:00 - 23:30 Uhr
", 18, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Basant Indian Fusion Food es el lugar perfecto para los amantes de la cocina india que buscan una experiencia innovadora y sabrosa. Con su enfoque en la fusión de sabores tradicionales indios con toques modernos, Basant ofrece una experiencia gastronómica única. Desde currys intensos hasta platos tandoori perfectamente elaborados, cada bocado es una explosión de sabores exquisitos. Además, su ambiente acogedor y servicio atento hacen que sea ideal para disfrutar con amigos, familia o incluso para una comida más informal. Si te encanta explorar nuevas fusiones gastronómicas, Basant es el lugar que no te puedes perder.", 
"
Lunes: 12:00-17:00
18:30-00:00
Martes: Cerrado
Miércoles: 12:00-17:00
18:30-00:00
Jueves: 12:00-17:00
18:30-00:00
Viernes: 12:00-17:00
18:30-00:00
Sábado: 12:00-17:00
18:30-00:00
Domingo: 12:00-17:00
18:30-00:00
", 19, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Basant Indian Fusion Food és el lloc perfecte per als amants de la cuina índia que busquen una experiència innovadora i saborosa. Amb el seu enfocament a la fusió de sabors tradicionals indis amb tocs moderns, Basant ofereix una experiència gastronòmica única. Des de curris intensos fins a plats tandoori perfectament elaborats, cada mos és una explosió de sabors exquisits. A més, el seu ambient acollidor i servei atent fan que sigui ideal per gaudir amb amics, família o fins i tot per menjar més informal. Si us encanta explorar noves fusions gastronòmiques, Basant és el lloc que no us podeu perdre.", 
"
Dilluns: 12:00-17:00
18:30-00:00
Dimarts: Tancat
Dimecres: 12:00-17:00
18:30-00:00
Dijous: 12:00-17:00
18:30-00:00
Divendres: 12:00-17:00
18:30-00:00
Dissabte: 12:00-17:00
18:30-00:00
Diumenge: 12:00-17:00
18:30-00:00
", 19, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Basant Indian Fusion Food is the perfect place for Indian food lovers looking for an innovative and tasty experience. With its focus on fusing traditional Indian flavours with modern touches, Basant offers a unique dining experience. From intense curries to perfectly crafted tandoori dishes, every bite is an explosion of exquisite flavours. Plus, its welcoming ambience and attentive service make it ideal for enjoying with friends, family or even for a more casual meal. If you love exploring new gastronomic fusions, Basant is the place not to be missed.", 
"
Monday: 12:00-17:00
18:30-00:00
Tuesday: Closed
Wednesday: 12:00-17:00
18:30-00:00
Thursday: 12:00-17:00
18:30-00:00
Friday: 12:00-17:00
18:30-00:00
Saturday: 12:00-17:00
18:30-00:00
Sunday: 12:00-17:00
18:30-00:00
", 19, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Basant Indian Fusion Food ist der perfekte Ort für Liebhaber der indischen Küche, die auf der Suche nach einem innovativen und schmackhaften Erlebnis sind. Mit seinem Schwerpunkt auf der Verschmelzung traditioneller indischer Aromen mit modernen Akzenten bietet das Basant ein einzigartiges Esserlebnis. Von intensiven Currys bis hin zu perfekt zubereiteten Tandoori-Gerichten - jeder Bissen ist eine Explosion exquisiter Aromen. Das einladende Ambiente und der aufmerksame Service machen das Basant zu einem idealen Ort für ein Essen mit Freunden, der Familie oder auch für eine zwanglose Mahlzeit. Wenn Sie gerne neue gastronomische Kombinationen ausprobieren, sollten Sie sich das Basant nicht entgehen lassen.", 
"
Montag: 12:00-17:00
18:30-00:00
Dienstag: Geschlossen
Mittwoch: 12:00-17:00
18:30-00:00
Donnerstag: 12:00-17:00
18:30-00:00
Freitag: 12:00-17:00
18:30-00:00
Samstag: 12:00-17:00
18:30-00:00
Sonntag: 12:00-17:00
18:30-00:00
", 19, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Ca'n Pedro ofrece una propuesta gastronómica basada en la cocina mediterránea, con platos que destacan por la calidad de sus ingredientes y el sabor tradicional. Su carta incluye opciones variadas que combinan recetas caseras con un toque actual, en un ambiente cálido y familiar ideal para comidas tranquilas o celebraciones especiales.", 
"
Lunes: 12:30-15:30
19:00-22:30
Martes: Cerrado
Miércoles: 12:30-15:30
19:00-22:30
Jueves:12:30-15:30
19:00-22:30
Viernes: 12:30-15:30
19:00-22:30
Sábado: 12:30-15:30
19:00-22:30
Domingo: 12:30-15:30
19:00-22:30
", 20, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Ca'n Pedro ofereix una proposta gastronòmica basada en la cuina mediterrània, amb plats que destaquen per la qualitat dels ingredients i el sabor tradicional. La carta inclou opcions variades que combinen receptes casolanes amb un toc actual, en un ambient càlid i familiar ideal per menjars tranquils o celebracions especials.", 
"
Dilluns: 12:30-15:30
19:00-22:30
Dimarts: Tancat
Dimecres: 12:30-15:30
19:00-22:30
Dijous:12:30-15:30
19:00-22:30
Divendres: 12:30-15:30
19:00-22:30
Dissabte: 12:30-15:30
19:00-22:30
Diumenge: 12:30-15:30
19:00-22:30
", 20, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Ca'n Pedro offers a gastronomic proposal based on Mediterranean cuisine, with dishes that stand out for the quality of their ingredients and traditional flavour. Its menu includes a variety of options that combine homemade recipes with a modern touch, in a warm and familiar atmosphere, ideal for quiet meals or special celebrations.", 
"
Monday: 12:30-3:30 PM
7:00 PM-10:30 PM
Tuesday: Closed
Wednesday: 12:30-3:30 PM
7:00 PM-10:30 PM
Thursday: 12:30-3:30 PM
7:00 PM-10:30 PM
Friday: 12:30-3:30 PM
7:00 PM-10:30 PM
Saturday: 12:30-3:30 PM
7:00 PM-10:30 PM
Sunday: 12:30-3:30 PM
7:00 PM-10:30 PM
", 20, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Das Ca'n Pedro bietet ein gastronomisches Angebot, das auf der mediterranen Küche basiert, mit Gerichten, die sich durch die Qualität ihrer Zutaten und ihren traditionellen Geschmack auszeichnen. Die Speisekarte umfasst eine Vielzahl von Optionen, die hausgemachte Rezepte mit einem modernen Touch kombinieren, in einer warmen und familiären Atmosphäre, ideal für ruhige Mahlzeiten oder besondere Feierlichkeiten.", 
"
Montag: 12:30-15:30
19:00 - 22:30 Uhr
Dienstag: Geschlossen
Mittwoch: 12:30-15:30
19:00 - 22:30 Uhr
Donnerstag: 12:30-15:30
19:00 - 22:30 Uhr
Freitag: 12:30-15:30
19:00 - 22:30 Uhr
Samstag: 12:30-15:30
19:00 - 22:30 Uhr
Sonntag: 12:30-15:30
19:00 - 22:30 Uhr
", 20, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("En nuestra barra cocinamos cada día productos frescos del mercado de Inca.

Ofrecemos desayunos , vermuts y plato del día. Deliciosos bocadillos de pan de cristal a la brasa y tradicionales raciones del «berenar de forqueta» mallorquín son algunas de las recomendaciones.  Ofrecemos además plato de cuchara y plato del dia, al igual que postres caseros. Todo ello bajo la supervisión de la chef Marga Coll del restaurante Miceli.", 
"
Lunes: 09:00-15:30
Martes: 09:00-15:30
Miércoles: 09:00-15:30
Jueves: 09:00-15:30
Viernes: 09:00-15:30
Sábado: 09:00-15:30
Domingo: Cerrado
", 21, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("A la nostra barra cuinem cada dia productes frescos del mercat d'Inca.

Oferim esmorzars, vermuts i plat del dia. Deliciosos entrepans de pa de vidre a la brasa i tradicionals racions de l'albergínia de forqueta mallorquí són algunes de les recomanacions. Oferim a més plat de cullera i plat del dia, igual que postres casolanes. Tot això sota la supervisió de la xef Marga Coll del restaurant Miceli.", 
"
Dilluns: 09:00-15:30
Dimarts: 09:00-15:30
Dimecres: 09:00-15:30
Dijous: 09:00-15:30
Divendres: 09:00-15:30
Dissabte: 09:00-15:30
Diumenge: Tancat
", 21, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("In our bar we cook fresh products from the Inca market every day.

We offer breakfasts, vermouths and daily specials. Delicious sandwiches of grilled glass bread and traditional Majorcan ‘berenar de forqueta’ are some of our recommendations.  We also offer spoon dishes and dish of the day, as well as homemade desserts. All of this under the supervision of chef Marga Coll of the restaurant Miceli.", 
"
Monday: 9:00-15:30
Tuesday: 9:00-15:30
Wednesday: 9:00-15:30
Thursday: 9:00-15:30
Friday: 9:00-15:30
Saturday: 9:00-15:30
Sunday: Closed
", 21, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("In unserer Bar kochen wir jeden Tag frische Produkte vom Inka-Markt.

Wir bieten Frühstücke, Wermut und Tagesgerichte an. Leckere Sandwiches aus gegrilltem Glasbrot und traditionelle mallorquinische „berenar de forqueta“ sind einige unserer Empfehlungen.  Wir bieten auch Löffelgerichte und Tagesgerichte sowie hausgemachte Desserts an. All dies unter der Aufsicht der Küchenchefin Marga Coll vom Restaurant Miceli.", 
"
Montag: 09:00-15:30
Dienstag: 09:00-15:30
Mittwoch: 09:00-15:30
Donnerstag: 9:00-15:30
Freitag: 9:00-15:30
Samstag: 09:00-15:30
Sonntag: Geschlossen
", 21, 4);

INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Restaurante vegetariano y ecológico en Mallorca desde 2004. Descubre nuestro menú diario de productos de temporada y KM 0. Gracias a nuestro propio huerto ecológico conseguimos una calidad excepcional en cada uno de los alimentos que cultivamos con mimo y esmero. Además los otros productos que utilizamos son de km 0 y siempre de productores ecológicos. Tenemos el honor de ser el primer restaurante reconocido como ecológico en las islas y, a día de hoy, el vegetariano más longevo", 
"
Lunes: Cerrado
Martes: 12:30-16:00
Miércoles: 12:30-16:00
Jueves: 12:30-16:00
Viernes: 12:30-16:00
Sábado: 12:30-16:00
Domingo: 12:30-16:00
", 22, 1);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Restaurant vegetarià i ecològic a Mallorca des de 2004. Descobreix el nostre menú diari de productes de temporada i KM 0. Gràcies al nostre propi hort ecològic aconseguim una qualitat excepcional en cadascun dels aliments que cultivem amb cura i cura. A més, els altres productes que utilitzem són de km 0 i sempre de productors ecològics. Tenim l'honor de ser el primer restaurant reconegut com a ecològic a les illes i, a dia d'avui, el vegetarià més longeu", 
"
Dilluns: Tancat
Dimarts: 12:30-16:00
Dimecres: 12:30-16:00
Dijous: 12:30-16:00
Divendres: 12:30-16:00
Dissabte: 12:30-16:00
Diumenge: 12:30-16:00
", 22, 2);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Vegetarian and organic restaurant in Mallorca since 2004. Discover our daily menu of seasonal products and KM 0. Thanks to our own organic garden we get an exceptional quality in each of the foods we grow with care and care. In addition, the other products we use are from km 0 and always from organic producers. We have the honour of being the first restaurant on the islands to be recognised as organic and, to date, the longest vegetarian restaurant on the islands.", 
"
Monday: Closed
Tuesday: 12:30-4:00 PM
Wednesday: 12:30-4:00 PM
Thursday: 12:30-4:00 PM
Friday: 12:30-4:00 PM
Saturday: 12:30-4:00 PM
Sunday: 12:30-4:00 PM
", 22, 3);
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ("Vegetarisches und biologisches Restaurant auf Mallorca seit 2004. Entdecken Sie unser tägliches Menü mit saisonalen Produkten und KM 0. Dank unserer eigenen Bio-Garten erhalten wir eine außergewöhnliche Qualität in jedem der Lebensmittel, die wir mit Sorgfalt und Sorgfalt wachsen. Auch die anderen Produkte, die wir verwenden, stammen aus km 0 und immer von Bio-Produzenten. Wir haben die Ehre, das erste Restaurant auf den Inseln zu sein, das als Bio-Restaurant anerkannt ist, und bis heute das längste vegetarische Restaurant auf den Inseln.", 
"
Montag: Geschlossen
Dienstag: 12:30-16:00
Mittwoch: 12:30-16:00
Donnerstag: 12:30-16:00
Freitag: 12:30-16:00
Samstag: 12:30-16:00
Sonntag: 12:30-16:00
", 22, 4);


/* INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ();
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ();
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES ();
INSERT INTO RESTAURANTE_TRADUCCION (Descripcion, Horario, fk_idRestaurante, fk_idIdioma) VALUES (); */

