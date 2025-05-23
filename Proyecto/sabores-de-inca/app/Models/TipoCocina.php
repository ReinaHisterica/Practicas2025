<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TipoCocina extends Model
{
    protected $table = 'tipo_cocina';
    protected $primaryKey = 'idTipoCocina';
    // public $timestamps = false;
    protected $fillable = []; // Esto se hace cuando en la base de datos sólo hay un atributo y es autoincremental.
    // Esto le dice a Laravel: "puedes crear modelos aunque no haya campos editables definidos, porque no voy a enviar nada más".
}
