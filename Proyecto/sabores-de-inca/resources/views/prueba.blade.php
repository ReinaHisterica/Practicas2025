@extends('layouts.app')

@section('titulo', 'Lista de Restaurantes')

@section('contenido')
<h2>Lista de restaurantes</h2>

@if ($restaurantes->isEmpty())
<p>No hay restaurantes todavía.</p>
@else
<ul>
    @foreach ($restaurantes as $restaurante)
    <li class="restaurante"><strong>{{ $restaurante->Nombre }}</strong> - {{ $restaurante->Direccion }} - {{$restaurante->Vegano ? 'Sí' : 'No'}} <img src="{{ Storage::url($restaurante->Foto) }}" alt="Foto del restaurante">
</li>
    @endforeach
</ul>
@endif
@endsection