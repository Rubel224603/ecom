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
                @if(Session::get('id'))
                    <div class="card shadow-lg">
                        <div class="card-header text-white">
                            <h4 class="mb-0">Customer Profile</h4>
                            <p class="text-center fw-bolder text-primary">{{session('message')}}</p>
                        </div>
                        <div class="card-body">


                            @foreach($customer as $customerDetails)
                              <form action="{{route('customer.update',['id'=>$customerDetails->id])}}" method="POST" enctype="multipart/form-data">

                                  @csrf
                                    <div class="row mb-4">
                                          <label class="col-sm-2 col-form-label" for="basic-default-name"> Name </label>
                                          <div class="col-sm-10">
                                                <input type="text" class="form-control border"  placeholder="Order total" name="name" value="{{$customerDetails->name}}" />
                                           </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name"> Email </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control border"  placeholder="Order total" name="email" value="{{$customerDetails->email}}" />
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name"> Mobile </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control border"  placeholder="Order total" name="mobile" value="{{$customerDetails->mobile}}" />
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name"> Date of Birth </label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control border fa-1x"  placeholder="Order total" name="date_of_birth" value="{{$customerDetails->date_of_birth}}" />
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name"> Blood Group </label>
                                        <div class="col-sm-10">
                                            <select name="blood_group" class="form-control fa-1x">

                                                <option value="" >Select Blood group</option>
                                                <option value="A+" {{ $customerDetails->blood_group == 'A+' ? 'selected' : '' }}>A+</option>
                                                <option value="A-" {{ $customerDetails->blood_group == 'A-' ? 'selected' : '' }}>A-</option>
                                                <option value="B+" {{ $customerDetails->blood_group == 'B+' ? 'selected' : '' }}>B+</option>
                                                <option value="B-" {{ $customerDetails->blood_group == 'B-' ? 'selected' : '' }}>B-</option>
                                                <option value="O+" {{ $customerDetails->blood_group == 'O+' ? 'selected' : '' }}>O+</option>
                                                <option value="O-" {{ $customerDetails->blood_group == 'O-' ? 'selected' : '' }}>O-</option>
                                                <option value="AB+" {{ $customerDetails->blood_group == 'AB+' ? 'selected' : '' }}>AB+</option>
                                                <option value="AB-" {{ $customerDetails->blood_group == 'AB-' ? 'selected' : '' }}>AB-</option>
                                            </select>

                                        </div>


                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name"> Address </label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control border"  placeholder="address" name="address" value="{{$customerDetails->address}}" />
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2 col-form-label" for="basic-default-name"> Profile photo </label>
                                        <div class="col-sm-10">
                                            <img src="{{asset($customerDetails->image)}}" alt="photo" height="150" width="150" class="mb-3">
                                            <input type="file" class="form-control" name="image">
                                        </div>

                                    </div>
                                    <div class="row mb-4">
                                        <label class="col-sm-2" for=""></label>
                                        <div class="col-sm-10">
                                            <div class="product-cupon-btn">
                                                <button type="submit" class="axil-btn btn-outline bg-primary text-light">Update</button>
                                            </div>
                                        </div>
                                    </div>






                                @endforeach
                            </form>
                        </div>
                    </div>

                @endif
            </div>
        </div>
    </div>
@endsection


