<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    public function create(){
        return view('backend.coupon.create');
    }
    public function store(Request $request){
        //return $request;
         Coupon::addNewCoupon($request);
        return back()->with('message','Coupon added successfully');
    }
    public function index(){
        return view('backend.coupon.index',['coupons'=>Coupon::all()]);
    }
    public function edit($id){
       $coupon= Coupon::find($id);
        return view('backend.coupon.edit',compact('coupon'));
        //return $couponId;
    }
    public function update(Request $request,$id){
        Coupon::updateCoupon($request,$id);
        return redirect('admin/coupon-index')->with('message','updated successfully');
    }
    public function delete($id){
       Coupon::deleteCoupon($id);
       return back()->with('message','Coupon deleted');
    }



}
