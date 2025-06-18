@extends('website.master');
@section('body')
    <div class="container my-5">
        <div class="row my-5">
            <div class="col-md-3">

                <div class="card card-body">
                    <div class="list-group">
                        @include('customer.include.menu')

                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card shadow-lg">
                    <div class="card-header">
                        <h1>Change Password</h1>
                        <p class="text-primary text-center">{{session('message')}}</p>
                    </div>


                    <div class="card-body">
                        @foreach($customer as $customerDetails)

                        <form action="{{route('customer.password-update',['id'=>$customerDetails->id])}}" method="POST" >

                            @csrf
                            <div class="row mb-4">
                                <label class="col-sm-2 col-form-label" for="basic-default-name"> Old Password  </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control border"  placeholder="enter your old password" name="old_password"  value="{{ old('old_password') }}" />
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label class="col-sm-2 col-form-label" for="basic-default-name">New Password </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control border"  placeholder="enter new password" name="new_password" value="" />
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label class="col-sm-2 col-form-label" for="basic-default-name">Confirm  Password </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control border"  placeholder="retype new password" name="confirm_password" value="" />
                                </div>
                            </div>
                            <div class="row mb-4">
                                <label class="col-sm-2" for=""></label>
                                <div class="col-sm-10">
                                    <div class="product-cupon-btn">
                                        <button type="submit" class="axil-btn  bg-primary text-light">Save</button>
                                    </div>
                                </div>
                            </div>


                        </form>
                        @endforeach
                    </div>
              </div>
            </div>
        </div>
    </div>
@endsection
