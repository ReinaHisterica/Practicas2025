<?php

namespace App\Http\Controllers;

use App\Models\TipoCocina;
use Illuminate\Http\Request;

class TipoCocinaController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index()
    {
        $tiposCocina = TipoCocina::all();
        return response()->json($tiposCocina);
    }

    // Show es para mostrar un elemento en específico.
    public function show($id)
    {
        $tipoCocina = TipoCocina::find($id); // Busca en la base de datos el elemento con ese ID

        if ($tipoCocina) {
            return response()->json($tipoCocina); // Si lo encuentra, lo devuelve en formato JSON
        } else {
            return response()->json(['mensaje' => 'Tipo Cocina no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }
}
