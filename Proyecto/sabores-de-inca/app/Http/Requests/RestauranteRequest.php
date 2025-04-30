<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RestauranteRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true; // Con true se le permite acceso a cualquiera. Esto se puede controlar con los middleware.
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
            'RangoPrecio' => 'required|string|max:6',
            'Vegano' => 'required|boolean',
            'Telefono' => 'required|string|max:20',
            'SitioWeb' => 'string|max:100',
            'Direccion' => 'required|string|max:150',
            'Carta' => 'string|max:255',
            'fk_idTipoCocina' => 'required|exists:tipo_cocina, idTipoCocina' // Para las foreign keys. Primero se pone el nombre de la tabla relacionada y luego la primary key.
        ];
    }
}
