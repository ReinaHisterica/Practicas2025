<?php

namespace App\Http\Controllers;

use App\Models\Idioma;
use Illuminate\Http\Request;

class IdiomaController extends Controller
{
    // Index es para mostrar todos los elementos. En este caso, para mostrar todos los idiomas.
    public function index()
    {
        $idiomas = Idioma::all();
        return response()->json($idiomas);
    }

    // Show es para mostrar un elemento en específico. En este caso, será para mostrar un idioma en concreto.
    public function show($id)
    {
        $idioma = Idioma::find($id); // Busca en la base de datos el idioma con ese ID

        if ($idioma) {
            return response()->json($idioma); // Si lo encuentra, devuelve el idioma en formato JSON
        } else {
            return response()->json(['mensaje' => 'Idioma no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }
}
