<?php

namespace App\Http\Controllers;

use App\Http\Requests\RestauranteCreateRequest;
use App\Http\Requests\RestauranteUpdateRequest;
use App\Models\Restaurante;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;


class RestauranteController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index(Request $request)
    {
        // Empezamos la query con la relación de valoraciones
        $query = Restaurante::with('valoraciones')
            ->withAvg('valoraciones as promedio_valoracion', 'Valoracion');

        // Si se solicita el filtro vegano, lo aplicamos
        if ($request->has('vegano') && $request->vegano == 1) {
            $query->where('Vegano', true); // Recuerda: columna con mayúscula
        }

        // Ordenamos por valoración promedio de mayor a menor
        $query->orderByDesc('promedio_valoracion');

        // Ejecutamos la consulta
        $restaurantes = $query->get();

        // Si es una petición AJAX, devolvemos solo el fragmento de lista
        if ($request->ajax()) {
            return view('restaurantes._lista', compact('restaurantes'));
        }

        // Si no es AJAX, devolvemos la vista completa
        return view('restaurantes.index', compact('restaurantes'));
    }


    // Este método sería usado desde `api.php`
    public function indexApi(Request $request)
    {
        $query = Restaurante::with('valoraciones')
            ->withAvg('valoraciones as promedio_valoracion', 'Valoracion');

        if ($request->has('vegano') && $request->vegano == 1) {
            $query->where('Vegano', true);
        }

        if ($request->has('tipoCocina') && $request->tipoCocina != 0) {
            $query->where('fk_idTipoCocina', $request->tipoCocina);
        }

        $query->orderByDesc('promedio_valoracion');

        return response()->json($query->get());
    }

    // Show es para mostrar un elemento en específico.
    public function show($id)
    {
        $restaurante = Restaurante::find($id); // Busca en la base de datos el elemento con ese ID

        if ($restaurante) {
            return response()->json($restaurante); // Si lo encuentra, lo devuelve en formato JSON
        } else {
            return response()->json(['mensaje' => 'Restaurante no encontrado'], 404); // Si no lo encuentra, error 404
        }
    }

    // Store es la función que se encarga de recibir peticiones POST.
    public function store(RestauranteCreateRequest $request)
    {
        try {
            $validated = $request->validated();
            Restaurante::create($validated);

            return response()->json(['mensaje' => 'Restaurante creado correctamente'], 201); // 201: creado
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al crear el restaurante.',
                'error' => $e->getMessage()
            ], 400);
        }
    }

    // Función para controlar los updates.
    public function update(RestauranteUpdateRequest $request, $id)
    {
        try {
            $restaurante = Restaurante::findOrFail($id); // Lanza 404 si no existe

            $datos = $request->validated(); // Solo los campos válidos
            $restaurante->update($datos);

            return response()->json(['mensaje' => 'Restaurante actualizado correctamente'], 200);
        } catch (\Exception $e) {
            return response()->json([
                'mensaje' => 'Error al actualizar el restaurante.',
                'error' => $e->getMessage()
            ], 400);
        }
    }
    // Método para eliminar una accesibilidad
    public function destroy($id)
    {
        try {
            $accesibilidad = Restaurante::findOrFail($id);
            $accesibilidad->delete();

            return response()->json([
                'mensaje' => 'Restaurante eliminado correctamente.'
            ], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'error' => 'El restaurante con el ID proporcionado no existe.'
            ], 404);
        }
    }
    public function subirImagen(Request $request, $id) // Aparte de las funciones store, destroy... también puedo crear yo unas propias. 
    {
        // Valido la Foto.
        $request->validate([
            'Foto' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $restaurante = Restaurante::findOrFail($id);

        // Subo la Foto.
        if ($request->hasFile('Foto')) {
            $imagenPath = $request->file('Foto')->store('imagenes', 'public'); // Laravel usará la carpeta storage/app/public/imagenes para guardar las imágenes. Es una carpeta accesible para Laravel.

            // Aquí guardo la ruta de la Foto en el modelo.
            $restaurante->Foto = $imagenPath;
            $restaurante->save();

            return response()->json(['success' => 'Foto subida correctamente', 'path' => $imagenPath]);
        }

        return response()->json(['error' => 'Se ha producido un error. No se ha subido ninguna Foto.'], 400);
    }
}
