document.addEventListener("DOMContentLoaded", () => {
    const map = L.map('map').setView([39.718, 2.911], 17); // Coordenadas de Inca

    // Iconos por tipo de cocina
    const iconosPorTipo = {
        1: L.icon({ iconUrl: '/images/markers/marcador-azul-marino.png', shadowUrl: '/images/markers/marker-shadow.png' }),     // Mediterráneo
        2: L.icon({ iconUrl: '/images/markers/marcador-rojo.png', shadowUrl: '/images/markers/marker-shadow.png' }),      // Italiano
        3: L.icon({ iconUrl: '/images/markers/marcador-rosa.png', shadowUrl: '/images/markers/marker-shadow.png' }),    // Japonés
        4: L.icon({ iconUrl: '/images/markers/marcador-negro.png', shadowUrl: '/images/markers/marker-shadow.png' }),   // Comida rápida
        5: L.icon({ iconUrl: '/images/markers/marcador-marron.png', shadowUrl: '/images/markers/marker-shadow.png' }),    // Kebab
        6: L.icon({ iconUrl: '/images/markers/marcador-naranja.png', shadowUrl: '/images/markers/marker-shadow.png' }),     // Argentino
        7: L.icon({ iconUrl: '/images/markers/marcador-turquesa.png', shadowUrl: '/images/markers/marker-shadow.png' }),   // Indio
        8: L.icon({ iconUrl: '/images/markers/marcador-amarillo.png', shadowUrl: '/images/markers/marker-shadow.png' }),   // Mexicano
        9: L.icon({ iconUrl: '/images/markers/marcador-light-green.png', shadowUrl: '/images/markers/marker-shadow.png' }),// Poke / Saludable
        10: L.icon({ iconUrl: '/images/markers/marcador-lila.png', shadowUrl: '/images/markers/marker-shadow.png' })     // Chino
    };

    // Cargar mapa base
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Obtener los restaurantes y mostrarlos con sus iconos personalizados
    fetch('/api/restaurantes')
        .then(res => res.json())
        .then(restaurantes => {
            restaurantes.forEach(rest => {
                if (rest.Latitud && rest.Longitud) {
                    const icono = iconosPorTipo[rest.fk_idTipoCocina] || iconosPorTipo[1]; // usa azul por defecto si no existe
                    const marker = L.marker([rest.Latitud, rest.Longitud], { icon: icono }).addTo(map);
                    marker.bindPopup(`<strong>${rest.Nombre}</strong><br>${rest.Direccion || ''}`);
                }
            });
        })
        .catch(err => console.error('Error al cargar restaurantes:', err));

    // Checkbox para filtrar por vegano
    const checkbox = document.getElementById('vegano');
    const restaurantList = document.getElementById('restaurantList');

    checkbox.addEventListener('change', () => {
        const vegano = checkbox.checked ? 1 : 0;

        fetch(`/restaurantes?vegano=${vegano}`, {
            headers: {
                'X-Requested-With': 'XMLHttpRequest'
            }
        })
            .then(response => response.text())
            .then(html => {
                restaurantList.innerHTML = html;
                console.log(html);
            })
            .catch(error => {
                console.error('Error al filtrar restaurantes:', error);
            });
    });

    const leyenda = L.control({ position: 'bottomright' });

    leyenda.onAdd = function (map) {
        const div = L.DomUtil.create('div', 'info legend');
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
