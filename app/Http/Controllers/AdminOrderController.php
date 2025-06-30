<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\WelcomeEmail;

class AdminOrderController extends Controller
{
    public function index(){
        return view('backend.order.index',['orders'=>Order::orderBy('id','desc')->paginate(15)]);
    }

    public function detail($id){
        return view('backend.order.detail',['order'=>Order::find($id)]);
    }

    public function edit($id){
        //return $requset;
        return view('backend.order.edit',['order'=>Order::find($id)]);
    }
    private $order;
    public function update(Request $request,$id){
        //return $request;
        $this->order = Order::find($id);

       // return $this->order;

        if( $request->order_status == 'Pending'){
            $this->order->delivery_address      = $request->delivery_address;
            $this->order->order_status          = $request->order_status;
            $this->order->payment_status        = $request->order_status;
        }
        elseif($request->order_status == 'Processing'){
            $this->order->courier_id            = $request->courier_id;
            $this->order->order_status          = $request->order_status;
            $this->delivery_address             = $request->delivery_address;
            $this->payment_status               = $request->order_status;
        }
        elseif($request->order_status =='Complete'){
            $this->order->order_status          = $request->order_status;
            $this->order->delivery_status       = $request->order_status;
            $this->order->payment_status        = $request->order_status;
            $this->order->delivery_date         = date('Y-m-d');
            $this->order->delivery_timestamp    = strtotime(date('Y-m-d'));
            $this->order->payment_amount        = $this->order->order_total;
            $this->order->payment_date          = date('Y-d-m');
            $this->order->payment_timestamp     = strtotime(date('Y-d-m'));

            $msg = "Confirmd Your Order....";
            $subject ="Confirmd Your Order ";
            $orderId = $this->order->id;
            //return $orderId;

            $customerName = $this->order->customer->email;
            //return $customerName;
            Mail::to($customerName)->send(new WelcomeEmail($this->order,$msg,$subject));

        }elseif($request->order_status =='Cancel'){
            $this->order->order_status          = $request->order_status;
            $this->order->delivery_status       = $request->order_status;
            $this->order->payment_status        = $request->order_status;
        }
        $this->order->save();
        return redirect('admin/order/all-order')->with('message','order update successfully');
    }

    public function invoice($id){
        return view('backend.order.invoice',['order'=>Order::find($id)]);
    }
    private $pdf;
    public function invoicePrint($id){
        $this->pdf=PDF::loadView("backend.order.invoice-print",['order'=>Order::find($id)]);
        return  $this->pdf->stream('test.pdf');
    }
    public function delete($id){
        $this->order = Order::find($id);
        if( $this->order->order_status !='Cancel'){
            return back()->with('message','Sorry , You can not delete this');

        }
        Order::deleteOrder($id);
        OrderDetail::deleteDetailOrder($id);
        return back()->with('message','Order deleted successfully');
    }


}
