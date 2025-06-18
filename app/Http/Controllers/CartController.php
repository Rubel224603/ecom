<?php

namespace App\Http\Controllers;

use App\Models\Coupon;
use App\Models\Product;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
    private $product;
    public function index(){
        //return Cart::content();
        return view('website.cart.index',['cart_products'=>Cart::content()]);


    }

    public function addToCard(Request $request,$id){
        //return $request;
        $this->product = Product::find($id);
        Cart::add([
            'id'=>$this->product->id,
            'name'=>$this->product->name,
            'qty'=>$request->qty,
            'price'=>$this->product->selling_price,
            'options'=>[
                'image'=>$this->product->image,
                'code'=>$this->product->code
            ]
        ]);
        return redirect('/cart/index');
    }

    public function productRemove($rowId){
        Cart::remove($rowId);
        return back()->with('message','Cart Product info remove successfully');
    }

    public function updateCart(Request $request)
    {
        if(isset($request->qty)){
            foreach ($request->qty as $item)
            {
                //return $item;
                Cart::update($item['rowId'], $item['qty']);
            }
        }

//        if (isset($request->qty)) {
//            foreach ($request->qty as $item) {
//                if ($item && isset($item['rowId']) && isset($item['qty'])) {
//                    Cart::update($item['rowId'], $item['qty']);
//                }
//            }
//        }



        $cart = Cart::content();

        $sum = 0;

        foreach ($cart as $item) {
            $sum += $item->price * $item->qty;
        }
        $tax = round($sum * 0.15);
        $shipping = 100;
        $total = $sum + $tax + $shipping;

        if ($total < 2000 && session()->has('coupon')) {
            session()->forget('coupon');
        }


        if(isset($request->coupon_code)){

            $coupon =  Coupon::where('coupon_code',$request->coupon_code)->where('coupon_status',1)->first();

           // return $coupon;
            if(!$coupon){
                return back()->with('coupon_message',"Invalid or Expired coupon");
            }



            //return $total;

            if ($total >= 2000) {
                session()->put('coupon',[
                    'code'=>$coupon->coupon_code,
                    'discount'=>$coupon->discount_amount ?:100

                ]);
                return back()->with('success', 'Coupon applied successfully!');

            }else{
                return back()->with('error','Minimum 2000  tk or greater than 2000 for coupon');
            }


        }
        return back()->with('message', 'Cart updated.');


    }

    public function directAddToCart($id){

        $this->product = Product::find($id);

       // return $this->product->id;

        Cart::add([
            'id'=>$this->product->id,
            'name'=>$this->product->name,
            'qty'=>1,
            'price'=>$this->product->selling_price,
            'options'=>[
                'image'=>$this->product->image,
                'code'=>$this->product->code
            ]
        ]);
        return redirect('/cart/index');
    }




}
