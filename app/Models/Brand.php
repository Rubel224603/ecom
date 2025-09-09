<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    public static $brand,$image,$imagName,$directory,$imagUrl;

    public static function getImageUrl($request){

        self::$image    = $request->file('image');
        self::$imagName = self::$image->getClientOriginalName();
        self::$directory = 'upload/brand-images/';
        self::$image->move(self::$directory,self::$imagName);
        self::$imagUrl  = self::$directory.self::$imagName;

        return self::$imagUrl;
    }

    public static function newBrand($request){

        self::$brand                =   new Brand();

        self::$brand->name          =   $request->name;
        self::$brand->status        =   $request->status;
        self::$brand->image         =   self::getImageUrl($request);
        self::$brand->description   =   $request->description;
        self::$brand->save();

    }
    public static function updateBrand($request,$id){

        self::$brand = Brand::find($id);

        if($request->file('image')){

            self::$imagUrl = self::getImageUrl($request);

        }else{
            self::$imagUrl = self::$brand->image;
        }

        self::$brand->name          =   $request->name;
        self::$brand->status        =   $request->status;
        self::$brand->image         =   self::$imagUrl;
        self::$brand->description   =   $request->description;

        self::$brand->save();
    }

    public static function deleteBrand($id){
       self::$brand = Brand::find($id);
        if(file_exists(self::$brand->image)){
            unlink(self::$brand->image);
        }
        self::$brand->delete();
    }
    public function products(){
        return $this->hasMany(Product::class,'brand_id','id');
    }





}
