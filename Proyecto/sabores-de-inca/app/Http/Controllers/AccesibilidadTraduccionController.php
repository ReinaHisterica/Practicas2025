<?php

namespace App\Http\Controllers;

use App\Models\AccesibilidadTraduccion;
use App\Http\Requests\AccesibilidadTraduccionCreateRequest;
use App\Http\Requests\AccesibilidadTraduccionUpdateRequest;
use Illuminate\Database\Eloquent\ModelNotFoundException;
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

    public function store(AccesibilidadTraduccionCreateRequest $request)
    {
        try {
            $validated = $request->validated();
            AccesibilidadTraduccion::create($validated);

            return response()->json(['mensaje' => 'Traducción de accesibilidad creada correctamente.'], 201); // 201: creado
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al crear la traducción de la accesibilidad.',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    public function update(AccesibilidadTraduccionUpdateRequest $request, $id)
    {
        $accesibilidadTraduccion = AccesibilidadTraduccion::findOrFail($id);

        $accesibilidadTraduccion->update($request->validated());

        return response()->json([
            'mensaje' => 'Traducción de accesibilidad actualizada correctamente.',
            'datos' => $accesibilidadTraduccion
        ]);
    }
        // Método para eliminar una accesibilidad
        public function destroy($id)
        {
            try {
                $accesibilidad = AccesibilidadTraduccion::findOrFail($id);
                $accesibilidad->delete();
    
                return response()->json([
                    'mensaje' => 'La traducción de accesibilidad eliminada correctamente.'
                ], 200);
            } catch (ModelNotFoundException $e) {
                return response()->json([
                    'error' => 'La traducción de accesibilidad con el ID proporcionado no existe.'
                ], 404);
            }
        }
}
