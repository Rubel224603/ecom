<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{

    public static $customer,$image,$imagName,$directory,$imagUrl;

    public static function getImageUrl($request){

        self::$image        = $request->file('image');
        self::$imagName     = self::$image->getClientOriginalName();
        self::$directory    = 'upload/customer-images/';
        self::$image->move(self::$directory,self::$imagName);
        self::$imagUrl      = self::$directory.self::$imagName;

        return self::$imagUrl;
    }

    public static function newCustomer($request){
        self::$customer             =   new Customer();
        self::$customer->name       =   $request->name;
        self::$customer->email      =   $request->email;
        self::$customer->mobile     =   $request->mobile;
        self::$customer->password   =   bcrypt($request->password);
        self::$customer->save();
        return self::$customer;
    }
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
    public static function updateCustomer($request,$id){

        self::$customer = Customer::find($id);
       // return self::$customer;

      if($request->file('image')){
          self::$imagUrl = self::getImageUrl($request);
      }
      else{
          self::$imagUrl= self::$customer->image;
      }

        self::$customer->name           =   $request->name;
        self::$customer->email          =   $request->email;
        self::$customer->mobile         =   $request->mobile;
        self::$customer->image          =   self::$imagUrl;
        self::$customer->blood_group    =   $request->blood_group;
        self::$customer->date_of_birth  =   $request->date_of_birth;
        self::$customer->address        =   $request->address;
        self::$customer->save();
        return self::$customer;


    }

}
