<?php

namespace App\Http\Controllers\API;


use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Movie;
use Validator;


class MovieController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $movies = Movie::all();


        return $this->sendResponse($movies->toArray(), 'Movies retrieved successfully.');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();


        $validator = Validator::make($input, [
            'title' => 'required',
            'detail' => 'required'
        ]);


        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }


        $movie = Movie::create($input);


        return $this->sendResponse($movie->toArray(), 'Movie created successfully.');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $movie = Movie::find($id);


        if (is_null($movie)) {
            return $this->sendError('Movie not found.');
        }


        return $this->sendResponse($movie->toArray(), 'Movie retrieved successfully.');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Movie $movie)
    {
        $input = $request->all();


//        $validator = Validator::make($input, [
//            'title' => 'required',
//            'detail' => 'required'
//        ]);
//
//
//        if($validator->fails()){
//            return $this->sendError('Validation Error.', $validator->errors());
//        }


        if(!empty($input['title'])){
            $movie->title = $input['title'];
        }
        if(!empty($input['detail'])) {
            $movie->detail = $input['detail'];
        }

        if(!empty($input['finished_date'])) {
            $movie->finished_date = $input['finished_date'];
        }

        if(!empty($input['author'])) {
            $movie->author = $input['author'];
        }
        if(!empty($input['movie_created_year'])) {
            $movie->movie_created_year = $input['movie_created_year'];
        }
        if(!empty($input['category_id'])) {
            $movie->category_id = $input['category_id'];
        }
        if(!empty($input['user_id'])) {
            $movie->user_id = $input['user_id'];
        }
        $movie->save();


        return $this->sendResponse($movie->toArray(), 'Movie is updated successfully.');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Movie $movie)
    {
        $movie->delete();


        return $this->sendResponse($movie->toArray(), 'Movie deleted successfully.');
    }

}