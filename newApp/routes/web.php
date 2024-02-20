<?php

use Illuminate\Support\Facades\Route;
use App\Http\Middleware\esProfesor;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', 'App\Http\Controllers\HomeController@index')->name('home');

Route::prefix('home')->group(function () { Route::get('/', 'HomeController@index'); });

Route::prefix('ejercicio')->group(function () {
  Route::get('/{id}', 'EjercicioController@index', function ($id) {});
  Route::Post('ajaxFormularioQuery', 'EjercicioController@ajaxFormularioQuery');
});

Route::prefix('admin')->group(function () {
  Route::get('/administracion', 'adminController@administracion');
  Route::get('/contacto', 'adminController@contacto');
  Route::post('/editarPerfil', 'adminController@editarPerfil');
});

Route::prefix('modoLibre')->group(function(){
  Route::get('/', 'modoLibreController@index');
  Route::Post('ajaxFormularioQuery', 'modoLibreController@ajaxFormularioQuery');
});

Route::get('ajaxVerTabla', 'EjercicioController@ajaxVerTabla');
Route::get('comprobarTutorial', 'EjercicioController@comprobarTutorial');
Route::get('ejercicioTerminado', 'EjercicioController@ejercicioTerminado');

Route::get('/editarEjercicio/eliminarEjercicio', 'editarEjercicioController@eliminarEjercicio', function ($id) {});
Route::get('/editarEjercicio/editar/{id}', 'editarEjercicioController@editar', function ($id) {});
Route::get('/editarEjercicio', 'editarEjercicioController@index')->middleware(esProfesor::class);
Route::get('/editarEjercicio/estadistica', 'editarEjercicioController@estadistica')->middleware(esProfesor::class);
Route::get('/editarEjercicio/ajaxMostrarIntento', 'editarEjercicioController@ajaxMostrarIntento')->middleware(esProfesor::class);
Route::get('/editarEjercicio/ajaxMostrarModoLibre', 'editarEjercicioController@ajaxMostrarModoLibre')->middleware(esProfesor::class);
Route::Post('/editarEjercicio/ajaxValidaQuery', 'editarEjercicioController@ajaxValidaQuery')->middleware(esProfesor::class);
Route::get('/editarEjercicio/crear', 'editarEjercicioController@crear')->middleware(esProfesor::class);
Route::get('/editarEjercicio/crearJsonEjercicio', 'editarEjercicioController@crearJsonEjercicio')->middleware(esProfesor::class);
Route::get('/editarEjercicio/estadisticamlibre', 'editarEjercicioController@estadisticamlibre')->middleware(esProfesor::class);
Route::get('/editarEjercicio/tasks', 'editarEjercicioController@exportCsv')->middleware(esProfesor::class);;
Route::get('/editarEjercicio/tasksml', 'editarEjercicioController@exportCsvMl')->middleware(esProfesor::class);;

Auth::routes(['register' => false]); 

//Dejamos el registro deshabilitado (grupo alumnos cerrado, para abrir a usuarios externos quitar lo que va entre [])
//Auth::routes();