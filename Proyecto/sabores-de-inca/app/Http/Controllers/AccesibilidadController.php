<?php

namespace App\Http\Controllers;

use App\Models\Accesibilidad; // Hay que importar el Modelo !!!
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\AcceptHeader;

class AccesibilidadController extends Controller
{
    // Mostrar todas las accesibilidades
    public function index()
    {
        $accesibilidades = Accesibilidad::all(); // Obtiene todos los registros de la tabla.
        return response()->json($accesibilidades); // Devuelve en formato JSON para poder visualizarlos con Postman o en el navegador.
    }

    // Mostrar una accesibilidad específica
    public function show($id)
    {
        $accesibilidade = Accesibilidad::find($id);
        return response()->json($accesibilidade);
    }
}
