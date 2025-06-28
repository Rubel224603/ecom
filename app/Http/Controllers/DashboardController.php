<?php

namespace App\Http\Controllers;

use App\Models\Courier;
use App\Models\Customer;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
Use App\Models\Order;
class DashboardController extends Controller
{
//    public function index(){
//        return view("backend.master");
//    }
    public function home(){

      $totalOrder       =  Order::count();
      $totalCustomer    =  Customer::count();
      $totalProduct     =  Product::count();
      $totalUser        =  User::count();
      $totalCourier     =  Courier::count();

     // return $totalOrder;

        return view("backend.home.index",
            [
                'totalOrder'=>$totalOrder,
                'totalCustomer'=>$totalCustomer,
                'totalProduct'=>$totalProduct,
                'totalUser'=>$totalUser,
                'totalCourier'=>$totalCourier,
            ]);
    }
}
