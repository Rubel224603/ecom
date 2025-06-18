@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Customer Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                    <tr>
                        <th>Sl</th>

                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>

                        <th class="text-center">Action</th>
                    </tr>
                </thead>


                <tbody>
                @foreach($customers as $customer)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$customer->name}}</td>
                        <td>{{$customer->email}}</td>
                        <td>{{$customer->mobile}}</td>
                        <td class="text-center">
                            <a href="#" class="btn btn-success ">Edit</a>
                            <a href="#" class="btn btn-danger ">Delete</a>
                        </td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>

                    </tr>
                @endforeach
                </tbody>

            </table>
        </div>
    </div>
    <!-- Modal to add new record -->



@endsection
