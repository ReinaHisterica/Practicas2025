<?php

namespace App\Http\Controllers;

use App\Models\Restaurante;
use Illuminate\Http\Request;

class RestauranteController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index()
    {
        $restaurantes = Restaurante::all();
        return response()->json($restaurantes);
    }

    // Show es para mostrar un elemento en específico.
    public function show($id)
    {
        $restaurante = Restaurante::find($id); // Busca en la base de datos el elemento con ese ID

        if ($restaurante) {
            return response()->json($restaurante); // Si lo encuentra, lo devuelve en formato JSON
        } else {
            return response()->json(['mensaje' => 'Restaurante no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }
}
