@extends('website.master')
@section('body')
    <div class="container my-5">
        <div class="row my-5">
            <div class="col-md-3">

                <div class="card card-body">
                    <div class="list-group">
                        @include('customer.include.menu')

                    </div>
                </div>
            </div>
            <div class="col-md-9">

                <div class="card card-body">
                    <h1>My Order</h1>
                    <table class="table table-dark border">
                        <thead>
                            <tr>
                                <th>sl </th>
                                <th>Order Id</th>

                                <th>Order date</th>
                                <th>Order total </th>
                                <th>Order Status </th>
                                <th>Action </th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($orders as $order)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$order->id}}</td>
                                <td>{{$order->order_date}}</td>
                                <td>{{$order->order_total}}</td>
                                <td>{{$order->order_status}}</td>
                                <td>
                                    <a href="" class="btn btn-success btn-sm">Detail</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
