<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TipoCocinaCreateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            
        ];
    }

    public function messages(): array
    {
        return [
            'Nombre.required' => 'El nombre del tipo de cocina es obligatorio.',
            'Nombre.string' => 'El nombre debe ser una cadena de texto.',
            'Nombre.max' => 'El nombre no puede superar los 100 caracteres.',
            'Nombre.unique' => 'Este tipo de cocina ya existe.',
        ];
    }
}
