@extends('website.master');
@section('body')
    <div class="container my-5">
        <div class="row my-5">
            <div class="col-md-3">

                @include('customer.include.menu')
            </div>
            <div class="col-md-9">

                <div class="card card-body">
                    <h1>Wishlist</h1>
                </div>
            </div>
        </div>
    </div>
@endsection
