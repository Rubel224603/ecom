@extends('backend.master')
@section('body')

<div class="viw overall">
            <h1 class="text-center">welcome To Admin System</h1>
            <div style="display:flex">
                <button class="btn btn-success bg-primary" style=" width:500px;">Total order {{$totalOrder}}</button>
                <button class="btn btn-success bg-primary" style="background:red; width:500px; padding:20px;margin-left:10px;">Total Customer
                    {{$totalCustomer}}</button>
            </div>
            <div style="display:flex;margin-top: 20px;">
                <button class="btn btn-success bg-primary" style=" width:500px;">Total Product {{$totalProduct}}</button>
                <button class="btn btn-success bg-primary" style="background:red; width:500px; padding:20px; margin-left:10px;">Total Admin User
                     {{$totalUser}} </button>
            </div>
            <div style="display:flex;margin-top: 20px;">
                <button class="btn btn-success bg-primary" style=" width:500px;">Total Courier {{$totalCourier}}</button>
                <button class="btn btn-success bg-primary" style="background:red; width:500px; padding:20px;margin-left:10px;">Stock product 100</button>
            </div>
            <div style="display:flex;margin-top: 20px;">
                <button class="btn btn-success bg-primary" style=" width:500px;">Total Earnig 100000</button>
                <button class="btn btn-success bg-primary" style="width:500px; padding:20px;margin-left:10px;">Total Invest 500000</button>
            </div>


        </div>


@endsection
