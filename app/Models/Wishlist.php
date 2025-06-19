<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    public static function newWishlist($productId,$customerId){
        $wishlist = new Wishlist();
        $wishlist->product_id = $productId;
        $wishlist->customer_id = $customerId;
        $wishlist->save();
    }

    public function product(){
        return $this->belongsTo(Product::class);
    }
}
