@extends('layouts.app')

@section('titulo', 'Lista de Restaurantes')
@vite('resources/js/restaurantes.js') <!-- Esto importará el js exclusivamente en la página de los restaurantes. -->
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
<div class="restaurantes-container" id="restaurantList">
    <div class="restaurantes-container" id="restaurantList">
        @include('restaurantes._lista')
    </div>

</div>
<div id="map" style="height: 500px; margin-top: 10rem; margin-bottom: 2rem;"></div>
@endif
@endsection