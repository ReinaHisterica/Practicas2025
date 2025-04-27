<?php

namespace App\Http\Controllers;

use App\Models\RestauranteAccesibilidad;
use Illuminate\Http\Request;

class RestauranteAccesibilidadController extends Controller
{
        // Index para mostrar todos los elementos de la tabla.
        public function index()
        {
            $restaurantesAccesibilidades = RestauranteAccesibilidad::all();
            return response()->json($restaurantesAccesibilidades);
        }
    
        // Show es para mostrar un elemento en específico.
        public function show($id)
        {
            $restauranteAccesibilidade = RestauranteAccesibilidad::find($id); // Busca en la base de datos el elemento con ese ID
    
            if ($restauranteAccesibilidade) {
                return response()->json($restauranteAccesibilidade); // Si lo encuentra, lo devuelve en formato JSON
            } else {
                return response()->json(['mensaje' => 'Tipo Cocina Traducción no encontrado'], 404); // Si no lo encuentra, error 404
            }
        }
}
