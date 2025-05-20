<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AccesibilidadTraduccion extends Model
{
    protected $table = 'accesibilidad_traduccion';
    protected $primaryKey = 'idAccesibilidadTraduccion';
    protected $fillable = ['Nombre', 'fk_idIdioma', 'fk_idAccesibilidad'];
    public $timestamps = true;
}
