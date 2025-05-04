<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TipoCocinaTraduccionUpdateRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'Nombre' => 'required|string|max:25',
            'fk_idIdioma' => 'required|integer|exists:idioma,idIdioma',
            'fk_idTipoCocina' => 'required|integer|exists:tipo_cocina,idTipoCocina',
        ];
    }
}

