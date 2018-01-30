<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/lul', function () {
    return view('welcome');
});
/*
/////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
-------------------------------------
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/////////////////////////////////////
-------------------------------------
/////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
-------------------------------------
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/////////////////////////////////////
-------------------------------------
/////////////////////////////////////
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
*/
Route::get('/', function () {
    return "<h1>Saludos crack</h1>";
});

Route::get('/usuario/{id}', function ($id) {
    return "Esta es la páguina del usuario $id";
});

Route::get('/cliente/{nombre?}', function ($nombre='. Puto pinche pon un pendejo nombre') {
    return "Esta es la páguina del cliente $nombre";
});//->where('nombre', '[A-Za-z]+');

Route::get('/proveedores/{nombre}/{apellido}', function ($nombre, $apellido) {
    return "Buenas $apellido, $nombre";
});

Route::get('/penepolis/{municipio}', function(){
	return view('city');
});

Route::get('/ejemplo1', 'controller@index');

