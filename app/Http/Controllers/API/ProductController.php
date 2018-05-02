<?php

namespace App\Http\Controllers\API;


use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Product;
use Validator;


class ProductController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @param $intOffset
     * @param $intLimit
     * @return \Illuminate\Http\Response
     */
    public function index($intOffset=0,$intLimit=0)
    {
        if($intOffset>=0 && is_numeric($intOffset)) {
            if ($intLimit > 0 && is_numeric($intLimit)) {
                $products = Product::where('id', '>', '0')
                    ->offset($intOffset)
                    ->limit($intLimit)
                    ->get();
            } elseif ($intLimit == 0 && is_numeric($intLimit)) {
                $products = Product::skip($intOffset)->take(PHP_INT_MAX)->get();
            } else {
                return $this->sendError('Wrong limit value. Limit value should be numeric and can\'t be less than 0');
            }
        }else{
            return $this->sendError('Wrong offset value. Offset value should be numeric and can\'t be less than 0');
        }

        if(count($products->toArray())<=0){
            return $this->sendError('Products were not found');
        }

        return $this->sendResponse($products->toArray(), 'Products retrieved successfully.');
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
            'name' => 'required',
            'detail' => 'required'
        ]);


        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }


        $product = Product::create($input);


        return $this->sendResponse($product->toArray(), 'Product created successfully.');
    }


    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);


        if (is_null($product)) {
            return $this->sendError('Product not found.');
        }


        return $this->sendResponse($product->toArray(), 'Product retrieved successfully.');
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

        $product = Product::find($id);
        if ($product) {
//            $validator = Validator::make($input, [
//                'name' => 'required',
//                'detail' => 'required'
//            ]);
//
//
//            if ($validator->fails()) {
//                return $this->sendError('Validation Error.', $validator->errors());
//            }

            if (!empty($input['name'])) {
                $product->name = $input['name'];
            }
            if (!empty($input['detail'])) {
                $product->detail = $input['detail'];
            }

            $product->save();
        } else {
            return $this->sendError("Product with ID " . $id . " is not found.");
        }

        return $this->sendResponse($product->toArray(), 'Product updated successfully.');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->delete();
        } else {
            return $this->sendError("Product with ID " . $id . " is not found.");
        }

        return $this->sendResponse($product->toArray(), 'Product deleted successfully.');
    }
}