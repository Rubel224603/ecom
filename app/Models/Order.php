<?php

namespace App\Models;
use Session;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public static $order;

    public static function newOrder($request){
        self::$order                    = new Order();
        self::$order->customer_id       = Session::get('id');
        self::$order->order_total       = Session::get('order_total');
        self::$order->tax_total         = Session::get('tax_total');
        self::$order->shipping_total    = Session::get('shipping_total');
        self::$order->order_date        = date('Y-d-m');
        self::$order->order_timestamp   = strtotime(date('Y-d-m'));
        self::$order->delivery_address  = $request->delivery_address;
        self::$order->payment_method    = $request->payment_method;
        self::$order->save();
        return self::$order->id;
    }

    public function customer(){
        return $this->belongsTo(Customer::class);
    }
    public function  orderDetail(){
        return $this->hasMany(OrderDetail::class);
    }

    public static function deleteOrder($id){
        Order::find($id)->delete();
    }
}
