<?php

namespace App\Http\Controllers;

use App\Models\RestauranteTraduccion;
use Illuminate\Http\Request;

class RestauranteTraduccionController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index()
    {
        $restaurantesTraducciones = RestauranteTraduccion::all();
        return response()->json($restaurantesTraducciones);
    }

    // Show es para mostrar un elemento en específico.
    public function show($id)
    {
        $restauranteTraduccion = RestauranteTraduccion::find($id); // Busca en la base de datos el elemento con ese ID

        if ($restauranteTraduccion) {
            return response()->json($restauranteTraduccion); // Si lo encuentra, lo devuelve en formato JSON
        } else {
            return response()->json(['mensaje' => 'Restaurante Traducción no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }
}
