
@extends('backend.master')


@section('body')



    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Edit Brand Form </h5>
                    </hr>
                </div>
                <div class="card-body">

                    <p class="text-center text-primary">{{session('message')}}</p>
                    <form action="{{route('brand.update',['id'=> $brand->id])}}" method="POST" enctype="multipart/form-data">


                        @csrf

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Brand Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  value="{{$brand->name}}" placeholder="Brand Name" name="name" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 text-dark" for="basic-default-company"> Publication Status</label>
                            <div class="col-sm-10">
                                <lable>   <input type="radio"   value="1"  name="status" {{$brand->status == 1 ? "checked": '' }}/> Published</lable>
                                <lable>   <input type="radio"   value="2"  name="status" {{$brand->status == 2 ? 'checked': ''}}/> Unpublished</lable>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Image</label>
                            <div class="col-sm-10">
                                <input type="file"  class="form-control phone-mask" name="image"  />
                                <img src="{{asset($brand->image)}}" alt="image"  height="100">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message"> Description</label>
                            <div class="col-sm-10">
                                <textarea id="" class="form-control" placeholder="description" name="description" >{{$brand->description}}</textarea>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Update Brand  Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





@endsection



