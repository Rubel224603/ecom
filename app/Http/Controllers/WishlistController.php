<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Session;

class WishlistController extends Controller
{
    public function index(){
        return view('website.wishlist.index');
    }
    public function addWishlist($productId){
         $product  = Product::find($productId);
         //return $product;
         $productId =  $product->id;
        // return $productId;
          Session::put('product_id',$productId);
          //return Session::get('product_id',$productId);


        if (!Session::has('id')) {      //id means customer id

              return redirect()->route('customer.wishlist.login-register');
          }
        $customerId  = Session::get('id');
          //return $customerId;
        $existsCustomer = Wishlist::where('customer_id', $customerId)->where('product_id', $productId)->first();

        //return $existsCustomer;
         if(!$existsCustomer){
             Wishlist::newWishlist($productId,$customerId); //save customer id &  product id;
             return redirect()->route('customer.wishlist')->with('success',"Product added your wishlist");
         }else{
             return redirect()->route('customer.wishlist')->with('alreadyAdded',"Product already  added your wishlist");

         }


    }
    public function delete($wishListProductId){
        //$wishListProduct = Wishlist::find($wishListProductId);
        Wishlist::deleteWishlist($wishListProductId);
        return back()->with('message','WishList Product Item Deleted Successfully');
     }
}
