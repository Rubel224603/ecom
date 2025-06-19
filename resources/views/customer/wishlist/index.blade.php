@extends('website.master');
@section('body')
    <div class="container my-5">
        <div class="row my-5">
            <div class="col-md-3">

                @include('customer.include.menu')
            </div>
            <div class="col-md-9">

                <div class="card shadow-lg">
                   <div class="card-header">
                       <h1>Wishlist</h1>
                       <p class="text-primary text-center">{{session('success')}}</p>
                       <p class="text-primary text-center">{{session('alreadyAdded')}}</p>

                   </div>
                    <div class="card-body">
                        @foreach($wishLists as $wishListItem)
                            <div class="card mb-3">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="{{asset($wishListItem->product->image)}}" class="my-3 circle rounded" alt="..." style="margin-left:5px !important;">
                                    </div>
                                    <div class="col-md-7">
                                        <div class="card-body">
                                            <h5 class="card-title">{{$wishListItem->product->name}}</h5>
                                            <p>{{$wishListItem->product->short_description}}</p>
                                            <p class="" >Tk.{{$wishListItem->product->selling_price}}</p>
                                            <p ><del>TK.{{$wishListItem->product->product_price}}</del></p>
                                            <a href="" class="btn btn-primary fa-1x">Add to cart</a>

                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <a href=""> <img src="{{asset('/')}}website/delete.png" alt="" style="margin-top:70px !important; margin-left:-157px!important;"></a>


                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
