@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Coupon Information</h4>
        <p class="text-danger text-center">{{session('message')}}</p>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Coupon id</th>
                    <th>Coupon Code</th>
                    <th>Status</th>



                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($coupons as $coupon)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$coupon->id}}</td>
                        <td> {{$coupon->coupon_code}}</td>

                        <td>{{$coupon->coupon_status == 1?'Published':'Unpublished'	}}</td>

                        <td>
                            <a href="{{route('admin.coupon.edit',['id'=>$coupon->id])}}" class="btn btn-success">edit</a>
                            <a href="{{route('admin.coupon.delete',['id'=>$coupon->id])}}" class="btn btn-danger" onclick="return confirm('Are you sure want to delete!!')">delete</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->











@endsection
