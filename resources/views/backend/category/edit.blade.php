
@extends('backend.master')


@section('body')



    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Edit Category Form </h5>
                    </hr>
                </div>
                <div class="card-body">
                    <form action="{{route('category.update',['id'=>$category['id']])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <p class="text-success">{{session('message')}}</p>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Category Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="category" name="name" value="{{$category['name']}}" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 text-dark" for="basic-default-company"> Publication Status</label>
                            <div class="col-sm-10">
                                <lable>   <input type="radio"  name="status" {{$category['status'] == 1 ? 'checked' :''}} value="1"/> Published</lable>
                                <lable>   <input type="radio"  name="status" {{$category['status'] == 0 ? 'checked' : ''}} value="0" /> Unpublished</lable>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Image</label>
                            <div class="col-sm-10">
                                <input type="file"  class="form-control phone-mask" name="image"  />
                                <img src="{{asset($category['image'])}}" alt="" class="mt-3" height="100">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message"> Description</label>
                            <div class="col-sm-10">
                                <textarea id="" class="form-control" placeholder="write description" name="description" >{{$category['description']}}</textarea>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Update Category Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





@endsection



