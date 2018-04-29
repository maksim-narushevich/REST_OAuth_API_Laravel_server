<?php

namespace App\Http\Controllers\API;


use App\Book;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Support\Facades\Auth;
use Validator;


class BookController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::all();

        return $this->sendResponse($books->toArray(), 'Books retrieved successfully.');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $input = $request->all();


        $validator = Validator::make($input, [
            'title' => 'required',
            'detail' => 'required'
        ]);


        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $input['user_id'] = Auth::id();
        $book = Book::create($input);


        return $this->sendResponse($book->toArray(), 'Book created successfully.');
    }


    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $book = Book::find($id);


        if (is_null($book)) {
            return $this->sendError('Book not found.');
        }


        return $this->sendResponse($book->toArray(), 'Book retrieved successfully.');
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

        $book = Book::find($id);
        if ($book) {
            if (Auth::id() == $book->user_id) {
                if (!empty($input['title'])) {
                    $book->title = $input['title'];
                }
                if (!empty($input['detail'])) {
                    $book->detail = $input['detail'];
                }

                if (!empty($input['date'])) {
                    $book->date = $input['date'];
                }

                if (!empty($input['author'])) {
                    $book->author = $input['author'];
                }
                if (!empty($input['publish_year'])) {
                    $book->publish_year = $input['publish_year'];
                }
                if (!empty($input['category_id'])) {
                    $book->category_id = $input['category_id'];
                }
            } else {
                return $this->sendError('Unauthorized action.Your ID is ' . Auth::id() . ". Book User_ID is " . $book->user_id);
            }
        } else {
            return $this->sendError("Book with ID " . $id . " is not found.");
        }

        $book->save();


        return $this->sendResponse($book->toArray(), 'Book updated successfully.');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Book::find($id);
        if ($book) {
            if (Auth::id() == $book->user_id) {
                $book->delete();
            } else {
                return $this->sendError('Unauthorized action.Your ID is ' . Auth::id() . ". Book User_ID is " . $book->user_id);
            }
        } else {
            return $this->sendError("Book with ID " . $id . " is not found.");
        }

        return $this->sendResponse($book->toArray(), 'Book deleted successfully.');
    }
}