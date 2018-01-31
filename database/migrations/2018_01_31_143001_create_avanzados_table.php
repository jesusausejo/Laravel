<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAvanzadosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('avanzados', function (Blueprint $table) {
            $table->increments('idAvanzado');
            $table->string('nombre');
            $table->string('grupoMuscular');
            $table->integer('nivel');
            $table->integer('idRutinaAvanzados')->unsigned();
            $table->foreign('idRutinaAvanzados')->references("idRutina")->on("rutinas")->onDelete('cascade');
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
        $table->dropForeign('avanzados_idRutinaAvanzados_foreign');
        $table->dropIndex('avanzados_idRutinaAvanzados_index');
        $table->dropColumn('idRutinaAvanzados');
        Schema::dropIfExists('avanzados');
    }
}
