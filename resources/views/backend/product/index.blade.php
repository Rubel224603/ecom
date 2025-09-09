@extends('backend.master')
@section('body')



    <!-- DataTable with Buttons -->
    <div class="card">
        <h4 class="fw-bold text-center text-success">Product Information</h4>
        <div class="card-datatable table-responsive pt-0">
            <table class="datatables-basic table table-bordered">
                <thead>
                <tr>
                    <th>Sl</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Brand</th>
                    <th>Status</th>
                    <th>Action </th>

                </tr>
                </thead>
                <tbody>
                @foreach($products as $product)
                    <tr>
                        <td>{{$loop->iteration}}</td>


                        <td>{{$product->name}}</td>
                        <td><img src="{{asset($product->image)}}" alt="" height="100px"></td>

                        <td>{{$product->brand?->name ?? ''}}</td>

                         <td>{{$product->status ==1 ? "Published" :'Unpublished'}}</td>

                        <td>
                            <a href="{{route('product.detail',['id' =>$product->id])}}" class="btn btn-info">Details</a>
                            <a href="{{route('product.edit',  ['id' =>$product->id])}}" class="btn btn-success">edit</a>
                            <a href="{{route('product.delete',['id' =>$product->id])}}" class="btn btn-danger" onclick="return confirm('Are you sure want to delete!!')">delete</a>
                        </td>
                    </tr>
                @endforeach

                </tbody>
            </table>
        </div>
    </div>
    <!-- Modal to add new record -->




@endsection
