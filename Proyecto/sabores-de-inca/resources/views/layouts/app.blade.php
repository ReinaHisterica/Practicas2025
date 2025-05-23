<!-- Esta va a ser la plantilla de los documentos del proyecto. -->
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('titulo', 'Sabors d\'Inca')</title> <!-- Esto del yield es como los block que hay en Flask. Este bloque es el del título. -->
    @vite('resources/css/app.css')
    @vite('resources/css/dark-mode.css')
    @vite('resources/js/dark-mode.js')
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">

</head>

<body>
    <header style="background-color:rgb(253, 0, 0); padding: 1rem;">
        <h1 style="margin: 0;">Sabores de Inca</h1>
        <button id="dark-mode-toggle" aria-label="Cambiar modo oscuro">Modo oscuro</button>
    </header>

    <nav style="background-color: #eee; padding: 0.5rem;">
        <a href="/" style="margin-right: 1rem;">Inicio</a>
        <a href="/restaurantes" style="margin-right: 1rem;">Restaurantes</a>
        <a href="/quien-soy" style="margin-right: 1rem;">Quién soy</a>
    </nav>

    <main style="padding: 2rem;">
        @yield('contenido')
    </main>

    <footer style="background-color: #f8f8f8; padding: 1rem; text-align: center;">
        <p>&copy; {{ date('Y') }} Sabores de Inca. Todos los derechos reservados.</p>
    </footer>
</body>

</html>