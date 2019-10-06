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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello', function(){
	return "welcome to Laravel";
});

Route::get('/index', 'FromController@index');

Route::get('/democontroller', 'DemoController@index');

Route::get('/chitiet-{id}-{ten}', 'FromController@getId');

Route::get('/showview', 'FromController@showview');

Route::get('/showview1', 'FromController@showview1');

Route::get('/showlayout', 'FromController@showlayout');

Route::get('/showproduct/{id}', 'FromController@show_product');

Route::get('/listproduct', 'FromController@showlist');

Route::get('/insert', 'FromController@create');

Route::post('/insert', 'FromController@store');


Route::get('/update/{id}', 'FromController@update');

Route::post('/update/{id}', 'FromController@update_pro');

Route::get('/delete/{id}', 'FromController@delete');