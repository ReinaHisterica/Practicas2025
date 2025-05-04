<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Log;

class RestauranteTraduccionUpdateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        Log::info('Entró al FormRequest');

        return [
            'Descripcion' => 'required|string|max:255',
            'Horario' => 'required|string|max:350',
            'fk_idRestaurante' => 'required|integer|exists:restaurante,idRestaurante',
            'fk_idIdioma' => 'required|integer|exists:idioma,idIdioma',
        ];
    }

    public function messages(): array
    {
        return [
            'Descripcion.required' => 'La descripción es obligatoria.',
            'Descripcion.string' => 'La descripción debe ser una cadena de texto.',
            'Descripcion.max' => 'La descripción no puede tener más de 255 caracteres.',
            'Horario.required' => 'El horario es obligatorio.',
            'Horario.string' => 'El horario debe ser una cadena de texto.',
            'Horario.max' => 'El horario no puede tener más de 350 caracteres.',
            'fk_idRestaurante.required' => 'El restaurante es obligatorio.',
            'fk_idRestaurante.exists' => 'El restaurante seleccionado no existe.',
            'fk_idIdioma.required' => 'El idioma es obligatorio.',
            'fk_idIdioma.exists' => 'El idioma seleccionado no existe.',
        ];
    }
}
