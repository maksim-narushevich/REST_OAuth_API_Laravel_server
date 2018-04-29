<?php

namespace App\Http\Controllers\API;


use App\Book;
use App\Movie;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Support\Facades\Auth;
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
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {


        return $this->sendError( 'This Method is not allowed');
    }


    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);


        if (is_null($user)) {
            return $this->sendError('User not with ' . $id . ' is found.');
        }


        return $this->sendResponse($user->toArray(), 'User retrieved successfully.');
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $user = User::find($id);
        if ($user) {
            if (Auth::id() == $user->id) {
                if (!empty($input['name'])) {
                    $user->name = $input['name'];
                }
                if (!empty($input['email'])) {
                    $user->email = $input['email'];
                }
                $user->save();
            } else {
                return $this->sendError('Unauthorized action.Your ID is ' . Auth::id() . ". Requested User ID is " . $user->id);
            }
        } else {
            return $this->sendError("User with ID " . $id . " is not found.");
        }
        return $this->sendResponse($user->toArray(), 'User updated successfully.');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        if ($user) {
            if (Auth::id() == $user->id) {
                Book::where('user_id',$id)->delete();
                Movie::where('user_id',$id)->delete();
                $user->delete();
            } else {
                return $this->sendError('Unauthorized action.Your ID is ' . Auth::id() . ". Requested User ID is " . $user->id);
            }
        } else {
            return $this->sendError("User with ID " . $id . " is not found.");
        }


        return $this->sendResponse($user->toArray(), 'User and all linked books & movies were deleted successfully.');
    }


    /**
     * showBooks
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function showBooks($id)
    {
        $user = User::find($id);

        if ($user != null) {
            $books = $user->books;
            if ($books === null || empty($books->toArray())) {
                return $this->sendError('No books were found.');
            }
        } else {
            return $this->sendError('No user with ID ' . $id . ' was found.');
        }


        return $this->sendResponse($books->toArray(), 'User\'s books retrieved successfully.');
    }


    /**
     * showMovies
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function showMovies($id)
    {
        $user = User::find($id);

        if ($user != null) {
            $movies = $user->movies;
            if ($movies === null || empty($movies->toArray())) {
                return $this->sendError('No movies were found.');
            }
        } else {
            return $this->sendError('No user with ID ' . $id . ' was found.');
        }


        return $this->sendResponse($movies->toArray(), 'User\'s movies retrieved successfully.');
    }

}