<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\RestauranteController;
use App\Http\Controllers\TipoCocinaController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TipoCocinaTraduccionController;
use App\Http\Controllers\AccesibilidadController;
use App\Http\Controllers\AccesibilidadTraduccionController;
use App\Http\Controllers\IdiomaController;
use App\Http\Controllers\RestauranteAccesibilidadController;
use App\Http\Controllers\RestauranteTraduccionController;
use App\Http\Controllers\ValoracionController;

require base_path('routes/test.php');


Route::get('/prueba', function () {
    return '¡Funciona!';
});

// Ruta para registro de usuario.
Route::post('register', [UserController::class, 'store']);

// Ruta para login de usuario (autenticación).
Route::post('login', [AuthController::class, 'login']);

// Rutas protegidas (necesitas un token para poder acceder a ellas).
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware('auth:sanctum')->post('/valoracion', [ValoracionController::class, 'store']);

// Rutas API para restaurantes
Route::prefix('restaurantes')->group(function () {
    // Route::get('/', [RestauranteController::class, 'index']);
    Route::get('/{id}', [RestauranteController::class, 'show']);
    Route::post('/', [RestauranteController::class, 'store']);
    Route::put('/{id}', [RestauranteController::class, 'update']);
    Route::delete('/{id}', [RestauranteController::class, 'destroy']);
    Route::post('/{id}/imagen', [RestauranteController::class, 'subirImagen']); // Ruta para subir imágenes.

});

// Rutas API para tipo de cocina
Route::prefix('tipos-cocina')->group(function () {
    Route::get('/', [TipoCocinaController::class, 'index']);
    Route::get('/{id}', [TipoCocinaController::class, 'show']);
    Route::post('/', [TipoCocinaController::class, 'store']);
    Route::delete('/{id}', [TipoCocinaController::class, 'destroy']);


});

// Rutas API para traducciones de tipo de cocina
Route::prefix('traducciones-tipo-cocina')->group(function () {
    Route::get('/', [TipoCocinaTraduccionController::class, 'index']);
    Route::get('/{id}', [TipoCocinaTraduccionController::class, 'show']);
    Route::post('/', [TipoCocinaTraduccionController::class, 'store']);
    Route::put('/{id}', [TipoCocinaTraduccionController::class, 'update']);
    Route::delete('/{id}', [TipoCocinaTraduccionController::class, 'destroy']);

});

// Rutas API para accesibilidad
Route::prefix('accesibilidades')->group(function () {
    Route::get('/', [AccesibilidadController::class, 'index']);
    Route::get('/{id}', [AccesibilidadController::class, 'show']);
    Route::post('/', [AccesibilidadController::class, 'store']);
    Route::put('/{id}', [AccesibilidadController::class, 'update']);
    Route::delete('/{id}', [AccesibilidadController::class, 'destroy']);


});

// Rutas API para traducciones de accesibilidad
Route::prefix('traducciones-accesibilidad')->group(function () {
    Route::get('/', [AccesibilidadTraduccionController::class, 'index']);
    Route::get('/{id}', [AccesibilidadTraduccionController::class, 'show']);
    Route::post('/', [AccesibilidadTraduccionController::class, 'store']);
    Route::put('/{id}', [AccesibilidadTraduccionController::class, 'update']);
    Route::delete('/{id}', [AccesibilidadTraduccionController::class, 'destroy']);

});

// Rutas API para Idiomas
Route::prefix('idiomas')->group(function () {
    Route::get('/', [IdiomaController::class, 'index']);
    Route::get('/{id}', [IdiomaController::class, 'show']);
    Route::post('/', [IdiomaController::class, 'store']);
    Route::put('/{id}', [IdiomaController::class, 'update']);
    Route::delete('/{id}', [IdiomaController::class, 'destroy']);


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
    Route::post('/', [RestauranteTraduccionController::class, 'store']);
    Route::put('/{id}', [RestauranteTraduccionController::class, 'update']);
    Route::delete('/{id}', [RestauranteTraduccionController::class, 'destroy']);

});
