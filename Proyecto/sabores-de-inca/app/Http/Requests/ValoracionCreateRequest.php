<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValoracionCreateRequest extends FormRequest
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
            'Comentario' => 'string|max:1000',
            'Valoracion' => 'required|integer|min:1|max:5',
            'fk_idUsuario' => 'required|exists:usuario,idUsuario',
            'fk_idRestaurante' => 'required|exists:restaurante,idRestaurante'

        ];
    }
}
