<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RestauranteTraduccion extends Model
{
    protected $table = 'restaurante_traduccion';
    protected $primaryKey = 'idRestauranteTraduccion';
    // public $timestamps = false;
    protected $fillable = ['Descripcion', 'Horario', 'fk_idRestaurante', 'fk_idIdioma'];
}
