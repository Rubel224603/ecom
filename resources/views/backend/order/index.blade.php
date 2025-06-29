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
                    <th>Payment Method</th>
                    <th class="text-center">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($orders as $order)
                    <tr>
                        <td>{{ ($orders->currentPage() - 1) * $orders->perPage() + $loop->iteration }}</td>

                        <td><b>Name:{{isset($order->customer->name)? $order->customer->name:''}}</b> <br> <b>Mobile: {{isset($order->customer->mobile) ? $order->customer->mobile:''}}</b></td>
                        <td>{{$order->order_date}}</td>
                        <td>{{$order->order_total}}</td>
                        <td>{{$order->order_status}}</td>
                        <td>{{$order->payment_method}}</td>
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
             <div class="d-flex justify-content-between" style="margin-top: 20px; margin-bottom: 20px !important;">
                 @if ($orders->onFirstPage())
                        <span class="ms-5 text-muted">Previous</span>
                    @else
                        <a href="{{ $orders->previousPageUrl() }}" class=" ms-5">Previous</a>
                 @endif
                 @if ($orders->hasMorePages())
                        <a href="{{ $orders->nextPageUrl() }}"  class="me-5">Next</a>
                     @else
                         <span class="me-5 text-muted">Next</span>
                 @endif

                 

             </div>

        </div>
    </div>
    <!-- Modal to add new record -->



@endsection
