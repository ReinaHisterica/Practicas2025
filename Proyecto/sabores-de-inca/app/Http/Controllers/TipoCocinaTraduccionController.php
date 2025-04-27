<?php

namespace App\Http\Controllers;

use App\Models\TipoCocinaTraduccion;
use Illuminate\Http\Request;

class TipoCocinaTraduccionController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index()
    {
        $tiposCocinaTraduccion = TipoCocinaTraduccion::all();
        return response()->json($tiposCocinaTraduccion);
    }

    // Show es para mostrar un elemento en específico.
    public function show($id)
    {
        $tipoCocinaTraduccion = TipoCocinaTraduccion::find($id); // Busca en la base de datos el elemento con ese ID

        if ($tipoCocinaTraduccion) {
            return response()->json($tipoCocinaTraduccion); // Si lo encuentra, lo devuelve en formato JSON
        } else {
            return response()->json(['mensaje' => 'Tipo Cocina Traducción no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }
}
