@extends('backend.master')
@section('body')

    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Category Information</h4>
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
                @foreach($categories as $category)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$category['id']}}</td>
                        <td>{{$category['name']}}</td>

                        <td>{{$category['status']}}</td>
                        <td><img src="{{asset($category['image'])}}" alt="category_image" height="100x" width="100px"></td>
                        <td>{{$category['description']}}</td>
                        <td>
                            <a href="{{route('category.edit',['id'=>$category->id])}}" class="btn btn-success">edit</a>
                            <a href="{{route('category.delete',['id'=>$category->id])}}" class="btn btn-danger" onclick="return confirm('Are you sure want to delete!!')">delete</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->











@endsection
