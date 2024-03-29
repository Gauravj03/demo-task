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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/customers', 'HomeController@customers')->name('customers');

Route::get('/products', 'HomeController@products')->name('products');

Route::get('/orders', 'OrderController@orders')->name('orders');

Route::get('/order-detail/{id}', 'OrderController@orderDetail');

