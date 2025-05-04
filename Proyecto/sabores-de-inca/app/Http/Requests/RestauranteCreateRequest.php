<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class RestauranteCreateRequest extends FormRequest
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
            'SitioWeb' => 'nullable|string|max:100',
            'Direccion' => 'required|string|max:150',
            'Carta' => 'nullable|string|max:255',
            'fk_idTipoCocina' => 'required|exists:tipo_cocina,idTipoCocina' // Para las foreign keys. Primero se pone el nombre de la tabla relacionada y luego la primary key.
            // ⚠🚨 IMPORTNATE: DONDE LAS FOREIGN KEYS NO PUEDE HABER ESPACIOS, POR EJEMPLO, 'required|exists:tipo_cocina, idTipoCocina' DARÁ ERROR POR EL ESPACIO ENTRE tipo_cocina, y idTipoCocina ⚠🚨.
            /* 
            {
                "Nombre": "Prueba",
                "RangoPrecio": "€",
                "Vegano": 1,
                "Telefono": "+34 111 111 111",
                "SitioWeb": " ",
                "Direccion": "Fake Street 123",
                "Carta": " ",
                "fk_idTipoCocina": 3
            }
            
            */
        ];
    }

    // Mensajes personalizados si algún insert falla.
    public function messages(): array
    {
        return [
            'Nombre.required' => 'El nombre del restaurante es obligatorio.',
            'Nombre.max' => 'El nombre no puede superar los 25 caracteres.',
            'RangoPrecio.required' => 'El rango de precio es obligatorio.',
            'Vegano.required' => 'Debes especificar si tiene opciones veganas.',
            'Vegano.boolean' => 'El campo vegano debe ser verdadero o falso.',
            'Telefono.required' => 'El teléfono es obligatorio.',
            'SitioWeb.max' => 'La URL del sitio web es demasiado larga.',
            'Direccion.required' => 'La dirección es obligatoria.',
            'Carta.max' => 'El contenido de la carta no puede exceder los 255 caracteres.',
            'fk_idTipoCocina.required' => 'Debes seleccionar un tipo de cocina.',
            'fk_idTipoCocina.exists' => 'El tipo de cocina seleccionado no es válido.',
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
