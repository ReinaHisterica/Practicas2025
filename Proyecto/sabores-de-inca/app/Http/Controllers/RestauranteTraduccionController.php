<?php

namespace App\Http\Controllers;

use App\Models\RestauranteTraduccion;
use App\Http\Requests\RestauranteTraduccionCreateRequest;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Http\Requests\RestauranteTraduccionUpdateRequest;


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

    public function store(RestauranteTraduccionCreateRequest $request)
    {
        try {
            // Valida y obtén los datos del request
            $validated = $request->validated();

            // Crea la nueva traducción en la base de datos
            RestauranteTraduccion::create($validated);

            // Respuesta de éxito
            return response()->json(['mensaje' => 'Traducción de restaurante creada correctamente.'], 201);
        } catch (\Exception $e) {
            // Respuesta de error en caso de excepciones
            return response()->json([
                'mensaje' => 'Error al crear la traducción.',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    public function update(RestauranteTraduccionUpdateRequest $request, $id)
    {
        $restauranteTraduccion = RestauranteTraduccion::findOrFail($id);

        // Actualiza el restauranteTraduccion con los datos validados
        $restauranteTraduccion->update($request->validated());

        return response()->json([
            'mensaje' => 'restauranteTraduccion actualizado correctamente.',
            'datos' => $restauranteTraduccion
        ], 200);
    }

    // Método para eliminar una accesibilidad
    public function destroy($id)
    {
        try {
            $accesibilidad = RestauranteTraduccion::findOrFail($id);
            $accesibilidad->delete();

            return response()->json([
                'mensaje' => 'accesibilidad eliminada correctamente.'
            ], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'error' => 'La accesibilidad con el ID proporcionado no existe.'
            ], 404);
        }
    }
}
