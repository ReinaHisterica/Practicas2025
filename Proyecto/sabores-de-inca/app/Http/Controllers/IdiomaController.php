<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\IdiomaCreateRequest;
use App\Http\Requests\IdiomaUpdateRequest;
use App\Models\Idioma;
use Illuminate\Database\Eloquent\ModelNotFoundException;


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

    public function store(IdiomaCreateRequest $request)
    {
        $idioma = Idioma::create($request->validated());

        return response()->json([
            'mensaje' => 'Idioma creado correctamente.',
            'datos' => $idioma
        ], 201);
    }

    public function update(IdiomaUpdateRequest $request, $id)
    {
        $idioma = Idioma::findOrFail($id);

        // Actualiza el idioma con los datos validados
        $idioma->update($request->validated());

        return response()->json([
            'mensaje' => 'Idioma actualizado correctamente.',
            'datos' => $idioma
        ], 200);
    }

    // Método para eliminar un idioma
    public function destroy($id)
    {
        try {
            // Intenta encontrar el idioma y eliminarlo
            $idioma = Idioma::findOrFail($id);
            $idioma->delete();

            return response()->json([
                'mensaje' => 'Idioma eliminado correctamente.'
            ], 200);
        } catch (ModelNotFoundException $e) {
            // Si el idioma no existe, captura la excepción y devuelve un mensaje personalizado
            return response()->json([
                'error' => 'El idioma con el ID proporcionado no existe.'
            ], 404);
        }
    }
}
