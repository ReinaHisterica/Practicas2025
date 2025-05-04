<?php

namespace App\Http\Controllers;

use App\Models\TipoCocina;
use Illuminate\Http\Request;
use App\Http\Requests\TipoCocinaCreateRequest;


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

    public function store(TipoCocinaCreateRequest $request)
    {
        try {
            $validated = $request->validated();
            TipoCocina::create($validated);

            return response()->json(['mensaje' => 'Tipo de cocina creado correctamente'], 201);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al crear el tipo de cocina.',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    public function destroy($id)
    {
        $tipoCocina = TipoCocina::find($id);

        if (!$tipoCocina) {
            return response()->json(['mensaje' => 'Tipo de cocina no encontrado'], 404);
        }

        try {
            $tipoCocina->delete();
            return response()->json(['mensaje' => 'Tipo de cocina eliminado correctamente']);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al eliminar el tipo de cocina.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
