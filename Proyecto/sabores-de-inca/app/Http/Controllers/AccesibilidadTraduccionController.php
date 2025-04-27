<?php

namespace App\Http\Controllers;

use App\Models\AccesibilidadTraduccion;
use Illuminate\Http\Request;

class AccesibilidadTraduccionController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index()
    {
        $accesibilidadTraducciones = AccesibilidadTraduccion::all();
        return response()->json($accesibilidadTraducciones);
    }

    // Show es para mostrar un elemento en específico.
    public function show($id)
    {
        $accesibilidadTraduccion = AccesibilidadTraduccion::find($id); // Busca en la base de datos el elemento con ese ID

        if ($accesibilidadTraduccion) {
            return response()->json($accesibilidadTraduccion); // Si lo encuentra, lo devuelve en formato JSON
        } else {
            return response()->json(['mensaje' => 'Accesibilidad Traducción no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }
}
