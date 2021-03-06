<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBasicosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('basicos', function (Blueprint $table) {
            $table->increments('idBasico');
            $table->string('nombre');
            $table->string('grupoMuscular');
            $table->integer('nivel');
            $table->integer('idRutinaBasicos')->unsigned();
            $table->foreign('idRutinaBasicos')->references("idRutina")->on("rutinas")->onDelete('cascade');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        $table->dropForeign('basicos_idRutinaBasicos_foreign');
        $table->dropIndex('basicos_idRutinaBasicos_index');
        $table->dropColumn('idRutinaBasicos');
        Schema::dropIfExists('basicos');
    }
}
