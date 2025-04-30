<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurantes</title>
</head>
<body>
    <h1>Lista de Restaurantes</h1>
    @if($restaurantes->isEmpty())
        <p>No hay restaurantes disponibles.</p>
    @else
        <ul>
            @foreach($restaurantes as $restaurante)
                <li>{{ $restaurante->Nombre }}</li>
            @endforeach
        </ul>
    @endif
</body>
</html>
