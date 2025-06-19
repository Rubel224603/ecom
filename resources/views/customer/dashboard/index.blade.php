@extends('website.master')
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
                <div class="card card-body">


                        <h2 class="mb-3"> Welcome, {{$customer->name}} </h2>


                        <!-- Profile Photo -->
                        <img src="{{asset($customer->image)}}" alt="Profile Photo" class="profile-img mb-4 center" width="100" >


                        <div class="row text-center mb-5">
                            <div class="col-md-4">
                                <div class="card bg-light shadow-sm">
                                    <div class="card-body">
                                        <h5>Total Orders</h5>
                                        <h3>{{$totalOrder}}</h3>
                                    </div>
                                </div>
                            </div>

                        </div>




                </div>

            @endif

        </div>

    </div>
</div>
@endsection
