document.addEventListener("DOMContentLoaded", () => {
    // alert("Hoa");
    document.getElementById('vegano').addEventListener('change', function () { // El change detecta cambios en este checkbox.
        alert("Checkbox modificado!");
    });

})