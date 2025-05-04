<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class RestauranteUpdateRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'Nombre' => 'sometimes|required|string|max:25',
            'RangoPrecio' => 'sometimes|required|string|max:6',
            'Vegano' => 'sometimes|required|boolean',
            'Telefono' => 'sometimes|required|string|max:20',
            'SitioWeb' => 'nullable|string|max:100',
            'Direccion' => 'sometimes|required|string|max:150',
            'Carta' => 'nullable|string|max:255',
            'fk_idTipoCocina' => 'sometimes|required|exists:tipo_cocina,idTipoCocina'
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'mensaje' => 'Error de validación.',
            'errores' => $validator->errors()
        ], 422));
    }
}
