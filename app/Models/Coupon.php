<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    public static $coupon;

    public static function addNewCoupon($request){
        self::$coupon                   =  new Coupon();
        self::$coupon->coupon_code      = $request->coupon_code;
        self::$coupon->coupon_status    = $request->coupon_status;
        self::$coupon->save();


    }

    public static function updateCoupon($request,$id){
        //return $request;

        self::$coupon =  Coupon::find($id);

        self::$coupon->coupon_code = $request->coupon_code;
        self::$coupon->coupon_status = $request->coupon_status;
        self::$coupon->save();
    }

    public static function deleteCoupon($id){
        self::$coupon=Coupon::find($id);
        self::$coupon->delete();
    }

}
