<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Idioma extends Model
{
    protected $table = 'idioma'; // El nombre de la tabla. Laravel creo que busca el nombre del Modelo en plural. Por ejemplo, Idioma -> Idiomas.
    protected $primaryKey = 'idIdioma'; // Laravel busca que la pk sea id. Si es un nombre diferente, hay que especificarlo.
    public $timestamps = true;
    protected $fillable = ['Nombre', 'CodigoIdioma']; // Indica qué campos se pueden llenar automáticamente mediante create(), update().
}
