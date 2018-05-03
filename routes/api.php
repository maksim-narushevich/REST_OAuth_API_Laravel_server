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
        Route::get('users/{id}/books/{intOffset?}/{intLimit?}', 'API\UserController@showBooks');
        Route::get('users/{id}/movies/{intOffset?}/{intLimit?}', 'API\UserController@showMovies');
        Route::get('products/list/{intOffset?}/{intLimit?}', [
            'uses' => 'API\ProductController@index'
        ]);
        Route::resource('products', 'API\ProductController');

        Route::get('books/list/{intOffset?}/{intLimit?}', [
            'uses' => 'API\BookController@index'
        ]);
        Route::resource('books', 'API\BookController');

        Route::get('movies/list/{intOffset?}/{intLimit?}', [
            'uses' => 'API\MovieController@index'
        ]);
        Route::resource('movies', 'API\MovieController');

        Route::get('users/list/{intOffset?}/{intLimit?}', [
            'uses' => 'API\UserController@index'
        ]);
        Route::resource('users', 'API\UserController');

    });
});
