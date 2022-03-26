<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\InspeccionUnidadController as APIInspeccionesUnidadController;
use App\Http\Controllers\Api\AceiteController as APINivelesAceiteController;
use App\Http\Controllers\Api\GasolinaController as APINivelesGasolinaController;
use App\Http\Controllers\Api\UnidadesController as APIUnidadesController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/unidades', [APIUnidadesController::class,'index'])->name('api.unidades.index');
Route::get('/nivaceite', [APINivelesAceiteController::class, 'index'])->name('api.nivaceite.index');
Route::get('/nivgasolina', [APINivelesGasolinaController::class,'index'])->name('api.nivgasolina.index');
Route::post('/inspeccionunidad', [APIInspeccionesUnidadController::class, 'store'])->name('api.inspeccionunidad.store');