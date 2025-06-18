@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Sub-Category Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Sub id</th>
                    <th>Category id</th>
                    <th>Name</th>

                    <th>Status</th>


                    <th>Image</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($subCategories as $subCategory)
                    <tr>
                        <td>{{$loop->iteration}}</td>

                        <td>{{$subCategory->id}}</td>
                        <td>{{$subCategory->category_id}}</td>
                        <td>{{$subCategory->name}}</td>
                        <td>{{$subCategory->status}}</td>
                        <td>
                            <img src="{{asset($subCategory->image)}}" alt="" height="50">
                        </td>
                        <td>{{$subCategory->description}}</td>
                        <td>
                            <a href="{{route('sub-category.edit',['id'=>$subCategory->id])}}" class="btn btn-success">Edit</a>
                            <a href="{{route('sub-category.delete',['id'=>$subCategory->id])}}" class="btn btn-danger" onclick="return confirm('Are you sure want to delete?')">Delete</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->











@endsection
