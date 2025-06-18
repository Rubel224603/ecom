@extends('website.master')

@section('body')

    <main class="main-wrapper">

        <!-- Start Cart Area  -->
        <div class="axil-product-cart-area axil-section-gap">

            <div class="container">
                <form action="{{route('cart.update')}}" method="POST">
                    <p class="text-center text-success">{{session('message')}}</p>
                    @csrf

                    <div class="axil-product-cart-wrap">
                        <div class="product-table-heading">
                            <h4 class="title">Your Cart</h4>
                            <a href="#" class="cart-clear">Clear Shopping Cart</a>
                        </div>

                        <div class="table-responsive">
                            <table class="table axil-product-table axil-cart-table mb--40">
                                <thead>
                                <tr>
                                    <th scope="col" class="product-remove">  remove</th>
                                    <th scope="col" class="product-thumbnail">Image</th>
                                    <th scope="col" class="product-title"></th>
                                    <th scope="col" class="product-price">Price</th>
                                    <th scope="col" class="product-quantity">Quantity</th>
                                    <th scope="col" class="product-subtotal">Subtotal</th>
                                </tr>
                                </thead>

                                <tbody>

                                    @php($sum=0)
                                    @foreach($cart_products as $key => $cart_product)

                                        <tr>
                                            <td ><a href="{{route('cart.remove',['rowId'=>$cart_product->rowId])}}" class="remove-wishlist" onclick="return confirm('are you sure?')"><i class=" fa fa-trash text-danger "></i></a></td>
                                            <td class="product-thumbnail"><a href="single-product.html"><img src="{{asset($cart_product->options->image)}}" alt="Digital Product"></a></td>
                                            <td class="product-title"><a href="single-product.html">{{$cart_product->name}}</a></td>
                                            <td class="product-price" data-title="Price"><span class="currency-symbol">BDT </span>{{$cart_product->price}}</td>
                                            <td class="product-quantity" data-title="Qty">
                                                <div class="form-group">
                                                    <input type="hidden" min="1" max="100" name="qty[{{$key}}][rowId]" value="{{$cart_product->rowId}}">
                                                    <input type="number" min="1" max="100"  name="qty[{{$key}}][qty]"  value="{{$cart_product->qty}}">
                                                </div>
                                            </td>
                                            <td class="product-subtotal" data-title="Subtotal"><span class="currency-symbol">BDT </span>{{$cart_product->price * $cart_product->qty}}</td>
                                        </tr>
                                         @php ($sum = $sum + ($cart_product->price * $cart_product->qty))


                                    @endforeach


                                 </tbody>
                            </table>
                        </div>

                        <!--coupon-->

                            <p class="text-center text-danger">{{session('error')}}</p>
                            <p class="text-center text-success">{{session('success')}}</p>
                            <p class="text-center text-danger">{{session('coupon_message')}}</p>
                        <div class="cart-update-btn-area">
                            <div class="input-group product-cupon">
                                <input placeholder="Enter coupon code" type="text" name="coupon_code">
                                <div class="product-cupon-btn">
                                    <button type="submit" class="axil-btn btn-outline bg-primary">Apply</button>
                                </div>
                            </div>
                            <div class="update-btn">
                                <button type="submit" class="axil-btn  btn-outline bg-primary ">Update Cart</button>
                            </div>
                        </div>

                        <div class="row">
                        <div class="col-xl-5 col-lg-7 offset-xl-7 offset-lg-5">
                            <div class="axil-order-summery mt--80">
                                <h5 class="title mb--20">Order Summary</h5>

                                <div class="summery-table-wrap">
                                    <table class="table summery-table mb--30">
                                        <tbody>
                                            <tr class="order-subtotal">
                                                <td>Subtotal</td>
                                                <td>{{number_format($sum)}}</td>
                                            </tr>
                                            <tr class="order-subtotal">
                                                <td>Tax</td>

                                                <td>@php($tax  = round( ($sum * 0.15) )) BDT {{ number_format($tax)}} </td>
                                            </tr>
                                            <tr class="order-subtotal">
                                                <td>Shipping</td>
                                                    <td>{{$shipping = 100}}</td>
                                            </tr>



{{--                                            <pre>--}}
{{--                                                 {{ print_r(session('coupon'), true) }}--}}
{{--                                            </pre>--}}


                                            @php($couponAmount = session('coupon')['discount'] ?? 0)



                                            <tr class="order-total">

                                                <td>Total Payable</td>
                                                <td class="order-total-amount">

                                                    @php($totalBill = $sum + $tax + $shipping)

                                                    @if(session()->has('coupon'))
                                                        @php($discount = session('coupon')['discount'] ?? 0)
                                                        BDT {{ number_format($totalBill - $discount) }}

                                                    @else
                                                        BDT {{ number_format($totalBill) }}
                                                    @endif
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <a href="{{route('checkout-index')}}" class="axil-btn btn-bg-primary checkout-btn">Process to Checkout</a>
                            </div>
                        </div>
                    </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- End Cart Area  -->

    </main>









@endsection

