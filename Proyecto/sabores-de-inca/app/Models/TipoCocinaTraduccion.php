<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoCocinaTraduccion extends Model
{
    protected $table = 'tipo_cocina_traduccion';
    protected $primaryKey = 'idTipoCocinaTraduccion';
    public $timestamps = false;
    protected $fillable = ['Nombre', 'fk_idIdioma', 'fk_idTipoCocina'];
}
