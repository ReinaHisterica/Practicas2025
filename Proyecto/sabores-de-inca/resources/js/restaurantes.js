document.addEventListener("DOMContentLoaded", () => {
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
})