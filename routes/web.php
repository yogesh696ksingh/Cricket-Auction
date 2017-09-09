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

Route::get('/',['as'=> 'auction.login', 'uses' => 'AdminController@index']); 
Route::get('/welcome',['as'=>'auction.welcome','uses' => 'AdminController@welcome']);
Route::post('/increment','AdminController@increment');
Route::get('/players','AdminController@players');
Route::get('/sold','AdminController@sold');
Route::get('/unsold','AdminController@unsold');
Route::post('/login','AdminController@login');
Route::get('/logout','AdminController@logout');
Route::get('/reset','AdminController@reset');
Route::get('/remove','AdminController@remove');