@extends('backend.master')
@section('body')



    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Add User Form </h5>
                    </hr>
                </div>
                <div class="card-body">
                    <form action="{{route('user.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <p class="text-success">{{session('message')}}</p>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">User Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="name" name="name" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">User Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control"  placeholder="email" name="email" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">User Password</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="password" name="password" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">User Mobile</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control"  placeholder="Mobile" name="mobile" />
                            </div>
                        </div>



                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Image</label>
                            <div class="col-sm-10">
                                <input type="file"  class="form-control phone-mask" name="image"  />
                            </div>
                        </div>

                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Save User Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>


@endsection
