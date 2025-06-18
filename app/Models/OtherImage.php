<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OtherImage extends Model
{
    public static $otherImag, $image, $imageName, $directory, $imageUrl, $otherImages;

    public static function getImageUrl($image) {
        self::$image        =  $image;
        self::$imageName    =   self::$image->getClientOriginalName();
        self::$directory    =   'upload/product-other-images/';
        self::$image->move(self::$directory,self::$imageName);
        self::$imageUrl     =   self::$directory.self::$imageName;
        return self::$imageUrl;
    }

    public static function newOtherImage($id,$images){
        foreach($images as $image){
            self::$otherImag                = new OtherImage();
            self::$otherImag->product_id    = $id;
            self::$otherImag->other_image   = self::getImageUrl($image);
            self::$otherImag->save();
        }
    }

    public static function updateOtherImage($id,$images) {
        self::deleteOtherImage($id);
        self::newOtherImage($id,$images);
    }

    public static function deleteOtherImage($id)
    {
        self::$otherImages =  OtherImage::where('product_id',$id)->get();

        foreach(self::$otherImages as $otherImage) {
            if(file_exists($otherImage->other_image)) {
                unlink($otherImage->other_image);
            }
            $otherImage->delete();
        }
    }
}
