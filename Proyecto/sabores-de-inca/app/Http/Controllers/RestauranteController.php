<?php

namespace App\Http\Controllers;

use App\Models\Restaurante;
use Illuminate\Http\Request;
use App\Http\Requests\RestauranteRequest;

class RestauranteController extends Controller
{
    // Index para mostrar todos los elementos de la tabla.
    public function index()
    {
        $restaurantes = Restaurante::all();
        // return response()->json($restaurantes);
        // dd($restaurantes); # Muestra los datos que se están pasando a la vista.
        return view('restaurantes.index', compact('restaurantes')); # Esto es una vista
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
    public function store(RestauranteRequest $request)
    {
        $restaurante = Restaurante::create($request->validated());
        return response()->json([
            'mensaje' => 'Restaurante creado correctamente',
            'restaurante' => $restaurante
        ], 201);
    }
}
