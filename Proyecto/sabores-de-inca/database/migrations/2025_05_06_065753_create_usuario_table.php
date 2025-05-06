<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsuarioTable extends Migration
{
    public function up()
    {
        Schema::create('Usuario', function (Blueprint $table) {
            $table->id('idUsuario'); // Generalmente, la pk es id. Si es diferente, hay que especificarlo.
            $table->string('Username', 100)->unique();
            $table->string('Email', 30)->unique();
            $table->string('Password', 255);
            $table->string('Profile_Image', 255)->nullable(); // Imagen de perfil, puede ser null.
            $table->timestamps(); // crea created_at y updated_at.
        });
    }

    public function down()
    {
        Schema::dropIfExists('Usuario'); // Elimina la tabla si se revierte.
    }
}
