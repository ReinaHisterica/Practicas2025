@foreach ($restaurantes as $restaurante)
<div class="restaurante-card">
    <img src="{{ Storage::url($restaurante->Foto) }}" alt="Foto del restaurante">
    <div class="details">
        <h3>{{ $restaurante->Nombre }}</h3>
        <p>{{ $restaurante->Direccion }} 📍</p>
        @if ($restaurante->Vegano)
        <p style="color:green">Vegano</p>
            @else
        <p style="color:red">No vegano</p>
            @endif
            <!-- <p style="color:green">{{ $restaurante->Vegano ? 'Vegano' : '' }}</p> -->
        <p>
            {{ number_format($restaurante->promedio_valoracion ?? 0, 1, '.', '') }} ⭐
        </p>
    </div>
</div>
@endforeach