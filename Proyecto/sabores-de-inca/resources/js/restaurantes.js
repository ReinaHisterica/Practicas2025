document.addEventListener("DOMContentLoaded", () => {
    const map = L.map('map').setView([39.714, 2.911], 13); // Coordenadas de Inca

    // Cargar mapa base (OpenStreetMap)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Llamar a la API para obtener restaurantes
    fetch('/api/restaurantes')
        .then(res => res.json())
        .then(restaurantes => {
            restaurantes.forEach(rest => {
                if (rest.Latitud && rest.Longitud) {
                    const marker = L.marker([rest.Latitud, rest.Longitud]).addTo(map);
                    marker.bindPopup(`<strong>${rest.Nombre}</strong><br>${rest.Direccion || ''}`);
                }
            });
        })
        .catch(err => console.error('Error al cargar restaurantes:', err));
    // alert("Hoa");
    // document.getElementById('vegano').addEventListener('change', function () { // El change detecta cambios en este checkbox.
    //     alert("Checkbox modificado!");
    // });
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

    const iconoVerde = new L.Icon({
        iconUrl: 'https://leafletjs.com/examples/custom-icons/leaf-green.png',
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowUrl: 'https://leafletjs.com/examples/custom-icons/leaf-shadow.png',
        shadowSize: [41, 41]
    });

    // Y luego:
    L.marker([lat, lng], { icon: iconoVerde }).addTo(map);
})