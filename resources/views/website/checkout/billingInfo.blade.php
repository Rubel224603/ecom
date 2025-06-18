@extends('website.master')

@section('body')

    <div class="container mt-5 mb-5">
        <div class="row">
            <!-- Billing Form -->
            <div class="col-lg-6 col-md-6 mb-5">
                <form action="{{ route('checkout.new-order') }}" method="POST">
                    @csrf
                    <h3 class="mt-5 mb-5 bg-dark text-white p-3">Billing Details</h3>

                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <label for="" class="fs-3">Delivery Address <span class="text-danger">*</span></label>
                            <textarea name="delivery_address" cols="10" rows="3" placeholder="order delivery address" class="form-control fs-3" required></textarea>
                        </div>

                        <div class="col-md-12">
                            <div class="order_notes mb-5">
                                <label class="fs-3">Payment Method <span class="text-danger">*</span></label>
                                <div>
                                    <label class="fw-bold">
                                        <input type="radio" class="ms-3" style="opacity: 1 !important;position: relative !important;" name="payment_method" value="Cash" checked> Cash On Delivery
                                    </label>
                                    <label class="fw-bold">
                                        <input type="radio" name="payment_method" value="Online" style="opacity: 1 !important;position: relative !important;"> Online
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <input type="submit" value="Confirm Order" class="btn fw-bold bg-success text-white text-capitalize w-100">
                        </div>
                    </div>
                </form>
            </div>

            <!-- Order Summary -->
            <div class="col-lg-6 col-md-6 mb-5">
                <h3 class="mt-5 mb-5 bg-dark text-white p-3">Your Order</h3>

                @php
                    $subtotal = 0;
                    foreach (Cart::content() as $item) {
                        $subtotal += $item->price * $item->qty;
                    }

                    $tax = round($subtotal * 0.15);
                    $shipping = 100;
                    $couponDiscount = session('coupon')['discount'] ?? 0;
                    $finalTotal = $subtotal + $tax + $shipping - $couponDiscount;

                    Session::put('order_total', $subtotal);
                    Session::put('shipping_total', $shipping);
                    Session::put('tax_total', $tax);
                    Session::put('final_total', $finalTotal);
                @endphp

                <table class="table table-success table-striped">
                    <thead>
                    <tr>
                        <th class="fw-bold p-4">Product</th>
                        <th class="fw-bold p-4">Total</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach(Cart::content() as $item)
                        <tr>
                            <td class="p-4">{{ $item->name }} <strong>({{ $item->price }} × {{ $item->qty }})</strong></td>
                            <td class="p-4">{{ $item->price * $item->qty }}</td>
                        </tr>
                    @endforeach
                    </tbody>
                    <tfoot>
                    <tr>
                        <td class="p-4">Tax</td>
                        <td class="p-4">BDT {{ number_format($tax) }}</td>
                    </tr>
                    <tr>
                        <td class="p-4">Shipping</td>
                        <td class="p-4 text-danger">BDT {{ $shipping }}</td>
                    </tr>
                    @if(session()->has('coupon'))
                        <tr>
                            <td class="p-4 text-success">Coupon ({{ session('coupon')['code'] }})</td>
                            <td class="p-4 text-success">- BDT {{ $couponDiscount }}</td>
                        </tr>
                    @endif
                    <tr>
                        <td class="p-4 fw-bold">Order Total</td>
                        <td class="p-4 fw-bold">BDT {{ number_format($finalTotal) }}</td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>

@endsection
