@extends('backend.master')
@section('body')

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Add Courier Form </h5>
                    </hr>
                </div>
                <div class="card-body">
                    <form action=" {{route('courier.update', $courier->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <p class="text-success">{{session('message')}}</p>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Courier Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="Courier Name" name="name" value="{{$courier->name}}" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control"  placeholder="email" name="email" value="{{$courier->email}}" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Mobile</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control"  placeholder="enter mobile number" name="mobile" value="{{$courier->mobile}}" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Address</label>
                            <div class="col-sm-10">
                                <textarea name="address" class="form-control" placeholder="enter address">{{$courier->address}}</textarea>
                            </div>
                        </div>`


                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Logo</label>
                            <div class="col-sm-10">

                                <input type="file"  class="form-control phone-mask" name="logo"  />
                                <img src="{{asset($courier->logo)}}" alt="">
                            </div>
                        </div>

                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Update Courier Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>


@endsection



