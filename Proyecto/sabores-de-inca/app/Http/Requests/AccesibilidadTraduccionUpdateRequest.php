<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AccesibilidadTraduccionUpdateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'Nombre' => 'required|string|max:50',
            'fk_idIdioma' => 'required|integer|exists:idioma,idIdioma',
            'fk_idAccesibilidad' => 'required|exists:accesibilidad,idAccesibilidad'
        ];
    }

    public function messages(): array
    {
        return [
            'Nombre.required' => 'El nombre es obligatorio.',
            'Nombre.string' => 'El nombre debe ser una cadena de texto.',
            'Nombre.max' => 'El nombre no puede tener más de 50 caracteres.',

            'fk_idIdioma.required' => 'El campo idioma es obligatorio.',
            'fk_idIdioma.integer' => 'El idioma debe ser un número válido.',
            'fk_idIdioma.exists' => 'El idioma seleccionado no existe.',

            'fk_idAccesibilidad.required' => 'El campo accesibilidad es obligatorio.',
            'fk_idAccesibilidad.exists' => 'La accesibilidad seleccionada no existe.'
        ];
    }
}
