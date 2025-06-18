
@extends('backend.master')


@section('body')



    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Edit Unit Form </h5>
                    </hr>
                </div>
                <div class="card-body">
                    <form action="{{route('unit.update',['id'=>$unit->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <p class="text-success">{{session('message')}}</p>

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Unit Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="{{$unit->name}}" placeholder="Unit Name" name="name" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Unit Code</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="Unit Name" name="code" value="{{$unit->code}}" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 text-dark" for="basic-default-company"> Unt Status</label>
                            <div class="col-sm-10">
                                <lable>   <input type="radio"   value="1"  name="status" {{$unit->status == 1 ? 'checked': ''}}/> Published</lable>
                                <lable>   <input type="radio"   value="2"  name="status" {{$unit->status == 2 ? 'checked': ''}}/> Unpublished</lable>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message"> Description</label>
                            <div class="col-sm-10">
                                <textarea id="" class="form-control" placeholder="write description" name="description" >{{$unit->description}}</textarea>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Update Unit Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





@endsection



