const toggleBoton = document.getElementById('dark-mode-toggle');
const body = document.body;

// Al cargar la página, aplicar modo oscuro si estaba activado
if(localStorage.getItem('dark-mode') === 'enabled') {
    body.classList.add('dark-mode'); // Classlist sirve para gestionar clases css desde js.
}

toggleBoton.addEventListener('click', () => {
    body.classList.toggle('dark-mode');
    if(body.classList.contains('dark-mode')) {
        localStorage.setItem('dark-mode', 'enabled');
    } else {
        localStorage.removeItem('dark-mode');
    }
});
