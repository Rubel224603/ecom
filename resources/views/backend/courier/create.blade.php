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
                    <form action="{{route('courier.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <p class="text-success">{{session('message')}}</p>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Courier Name</label>
                            <div class="col-sm-10">
                                @error('name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                                <input type="text" class="form-control"  placeholder="Courier Name" name="name"  required/>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Email</label>
                             <div class="col-sm-10">
                                 @error('email')
                                 <span class="text-danger">{{ $message }}</span>
                                 @enderror
                                 <input type="email" class="form-control"  placeholder="email" name="email" required />
                             </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Mobile</label>
                             <div class="col-sm-10">
                                 @error('mobile')
                                 <span class="text-danger">{{ $message }}</span>
                                 @enderror
                                 <input type="number" class="form-control"  placeholder="enter mobile number" name="mobile" />
                             </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Address</label>

                             <div class="col-sm-10">
                                 @error('address')
                                 <span class="text-danger">{{ $message }}</span>
                                 @enderror
                                 <textarea name="address" class="form-control" placeholder="enter address" required></textarea>
                             </div>
                        </div>`


                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone" >Logo</label>


                            <div class="col-sm-10">
                                @error('logo')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                                <input type="file"  class="form-control phone-mask" name="logo" required />
                            </div>
                        </div>

                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Save Courier Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>


@endsection



