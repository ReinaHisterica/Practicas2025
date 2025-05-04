<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class IdiomaUpdateRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'Nombre' => 'required|string|max:50',
            'CodigoIdioma' => 'required|string|max:2',
        ];
    }

    public function messages()
    {
        return [
            'Nombre.required' => 'El nombre del idioma es obligatorio.',
            'Nombre.string' => 'El nombre del idioma debe ser una cadena de texto.',
            'Nombre.max' => 'El nombre del idioma no puede tener más de 50 caracteres.',
            'CodigoIdioma.required' => 'El código del idioma es obligatorio.',
            'CodigoIdioma.string' => 'El código del idioma debe ser una cadena de texto.',
            'CodigoIdioma.max' => 'El código del idioma no puede tener más de 2 caracteres.',
        ];
    }
}
