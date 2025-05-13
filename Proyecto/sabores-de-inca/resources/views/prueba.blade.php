@extends('layouts.app')

@section('titulo', 'Lista de Restaurantes')

@section('contenido')
    <h2>Lista de restaurantes</h2>

    @if ($restaurantes->isEmpty())
        <p>No hay restaurantes todavía.</p>
    @else
        <ul>
            @foreach ($restaurantes as $restaurante)
                <li><strong>{{ $restaurante->Nombre }}</strong> - {{ $restaurante->Direccion }} - {{$restaurante->Vegano ? 'Sí' : 'No'}}</li>
            @endforeach
        </ul>
    @endif
@endsection
