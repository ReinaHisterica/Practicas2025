<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens; // Añadirlo una vez se han hecho las migraciones.

class User extends Authenticatable
{
    use Notifiable, HasApiTokens; // El HasApiTokens tengo que añadirlo después de haber hecho las migracioens.

    protected $table = 'Usuario';
    protected $primaryKey = 'idUsuario';
    public $timestamps = true;
    protected $fillable = [
        'Username',
        'Email',
        'Password',
        'Profile_Image'
    ];
    protected $hidden = [
        'Password',
    ];
}
