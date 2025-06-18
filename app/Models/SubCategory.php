<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    public static $subCategory, $image,$imagName, $directory, $imagUrl;

    public static function getImageUrl($request){

        self::$image= $request->file('image');
        self::$imagName  = self::$image->getClientOriginalName();
        self::$directory = 'upload/Sub-category/';
        self::$image->move(self::$directory,self::$imagName);
        self::$imagUrl = self::$directory.self::$imagName;

        return self::$imagUrl;

    }

    public static function newSubCategory($request){

        self::$subCategory = new SubCategory();
        self::$subCategory->category_id     =   $request->category_id;
        self::$subCategory->name            =   $request->name;
        self::$subCategory->status          =   $request->status;
        self::$subCategory->description     =   $request->description;
        self::$subCategory->image           =   self::getImageUrl($request);

        self::$subCategory->save();

    }
    public function category(){
        return $this->belongsTo(Category::class);
    }

    public static function updateSubCategory($request,$id){

        self::$subCategory = SubCategory::find($id);

        if($request->file('image')){
           self::$imagUrl = self::getImageUrl($request);

        }else{
            self::$imagUrl = self::$subCategory->image;
        }




        self::$subCategory->category_id     =   $request->category_id;
        self::$subCategory->name            =   $request->name;
        self::$subCategory->status          =   $request->status;
        self::$subCategory->description     =   $request->description;
        self::$subCategory->image           = self::$imagUrl;
        self::$subCategory->save();

    }

    public static function deleteSubCategory($id){

        self::$subCategory  = SubCategory::find($id);

        if(file_exists(self::$subCategory->image)){

            unlink(self::$subCategory->image);
        }
        self::$subCategory->delete();

    }

}
