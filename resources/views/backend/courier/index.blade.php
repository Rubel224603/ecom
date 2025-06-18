@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Courier Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Image</th>
                    <th>Addressa</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($couriers as $courier)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$courier->name}}</td>
                        <td>{{$courier->email}}     </td>
                        <td>{{$courier->mobile}}</td>
                        <td><img src="{{asset($courier->logo)}}" alt="courier logo" height="100" ></td>
                        <td>{{$courier->address}}</td>
                        <td>
                            <a href="{{route('courier.edit',$courier->id)}}" class="btn btn-primary ">Edit</a>
                            <form action="{{route('courier.destroy', $courier->id)}}" method="POST">
                                @method('DELETE')
                                @csrf
                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this !')">
                                    Delete
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->



@endsection
