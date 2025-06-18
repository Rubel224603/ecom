<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Session;

class CheckOutController extends Controller
{
    private $customer;
    public function index(){
        //dd(Session::get('id')); check
        if(Session::get('id')){

            return redirect('/checkout/billing-info');
        }

        return view('website.checkout.index' );
    }

    public function newCustomer(Request $request){

        $this->customer = Customer::newCustomer($request);

        Session::put('id',$this->customer->id);
        Session::put('name',$this->customer->name);

        return redirect('/checkout/billing-info');

    }
    public function billingInfo(){
        return view('website.checkout.billingInfo');
    }
    public function customerLogin(Request $request){
       // return $request;
        $this->customer = Customer::where('email',$request->email)->first();
        //return $this->customer;
        //return bcrypt('1233');test purpose
        //return redirect('/checkout/billing-info');

        if( $this->customer){

            if(password_verify($request->password,$this->customer->password)){

                Session::put('id',$this->customer->id);
                Session::put('name',$this->customer->name);
                Session::put('image', $this->customer->image);

                return redirect('/checkout/billing-info');

            }else{
                return back()->with('message','Password Invalid');
            }
        }else{
            return back()->with("message","Email Invalid");
        }
    }
    private $orderId;

    public function newOrder(Request $request){
        //return $request;
        if($request->payment_method =='Cash'){
            //return "kk";
            $this->orderId =  Order::newOrder($request);//order model theke order save kore oi  save kora datar  id ta dibe
            //return $this->orderId;
            OrderDetail::newOrderDetail($this->orderId);
            //return $request;

            Session::forget('cart');

            return redirect('/checkout/order-completed')->with('message', 'Your order info post successfully. Please wait, we will contact with you soon.');

        } elseif($request->payment_method == 'Online'){

            $sslCommerzPayment = new SslCommerzPaymentController();
             return $sslCommerzPayment->index($request);
        }

    }
    public function orderCompleted(){
        return view('website.checkout.orderCompleted')->with('message','order completed');
    }


    public function customerLogout(){
        Session::forget('id');
        Session::forget('name');
        Session::forget('image');

       return redirect('/');
    }





}
