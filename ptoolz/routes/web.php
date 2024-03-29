<?php

use App\Http\Controllers\registration\dataController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\sp\referenceController;

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

Route::get('/', function () {
    return "ptoolz";
});

Route::get('/phpinfo', function() {
    phpinfo();
});

Route::resource('reference', referenceController::class);

Route::post('clean_forign' , [dataController::class  , 'clean_forign']);
