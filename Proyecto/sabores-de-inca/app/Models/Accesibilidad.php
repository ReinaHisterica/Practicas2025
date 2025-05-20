<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Accesibilidad extends Model
{
    protected $table = 'accesibilidad';
    protected $primaryKey = 'idAccesibilidad';
    public $timestamps = true;
    protected $fillable = [
        'idAccesibilidad'
    ];
}
