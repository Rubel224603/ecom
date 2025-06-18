@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <div class="card-body">
            <h4 class="fw-bold text-success">Order Basic Information</h4>
            <div class="card-datatable table-responsive pt-0">
                <table class="datatables-basic table table-bordered">
                    <thead>
                    <tr>
                        <th>Order Id</th>
                        <td>{{$order->id}}</td>
                    </tr>
                    <tr>
                        <th>Order Date</th>
                        <td>{{$order->order_date}}</td>
                    </tr>

                    <tr>
                        <th>Order Status</th>
                        <td>{{$order->order_status}}</td>
                    </tr>
                    <tr>

                        <th>Order total</th>
                        <td>{{$order->order_total}}</td>

                    </tr>
                    <tr>
                        <th>Tax Total</th>
                        <td>{{$order->tax_total}}</td>
                    </tr>

                    <tr>
                        <th>Shipping Total</th>
                        <td>{{$order->shipping_total}}</td>
                    </tr>
                    <tr>
                        <th>delivery Address</th>
                        <td>{{$order->delivery_address}}</td>

                    </tr>
                    <tr>
                        <th>delivery Date</th>
                        <td>{{$order->delivery_date}}</td>
                    </tr>

                    <tr>
                        <th>Delivery Status	</th>
                        <td>{{$order->payment_status}}</td>
                    </tr>
                    <tr>
                        <th>Payment Method</th>
                        <td>{{$order->payment_method}}</td>
                    </tr>

                    <tr>
                        <th>payment Date</th>
                        <td>{{$order->payment_date}}</td>
                    </tr>
                    <tr>
                        <th>Payment Status</th>
                        <td>{{$order->payment_status}}</td>
                    </tr>

                    <tr>
                        <th>Customer Info	</th>
                        <td> <b>Name:{{ $order->customer->name}} <br> Mobile:{{$order->customer->mobile}}</b></td>

                    </tr>
                    <tr>
                        <th>Courier Info</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>Currency</th>
                        <td>{{$order->currency}}</td>
                    </tr>
                    <tr>
                        <th>Transaction id</th>
                        <td>{{$order->transaction_id }}</td>
                    </tr>

                    </thead>

                </table>
            </div>

        </div>
        <div class="card-body">
            <h4 class="fw-bold text-success"> Order Product Information</h4>
            <div class="card-datatable table-responsive pt-0">
                <table class="datatables-basic table table-bordered">
                    <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Product Price</th>
                        <th>Product Quantity</th>
                        <th>Total Price</th>
                    </tr>
                  @foreach( $order->orderDetail as $orderItem)
                      <tr>
                          <td>{{$orderItem->product_name}}</td>
                          <td>{{$orderItem->product_price}}</td>
                          <td>{{$orderItem->product_qty}}</td>
                          @php($sum= 0)
                          <td>{{$total=($sum=$orderItem->product_price*$orderItem->product_qty)}}</td>



                      </tr>
                  @endforeach
                    </thead>

                </table>
            </div>

        </div>

    </div>
    <!-- Modal to add new record -->



@endsection
