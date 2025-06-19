<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Customer;
use Session;

class CustomerAuthController extends Controller
{
    public $customer;
    public function index(){
        return view('customer.auth.index');
    }

    public function register(Request $request){

        //return $request;

        $this->customer = Customer::newCustomer($request);
        Session::put('id',$this->customer->id);
        Session::put('name',$this->customer->name) ;
        return redirect('/customer-dashboard');

    }
    public function loginCheck(Request $request){

      $this->customer =  Customer::where('email',$request->email)->first();

      if($this->customer){

          if(password_verify($request->password, $this->customer->password)){

             Session::put('id',$this->customer->id);
             Session::put('name',$this->customer->name);
             Session::put('image', $this->customer->image);

              if(Session::get('product_id')){
                  return Session::get('product_id');
                 return redirect()->route('customer.wishlist');
              }
             //return Session::get('product_id');

          }else{

              return back()->with('message','Invalid password');
          }
      }else{
              return back()->with('message','Invalid Email Address');
      }


      return redirect('/customer-dashboard');

    }

//    public function dashboard(){
//        return view('customer.dashboard.index',
//            ['customer'=>Customer::where('id',Session::get('id'))->get()],
//            ['totalOrder'=>Order::where('customer_id',$this->customer->id)->count()],
//        );
//    }

    public function dashboard()
    {
        $customerId = Session::get('id');

        $customer = Customer::find($customerId);
        //return $customer;
        $totalOrder = Order::where('customer_id', $customerId)->count();

        return view('customer.dashboard.index', compact('customer', 'totalOrder'));
    }

}
