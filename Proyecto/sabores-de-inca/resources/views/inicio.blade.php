@extends('layouts.app')

@section('titulo', 'Inicio | Sabores de Inca')

@section('contenido')
    <section style="text-align: center; padding: 2rem; background-color: #ffffff; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
        <h2 style="font-size: 2rem; margin-bottom: 1rem;">Descubre los mejores sabores de Inca</h2>
        <p style="font-size: 1.1rem; margin-bottom: 2rem;">
            Guía gastronómica para explorar restaurantes locales, ver cartas, precios, ubicación y más.
        </p>
        <a href="/restaurantes" style="background-color: rgb(253, 0, 0); color: white; padding: 1rem 2rem; border-radius: 5px; text-decoration: none;">
            Ver restaurantes
        </a>
    </section>

    <section style="margin-top: 3rem; display: flex; justify-content: space-around; flex-wrap: wrap; gap: 2rem;">
        <div style="flex: 1; min-width: 200px; text-align: center;">
            <h3>Opciones veganas</h3>
            <p>Filtra restaurantes con platos veganos fácilmente.</p>
        </div>
        <div style="flex: 1; min-width: 200px; text-align: center;">
            <h3>Consulta la carta</h3>
            <p>Ve los menús antes de decidir dónde comer.</p>
        </div>
        <div style="flex: 1; min-width: 200px; text-align: center;">
            <h3>Ubicación en el mapa</h3>
            <p>Encuentra cada restaurante en el mapa interactivo.</p>
        </div>
    </section>
@endsection
