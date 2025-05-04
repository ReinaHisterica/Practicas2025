<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RestauranteTraduccionCreateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'Descripcion' => 'required|string',
            'Horario' => 'required|string|max:350',
            'fk_idRestaurante' => 'required|integer|exists:restaurante,idRestaurante',
            'fk_idIdioma' => 'required|integer|exists:idioma,idIdioma',
        ];
    }

    public function messages(): array
    {
        return [
            'Descripcion.required' => 'La descripción es obligatoria.',
            'Descripcion.string' => 'La descripción debe ser un texto.',

            'Horario.required' => 'El horario es obligatorio.',
            'Horario.string' => 'El horario debe ser un texto.',
            'Horario.max' => 'El horario no puede tener más de 350 caracteres.',

            'fk_idRestaurante.required' => 'El campo restaurante es obligatorio.',
            'fk_idRestaurante.integer' => 'El restaurante debe ser un número entero.',
            'fk_idRestaurante.exists' => 'El restaurante especificado no existe.',

            'fk_idIdioma.required' => 'El campo idioma es obligatorio.',
            'fk_idIdioma.integer' => 'El idioma debe ser un número entero.',
            'fk_idIdioma.exists' => 'El idioma especificado no existe.',
        ];
    }
}
