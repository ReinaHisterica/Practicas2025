<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Restaurante extends Model
{
    protected $table = 'restaurante';
    protected $primaryKey = 'idRestaurante';
    // public $timestamps = false; // Esto se usa si la tabla no tiene campos created_at y updated_at.

    // Campos que se pueden rellenar. Esto se añade una vez se ha creado el Request (son los mismos datos que ahí).
    protected $fillable = [
        'Nombre',
        'RangoPrecio',
        'Vegano',
        'Telefono',
        'SitioWeb',
        'Direccion',
        'Carta',
        'fk_idTipoCocina'
    ];

    // Para obtener la media de las valoraciones. Primero, necesitamos una relación entre ambas tablas. Mirar la línea extra del controlador.
    public function valoraciones()
{
    return $this->hasMany(Valoracion::class, 'fk_idRestaurante', 'idRestaurante');
}

}
