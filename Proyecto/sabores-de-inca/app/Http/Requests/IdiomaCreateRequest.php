<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class IdiomaCreateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'Nombre' => 'required|string|max:10',
            'CodigoIdioma' => 'required|string|size:2|unique:idioma,CodigoIdioma'
        ];
    }

    public function messages(): array
    {
        return [
            'Nombre.required' => 'El nombre del idioma es obligatorio.',
            'Nombre.string' => 'El nombre debe ser una cadena de texto.',
            'Nombre.max' => 'El nombre no puede tener más de 10 caracteres.',

            'CodigoIdioma.required' => 'El código del idioma es obligatorio.',
            'CodigoIdioma.string' => 'El código debe ser una cadena de texto.',
            'CodigoIdioma.size' => 'El código debe tener exactamente 2 caracteres.',
            'CodigoIdioma.unique' => 'Este código ya está en uso.'
        ];
    }
    // Función para devolver un error si algo ha fallado (datos inválidos).
    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'mensaje' => 'Error de validación.',
            'errores' => $validator->errors()
        ], 422)); // Error 422: Unprocessable Entity (datos inválidos).
    }
}
