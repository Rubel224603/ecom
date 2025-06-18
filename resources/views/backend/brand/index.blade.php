@extends('backend.master')
@section('body')


    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Bran Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                    <tr>
                        <th>Sl</th>
                        <th>id</th>
                        <th>Name</th>
                        <th>Status</th>
                        <th>Image</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($brands as $brand)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$brand->id}}</td>
                        <td>{{$brand->name}}</td>
                        <td>{{$brand->status}}</td>

                        <td><img src="{{asset($brand->image)}}" alt="" height="100px"></td>

                        <td>{{$brand->description}}</td>

                        <td>
                            <a href="{{route('brand.edit', ['id' => $brand->id])}}" class="btn btn-success">edit</a>
                            <a href="{{route('brand.delete',['id'=>$brand->id])}}" class="btn btn-danger" onclick="return confirm('Are you sure want to delete!!')">delete</a>
                        </td>
                    </tr>
                @endforeach

                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->











@endsection
