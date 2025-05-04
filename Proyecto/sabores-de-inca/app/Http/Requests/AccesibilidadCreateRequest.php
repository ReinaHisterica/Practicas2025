<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class AccesibilidadCreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'idAccesibilidad' => 'required|integer|unique:accesibilidad,idAccesibilidad',
        ];
    }

    public function messages(): array
    {
        return [
            'idAccesibilidad.required' => 'El id de accesibilidad debe de ser un valor numérico.',
            'idAccesibilidad.unique' => 'El valor del id no puede repetirse'
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'mensaje' => 'Error de validación.',
            'errores' => $validator->errors()
        ], 422)); // Error 422: Unprocessable Entity (datos inválidos).
    }
}
