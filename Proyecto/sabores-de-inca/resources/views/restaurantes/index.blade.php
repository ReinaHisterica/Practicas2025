@extends('layouts.app')

@section('titulo', 'Lista de Restaurantes')

@section('contenido')
<h2>Filtrar</h2>
<form method="POST">
    <label for="vegano">¿Vegano?</label>
    <input type="checkbox" id="vegano">
    <!-- GOogle developer compte: api de google maps. Mapa en la portada amb tots els marcadors. -->
    <!-- Posiblemente, en la base de datos tenga que añadir otro atributo en restaurantes que sea de latitud y otro de longitud (o altitud ???) -->
</form>

<h2>Lista de restaurantes</h2>

@if ($restaurantes->isEmpty())
<p>No hay restaurantes todavía.</p>
@else
<div class="restaurantes-container">
    @foreach ($restaurantes as $restaurante)
    <div class="restaurante-card">
        <img src="{{ Storage::url($restaurante->Foto) }}" alt="Foto del restaurante">
        <div class="details">
            <h3>{{ $restaurante->Nombre }}</h3>
            <p>{{ $restaurante->Direccion }}</p>
            <p>Vegano: {{ $restaurante->Vegano ? 'Sí' : 'No' }}</p>
            <p>Media:
                {{ number_format(
            $restaurante->valoraciones->avg('Valoracion'), 
            1, '.', '') }}
            </p>
        </div>
    </div>
    @endforeach
</div>
@endif
@endsection