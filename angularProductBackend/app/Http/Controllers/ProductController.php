<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Products;
use \Carbon\Carbon;

class ProductController extends Controller
{
    public function GetProductList(Request $request)
    {
        $product = Products::take($request->skip);

        if($request->sort =='id'){
            $product = $product->orderBy('id','ASC');
        }else if($request->sort =='size'){ 
            //$product = $product->orderBy('price','ASC');
        }
        else if($request->sort =='price'){ 
            $product = $product->orderBy('product_cost','ASC');
        }
        else{
            $product = $product->orderBy('id','desc');
        }

        $product = $product->get();

        foreach ($product as $val) {
            $val->file_path = isset($val->file) ?  env("APP_URL") . 'storage/' . $val->file : asset('admin_assets/images/no-image.jpg');
            //$date = Carbon::parse($val->created_at);  

            $val->date =  \Carbon\Carbon::parse($val->created_at)->diffForHumans(); 
        }
        return array('status'=>'success','message'=>'product fetch successfully','data'=>$product);   
    }
}
