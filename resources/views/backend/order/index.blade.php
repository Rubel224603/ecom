@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Order Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <p class="text-danger">{{session('message')}}</p>
            <table class="datatables-basic table table-bordered">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Customer Info</th>
                    <th>Order Date</th>
                    <th>Order total</th>
                    <th>Order Status</th>
                    <th class="text-center">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($orders as $order)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td><b>Name:{{isset($order->customer->name)? $order->customer->name:''}}</b> <br> <b>Mobile: {{isset($order->customer->mobile) ? $order->customer->mobile:''}}</b></td>
                        <td>{{$order->order_date}}</td>
                        <td>{{$order->order_total}}</td>
                        <td>{{$order->order_status}}</td>
                        <td>
                            <a href="{{route('admin.order-detail',['id'=>$order->id])}}" class="btn btn-info">Detail</a>
                            <a href="{{route('admin.order-edit',['id'=>$order->id])}}" class="btn btn-success">Edit</a>
                            <a href="{{route('admin.order-invoice',['id'=>$order->id])}}" class="btn btn-primary">Invoice</a>
                            <a href="{{route('admin.order.invoice-print',['id'=>$order->id])}}" target="_blank" class="btn btn-warning">Print</a>
                            <a href="{{route('admin.order-delete',['id'=>$order->id])}}" class="btn btn-danger {{$order->order_status=='Cancel'?'':'disabled'}}" onclick="return confirm('Are you sure?? to delete this')">Delete</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->



@endsection
