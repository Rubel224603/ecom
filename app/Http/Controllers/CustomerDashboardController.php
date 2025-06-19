<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\Wishlist;
use Illuminate\Http\Request;
Use Session;


class CustomerDashboardController extends Controller
{
    public function profile(){

       // $customer = Customer::where('id',Session::get('id'))->get();
        //return $customer;
        return view('customer.profile.index',['customer'=>Customer::where('id',Session::get('id'))->get()]);

    }
    public function order(){
    return view('customer.order.index', ['orders' => Order::where('customer_id', Session::get('id'))->latest()->get()]);
    }
    public function wishlist(){
        return view('customer.wishlist.index',['wishLists'=>Wishlist::where('customer_id',Session::get('id'))->latest()->get()]);
    }
    public function changePassword(){
        //$customer = Customer::where('id',Session::get('id'))->get();
        //return $customer;

        return view('customer.changePassword.index',['customer'=>Customer::where('id',Session::get('id'))->get()]);
    }
    public function updatePassword(Request $request,$id){
        //return $request;
        $customer = Customer::find($id);
        //return $customer;

        if (password_verify($request->old_password,$customer->password)) {

            //return $request->old_password;
            //$customer->password = $request->new_password;
           if($request->new_password == $request->confirm_password){
                $customer->password= bcrypt($request->new_password);
                $customer->save();
                return back()->with('message',"Password Update successfully");
           }else{
               return "new password & confirm password did not match";
           }

            //return $customer->password;

        }else{
            return  back()->with("message","Old Password did not match");
        }



    }
    public function updateCustomerProfile(Request $request,$id){
        //return $request;

       // $customerId=  Customer::updateCustomer($request,$id);

        //return $customerId;
        Customer::updateCustomer($request, $id);

        $customer = Customer::find($id);
        Session::put('image', $customer->image);

        //dd(Session::get('image', $customer->image)) ;


        return back()->with('message',"Customer Profile Updated");
    }

}
