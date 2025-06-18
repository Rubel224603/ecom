

@extends('backend.master')


@section('body')



    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Add Coupon Form </h5>
                    </hr>
                </div>
                <div class="card-body">
                    <form action="{{route('admin.coupon.update',['id'=>$coupon->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <p class="text-success">{{session('message')}}</p>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Coupon Code</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="add coupon code" name="coupon_code" value="{{$coupon->coupon_code}}" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 text-dark" for="basic-default-company"> Publication Status</label>
                            <div class="col-sm-10">
                                <lable>   <input type="radio"   value="1"  name="coupon_status" {{$coupon->coupon_status == 1?'checked':''}}/> Published</lable>
                                <lable>   <input type="radio"   value="0"  name="coupon_status" {{$coupon->coupon_status == 0?'checked':''}}/> Unpublished</lable>
                            </div>
                        </div>

                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Save Coupon Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





@endsection



