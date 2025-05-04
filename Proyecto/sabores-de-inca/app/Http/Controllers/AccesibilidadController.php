<?php

namespace App\Http\Controllers;

use App\Models\Accesibilidad; // Hay que importar el Modelo !!!
use App\Http\Requests\AccesibilidadCreateRequest;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\AcceptHeader;
use Illuminate\Database\Eloquent\ModelNotFoundException;


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

    public function store(AccesibilidadCreateRequest $request)
    {
        try {
            $validated = $request->validated();
            Accesibilidad::create($validated);

            return response()->json(['mensaje' => 'Accesibilidad creada correctamente'], 201); // 201: creado
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al crear el id de accesibilidad.',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    public function update(AccesibilidadCreateRequest $request, $id)
    {
        try {
            $restaurante = Accesibilidad::findOrFail($id); // Lanza 404 si no existe

            $datos = $request->validated(); // Solo los campos válidos
            $restaurante->update($datos);

            return response()->json(['mensaje' => 'El id de la accesibilidad ha sido actualizado correctamente'], 200);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al actualizar el id de la accesibilidad.',
                'error' => $e->getMessage()
            ], 400);
        }
    }
    // Método para eliminar una accesibilidad
    public function destroy($id)
    {
        try {
            $accesibilidad = Accesibilidad::findOrFail($id);
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
