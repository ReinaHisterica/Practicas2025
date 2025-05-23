@extends('layouts.app')

@section('titulo', 'Lista de Restaurantes')

@vite('resources/js/restaurantes.js') <!-- Esto importa el JS solo en esta vista -->

@section('contenido')
<h2>Flitros</h2>
<select id="tipoCocina">
    <!-- Opciones se llenan con JS -->
</select>

<label for="vegano">¿Vegano?</label>
<input type="checkbox" id="vegano">

<select id="filtroMedia">
    <option value="0">Cualquier media</option>
    <option value="1">⭐</option>
    <option value="2">⭐⭐</option>
    <option value="3">⭐⭐⭐</option>
    <option value="4">⭐⭐⭐⭐</option>
    <option value="5">⭐⭐⭐⭐⭐</option>
</select>


<h2>Lista de restaurantes</h2>

@if ($restaurantes->isEmpty())
<p>No hay restaurantes todavía.</p>
@else
<div class="restaurantes-container" id="restaurantList">
    @include('restaurantes._lista')
</div>
<div id="map" style="height: 500px; margin-top: 10rem; margin-bottom: 2rem;"></div>
@endif
@endsection