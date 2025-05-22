document.addEventListener("DOMContentLoaded", () => {
    const map = L.map('map').setView([39.718, 2.911], 17); // Coordenadas de Inca.

    // Iconos por tipo de cocina.
    const iconosPorTipo = {
        1: L.icon({ iconUrl: '/images/markers/marcador-azul-marino.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        2: L.icon({ iconUrl: '/images/markers/marcador-rojo.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        3: L.icon({ iconUrl: '/images/markers/marcador-rosa.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        4: L.icon({ iconUrl: '/images/markers/marcador-negro.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        5: L.icon({ iconUrl: '/images/markers/marcador-marron.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        6: L.icon({ iconUrl: '/images/markers/marcador-naranja.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        7: L.icon({ iconUrl: '/images/markers/marcador-turquesa.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        8: L.icon({ iconUrl: '/images/markers/marcador-amarillo.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        9: L.icon({ iconUrl: '/images/markers/marcador-light-green.png', shadowUrl: '/images/markers/marker-shadow.png' }),
        10: L.icon({ iconUrl: '/images/markers/marcador-lila.png', shadowUrl: '/images/markers/marker-shadow.png' })
    };

    // Cargar mapa base.
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Tipos de cocina (para select y leyenda).
    const tiposCocina = {
        1: 'Mediterráneo',
        2: 'Italiano',
        3: 'Japonés',
        4: 'Comida rápida',
        5: 'Kebab',
        6: 'Argentino',
        7: 'Indio',
        8: 'Mexicano',
        9: 'Poke / Saludable',
        10: 'Chino'
    };

    const selectTipo = document.getElementById('tipoCocina');
    if (selectTipo) {
        // Vaciar select por si hay algo.
        selectTipo.innerHTML = '';

        // Añadir opción "Todos"
        const optionTodos = document.createElement('option');
        optionTodos.value = 0;
        optionTodos.textContent = 'Todos';
        selectTipo.appendChild(optionTodos);

        // Añadir cada tipo de cocina
        for (const id in tiposCocina) {
            const option = document.createElement('option');
            option.value = id;
            option.textContent = tiposCocina[id];
            selectTipo.appendChild(option);
        }
    }

    const checkboxVegano = document.getElementById('vegano');
    const restaurantList = document.getElementById('restaurantList');

    // Variable global para los marcadores en el mapa.
    if (!window.marcadoresLayer) {
        window.marcadoresLayer = L.layerGroup().addTo(map);
    }

    // Función para cargar restaurantes en mapa y lista según filtros.
    function cargarRestaurantes(vegano = null, tipoCocina = 0) {
        let urlApi = '/api/restaurantes?';
        if (vegano !== null) {
            urlApi += `vegano=${vegano}&`;
        }
        if (tipoCocina && tipoCocina != 0) {
            urlApi += `tipoCocina=${tipoCocina}&`;
        }
        urlApi = urlApi.slice(0, -1); // quitar último & si existe

        fetch(urlApi)
            .then(res => {
                if (!res.ok) throw new Error(`HTTP error ${res.status}`);
                return res.json();
            })
            .then(restaurantes => {
                // Limpiar marcadores anteriores
                window.marcadoresLayer.clearLayers();

                // Añadir marcadores nuevos
                restaurantes.forEach(rest => {
                    if (rest.Latitud && rest.Longitud) {
                        const icono = iconosPorTipo[rest.fk_idTipoCocina] || L.icon.default;
                        const marker = L.marker([rest.Latitud, rest.Longitud], { icon: icono });
                        marker.bindPopup(`<strong>${rest.Nombre}</strong><br>${rest.Direccion || ''}`);
                        marker.addTo(window.marcadoresLayer);
                    }
                });

                // Actualizar lista HTML
                actualizarListaHtml(restaurantes);
            })
            .catch(err => console.error('Error al cargar restaurantes:', err));
    }

    // Función para actualizar la lista HTML a partir de un array de restaurantes
    function actualizarListaHtml(restaurantesFiltrados) {
        const tarjetas = document.querySelectorAll('.restaurante-card');

        tarjetas.forEach(tarjeta => {
            const esVegano = tarjeta.dataset.vegano === "1" || tarjeta.dataset.vegano === "true";
            const tipo = parseInt(tarjeta.dataset.tipo, 10);

            // Buscar si la tarjeta está en el array filtrado (puedes usar el nombre como identificador)
            const nombreTarjeta = tarjeta.querySelector('.details h3').textContent;

            const estaEnFiltro = restaurantesFiltrados.some(rest => rest.Nombre === nombreTarjeta);

            if (estaEnFiltro) {
                tarjeta.style.display = "block"; // Mostrar
            } else {
                tarjeta.style.display = "none"; // Ocultar
            }
        });
    }


    // Leer filtros actuales y recargar datos
    function actualizarFiltros() {
        const vegano = checkboxVegano.checked ? 1 : 0;
        const tipoCocina = parseInt(selectTipo.value, 10) || 0;
        cargarRestaurantes(vegano, tipoCocina);
    }

    // Inicializar carga
    actualizarFiltros();

    // Listeners de filtros
    checkboxVegano.addEventListener('change', actualizarFiltros);
    selectTipo.addEventListener('change', actualizarFiltros);

    // Leyenda en el mapa
    const leyenda = L.control({ position: 'bottomright' });

    leyenda.onAdd = function () {
        const div = L.DomUtil.create('div', 'info legend');
        for (const id in tiposCocina) {
            const iconPath = iconosPorTipo[id]?.options.iconUrl || '';
            div.innerHTML += `
                <div style="display: flex; align-items: center; margin-bottom: 4px;">
                    <img src="${iconPath}" style="width: 20px; height: 30px; margin-right: 6px;">
                    <span>${tiposCocina[id]}</span>
                </div>
            `;
        }
        return div;
    };

    leyenda.addTo(map);
});
