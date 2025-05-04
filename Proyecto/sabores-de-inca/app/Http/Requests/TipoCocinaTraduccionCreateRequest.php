<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TipoCocinaTraduccionCreateRequest extends FormRequest
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
            'Nombre' => 'required|string|max:25',
            'fk_idIdioma' => 'required|integer|exists:idioma,idIdioma',
            'fk_idTipoCocina' => 'required|integer|exists:tipo_cocina,idTipoCocina',
        ];
    }
}
