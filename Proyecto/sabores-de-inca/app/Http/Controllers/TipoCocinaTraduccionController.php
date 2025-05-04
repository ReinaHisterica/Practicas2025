<?php

namespace App\Http\Controllers;

use App\Models\TipoCocinaTraduccion;
use Illuminate\Http\Request;
use App\Http\Requests\TipoCocinaTraduccionCreateRequest;
use App\Http\Requests\TipoCocinaTraduccionUpdateRequest;

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

    public function store(TipoCocinaTraduccionCreateRequest $request)
    {
        try {
            $validated = $request->validated();
            TipoCocinaTraduccion::create($validated);

            return response()->json(['mensaje' => 'Traducción de tipo de cocina creada correctamente'], 201);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al crear la traducción.',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    public function update(TipoCocinaTraduccionUpdateRequest $request, $id)
    {
        try {
            $traduccion = TipoCocinaTraduccion::findOrFail($id);
            $traduccion->update($request->validated());

            return response()->json(['mensaje' => 'Traducción actualizada correctamente']);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al actualizar la traducción.',
                'error' => $e->getMessage()
            ], 400);
        }
    }


    public function destroy($id)
    {
        try {
            $traduccion = TipoCocinaTraduccion::findOrFail($id);
            $traduccion->delete();

            return response()->json(['mensaje' => 'Traducción eliminada correctamente']);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al eliminar la traducción.',
                'error' => $e->getMessage()
            ], 400);
        }
    }
}
