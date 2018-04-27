<?php

namespace App\Http\Controllers\API;


use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Validator;


class UserController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::all();

        return $this->sendResponse($user->toArray(), 'Users retrieved successfully.');
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
            'name' => 'required',
            'email' => 'required'
        ]);


        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());
        }


        $user = User::create($input);


        return $this->sendResponse($user->toArray(), 'User created successfully.');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);


        if (is_null($user)) {
            return $this->sendError('User not found.');
        }


        return $this->sendResponse($user->toArray(), 'User retrieved successfully.');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $input = $request->all();


//        $validator = Validator::make($input, [
//            'name' => 'required',
//            'email' => 'required'
//        ]);
//
//
//        if($validator->fails()){
//            return $this->sendError('Validation Error.', $validator->errors());
//        }


        if(!empty($input['name'])){
            $user->name = $input['name'];
        }
        if(!empty($input['email'])) {
            $user->email = $input['email'];
        }
        $user->save();


        return $this->sendResponse($user->toArray(), 'User updated successfully.');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();


        return $this->sendResponse($user->toArray(), 'User deleted successfully.');
    }


    /**
     * showBooks
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showBooks($id)
    {
        $user = User::find($id);

        if ($user != null) {
            $books=$user->books;
            if ($books===null || empty($books->toArray())) {
                return $this->sendError('No books were found.');
            }
        }else{
            return $this->sendError('No user was found.');
        }


        return $this->sendResponse($books->toArray(), 'User\'s books retrieved successfully.');
    }


    /**
     * showMovies
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showMovies($id)
    {
        $user = User::find($id);

        if ($user != null) {
            $movies=$user->movies;
            if ($movies===null || empty($movies->toArray())) {
                return $this->sendError('No movies were found.');
            }
        }else{
            return $this->sendError('No user was found.');
        }


        return $this->sendResponse($movies->toArray(), 'User\'s movies retrieved successfully.');
    }

}