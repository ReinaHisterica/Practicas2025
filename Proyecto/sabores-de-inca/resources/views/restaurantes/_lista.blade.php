@foreach ($restaurantes as $restaurante)
    <div class="restaurante-card">
        <img src="{{ Storage::url($restaurante->Foto) }}" alt="Foto del restaurante">
        <div class="details">
            <h3>{{ $restaurante->Nombre }}</h3>
            <p>{{ $restaurante->Direccion }} 📍</p>
            <p>Vegano: {{ $restaurante->Vegano ? 'Sí' : 'No' }}</p>
            <p>Media:
                {{ number_format(
                    $restaurante->valoraciones->avg('Valoracion'), 
                    1, '.', '') }} ⭐
            </p>
        </div>
    </div>
@endforeach
