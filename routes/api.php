<?php

use Illuminate\Http\Request;

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

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::post('register', 'API\RegisterController@register');


Route::middleware('auth:api')->group(function () {
    Route::group(['prefix' => 'v1', 'middleware' => 'auth'], function () {
        Route::get('users/{id}/books', 'API\UserController@showBooks');
        Route::get('users/{id}/movies', 'API\UserController@showMovies');
        Route::resource('products', 'API\ProductController');
        Route::resource('books', 'API\BookController');
        Route::resource('movies', 'API\MovieController');
        Route::resource('users', 'API\UserController');

    });
});
