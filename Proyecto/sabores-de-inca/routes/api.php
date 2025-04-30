<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\RestauranteController;
use App\Http\Controllers\TipoCocinaController;
use App\Http\Controllers\TipoCocinaTraduccionController;
use App\Http\Controllers\AccesibilidadController;
use App\Http\Controllers\AccesibilidadTraduccionController;
use App\Http\Controllers\IdiomaController;
use App\Http\Controllers\RestauranteAccesibilidadController;
use App\Http\Controllers\RestauranteTraduccionController;

require base_path('routes/test.php');


Route::get('/prueba', function () {
    return '¡Funciona!';
});
// Rutas API para restaurantes
Route::prefix('restaurantes')->group(function () {
    Route::get('/', [RestauranteController::class, 'index']);
    Route::get('/{id}', [RestauranteController::class, 'show']);
    Route::post('/', [RestauranteController::class, 'store']);
});

// Rutas API para tipo de cocina
Route::prefix('tipos-cocina')->group(function () {
    Route::get('/', [TipoCocinaController::class, 'index']);
    Route::get('/{id}', [TipoCocinaController::class, 'show']);
});

// Rutas API para traducciones de tipo de cocina
Route::prefix('traducciones-tipo-cocina')->group(function () {
    Route::get('/', [TipoCocinaTraduccionController::class, 'index']);
    Route::get('/{id}', [TipoCocinaTraduccionController::class, 'show']);
});

// Rutas API para accesibilidad
Route::prefix('accesibilidades')->group(function () {
    Route::get('/', [AccesibilidadController::class, 'index']);
    Route::get('/{id}', [AccesibilidadController::class, 'show']);
});

// Rutas API para traducciones de accesibilidad
Route::prefix('traducciones-accesibilidad')->group(function () {
    Route::get('/', [AccesibilidadTraduccionController::class, 'index']);
    Route::get('/{id}', [AccesibilidadTraduccionController::class, 'show']);
});

// Rutas API para Idiomas
Route::prefix('idiomas')->group(function () {
    Route::get('/', [IdiomaController::class, 'index']);
    Route::get('/{id}', [IdiomaController::class, 'show']);
});

// Rutas API para la relación entre restaurante y accesibilidad
Route::prefix('restaurantes-accesibilidad')->group(function () {
    Route::get('/', [RestauranteAccesibilidadController::class, 'index']);
    Route::get('/{id}', [RestauranteAccesibilidadController::class, 'show']);
});

// Rutas API para traducciones de restaurantes
Route::prefix('traducciones-restaurante')->group(function () {
    Route::get('/', [RestauranteTraduccionController::class, 'index']);
    Route::get('/{id}', [RestauranteTraduccionController::class, 'show']);
});
