<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public static $product, $image, $imageName, $directory,$imageUrl;

    public static function getImageUrl($request){

        self::$image        =   $request->file('image');
        self::$imageName    =   self::$image->getClientOriginalName();
        self::$directory    =  'upload/product-image/';
        self::$image->move(self::$directory,self::$imageName);
        self::$imageUrl     =   self::$directory.self::$imageName;

        return self::$imageUrl;

    }

    public static function newProduct($request){

        self::$product = new Product();

        self::$product->category_id             =   $request->category_id;
        self::$product->sub_category_id         =   $request->sub_category_id;
        self::$product->brand_id                =   $request->brand_id;
        self::$product->unit_id                 =   $request->unit_id;
        self::$product->name                    =   $request->name;
        self::$product->code                    =   $request->code;
        self::$product->product_price           =   $request->product_price;
        self::$product->selling_price           =   $request->selling_price;
        self::$product->stock                   =   $request->stock;
        self::$product->short_description       =   $request->short_description;
        self::$product->long_description        =   $request->long_description;
        self::$product->meta_title              =   $request->meta_title;
        self::$product->meta_description        =   $request->meta_description;
        self::$product->image                   =   self::getImageUrl($request);

        self::$product->save();
        return self::$product->id;



    }



    public static function  updateProduct($request,$id){

        self::$product = Product::find($id);

        if($request->file('image')){
            self::$imageUrl =   self::getImageUrl($request);

        }else{
            self::$imageUrl =   self::$product->image;

        }


        self::$product->category_id         =   $request->category_id;
        self::$product->sub_category_id     =   $request->sub_category_id;
        self::$product->brand_id            =   $request->brand_id;
        self::$product->unit_id             =   $request->unit_id;
        self::$product->name                =   $request->name;
        self::$product->code                =   $request->code;
        self::$product->product_price       =   $request->product_price;
        self::$product->selling_price       =   $request->selling_price;
        self::$product->stock               =   $request->stock;
        self::$product->status              =   $request->status;
        self::$product->short_description   =   $request->short_description;
        self::$product->long_description    =   $request->long_description;
        self::$product->image               =   self::$imageUrl;
        self::$product->meta_title          =   $request->meta_title;
        self::$product->meta_description    =   $request->meta_description;

        self::$product->save();


    }


    public static function deleteProduct($id){

        self::$product  = Product::find($id);

        if(file_exists(self::$product->image)){
            unlink(self::$product->image);
        }
        self::$product->delete();
    }

    public function category(){

        return $this->belongsTo(Category::class);

    }
    public function subcategory(){

        return $this->belongsTo(SubCategory::class);
    }
    public function brand(){

        return $this->belongsTo(Brand::class);
    }
     public function unit(){

        return $this->belongsTo(Unit::class);
    }

    public function otherImage(){

        return $this->hasMany(OtherImage::class);
    }
}
