<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AccesibilidadController; // Importante añadir el import para que encuentre el AccesibilidadController del Route::Get.
use App\Http\Controllers\AccesibilidadTraduccionController;
use App\Http\Controllers\IdiomaController;
use App\Http\Controllers\RestauranteAccesibilidadController;
use App\Http\Controllers\RestauranteController;
use App\Http\Controllers\RestauranteTraduccionController;
use App\Http\Controllers\TipoCocinaController;
use App\Http\Controllers\TipoCocinaTraduccionController;

Route::get('/', function () {
    return view('welcome'); // No borrar. Esto es para cuando entre a la raíz del proyecto.
});

// Una ruta por cada tabla.
Route::get('/accesibilidad', [AccesibilidadController::class, 'index']);
Route::get('/accesibilidad/{id}', [AccesibilidadController::class, 'show']);

Route::get('/idioma', [IdiomaController::class, 'index']);
Route::get('/idioma/{id}', [IdiomaController::class, 'show']); // Ruta para mostrar un idioma a partir de un id.

Route::get('/accesibilidad-traduccion', [AccesibilidadTraduccionController::class, 'index']);
Route::get('/accesibilidad-traduccion/{id}', [AccesibilidadTraduccionController::class, 'show']);

Route::get('/tipo-cocina', [TipoCocinaController::class, 'index']);
Route::get('/tipo-cocina/{id}', [TipoCocinaController::class, 'show']);

Route::get('/tipo-cocina-traduccion', [TipoCocinaTraduccionController::class, 'index']);
Route::get('/tipo-cocina-traduccion/{id}', [TipoCocinaTraduccionController::class, 'show']);

Route::get('/restaurante', [RestauranteController::class, 'index']);
Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

Route::get('/restaurante-accesibilidad', [RestauranteAccesibilidadController::class, 'index']);
Route::get('/restaurante-accesibilidad/{id}', [RestauranteAccesibilidadController::class, 'show']);

Route::get('/restaurante-traduccion', [RestauranteTraduccionController::class, 'index']);
Route::get('/restaurante-traduccion/{id}', [RestauranteTraduccionController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);

// Route::get('/restaurante', [RestauranteController::class, 'index']);
// Route::get('/restaurante/{id}', [RestauranteController::class, 'show']);
