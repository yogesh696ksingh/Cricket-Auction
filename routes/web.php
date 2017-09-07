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

Route::get('/',['as'=> 'auction.main', 'uses' => 'AdminController@index']); 
Route::post('/increment','AdminController@increment');
Route::get('/players','AdminController@players');
