<?php

namespace App\Models;

use http\Env\Request;
use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    public  static $unit;

    public static function newUnit($request){

        self::$unit = new Unit();
        self::$unit->name           =   $request->name;
        self::$unit->code           =   $request->code;
        self::$unit->status         =   $request->status;
        self::$unit->description    =   $request->description;

        self::$unit->save();

    }
    public static function updateUnit($request,$id){

        self::$unit = Unit::find($id);

        self::$unit->name           =   $request->name;
        self::$unit->code           =   $request->code;
        self::$unit->status         =   $request->status;
        self::$unit->description    =   $request->description;

        self::$unit->save();
    }

    public static function deleteUnit($id){
        self::$unit = Unit::find($id);
        self::$unit->delete();

    }
}
