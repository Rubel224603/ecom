
@extends('website.master')


@section('body')

    <main class="main-wrapper">
        <!-- Start Breadcrumb Area  -->
        <div class="axil-breadcrumb-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-8">
                        <div class="inner">

                            <ul class="axil-breadcrumb">
                                <li class="axil-breadcrumb-item"><a href="">Home</a></li>
                                <li class="separator"></li>
                                <li class="axil-breadcrumb-item active" aria-current="page">My Account</li>
                            </ul>
                            <h1 class="title">Explore All Products</h1>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4">
                        <div class="inner">
                            <div class="bradcrumb-thumb">
                                <img src="{{asset('/')}}website/assets/images/product/product-45.png" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumb Area  -->
        <!-- Start Shop Area  -->
        <div class="axil-shop-area axil-section-gap bg-color-white">
            <div class="container">



                <div class="row row--15">
                    @foreach($products as $product)
                        <div class="col-xl-3 col-lg-4 col-sm-6">
                            <div class="axil-product product-style-one has-color-pick mt--40">
                                <div class="thumbnail">
                                    <a href="{{route('product-detail',['id'=>$product->id])}}">
                                        <img src="{{asset($product->image)}}" alt="Product Images">
                                    </a>
                                    <div class="label-block label-right">
                                        <div class="product-badget">20% OFF</div>
                                    </div>
                                    <div class="product-hover-action">
                                        <ul class="cart-action">
                                            <li class="wishlist"><a href=""><i class="far fa-heart"></i></a></li>
                                            <li class="select-option"><a href="{{route('direct-card-add',['id'=>$product->id])}}">Add to Cart</a></li>
                                            <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title"><a href="{{route('product-detail',['id'=>$product->id])}}">{{$product->name}}</a></h5>
                                        <div class="product-price-variant">

                                            <span class="price old-price">BDT {{$product->product_price}}</span>
                                            <span class="price current-price">BDT {{$product->selling_price}}</span>
                                        </div>
                                        <div class="color-variant-wrapper">
                                            <ul class="color-variant">
                                                <li class="color-extra-01 active"><span><span class="color"></span></span>
                                                </li>
                                                <li class="color-extra-02"><span><span class="color"></span></span>
                                                </li>
                                                <li class="color-extra-03"><span><span class="color"></span></span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Product  -->
                    @endforeach

                </div>
                <div class="text-center pt--30">
                    <a href="#" class="axil-btn btn-bg-lighter btn-load-more">Load more</a>
                </div>
            </div>
            <!-- End .container -->
        </div>
        <!-- End Shop Area  -->
        <!-- Start Axil Newsletter Area  -->

        <!-- End Axil Newsletter Area  -->
    </main>

@endsection


<!-- End Header -->









{{--@extends('website.product.producMaster')--}}



{{--@section('body')--}}

{{--    <div class="service-area">--}}
{{--        <div class="container">--}}
{{--            <div class="row row-cols-xl-4 row-cols-sm-2 row-cols-1 row--20">--}}
{{--                <div class="col">--}}
{{--                    <div class="service-box service-style-2">--}}
{{--                        <div class="icon">--}}
{{--                            <img src="{{asset('/')}}website/assets/images/icons/service1.png" alt="Service">--}}
{{--                        </div>--}}
{{--                        <div class="content">--}}
{{--                            <h6 class="title">Fast &amp; Secure Delivery</h6>--}}
{{--                            <p>Tell about your service.</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col">--}}
{{--                    <div class="service-box service-style-2">--}}
{{--                        <div class="icon">--}}
{{--                            <img src="{{asset('/')}}website/assets/images/icons/service2.png" alt="Service">--}}
{{--                        </div>--}}
{{--                        <div class="content">--}}
{{--                            <h6 class="title">Money Back Guarantee</h6>--}}
{{--                            <p>Within 10 days.</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col">--}}
{{--                    <div class="service-box service-style-2">--}}
{{--                        <div class="icon">--}}
{{--                            <img src="{{asset('/')}}website/assets/images/icons/service3.png" alt="Service">--}}
{{--                        </div>--}}
{{--                        <div class="content">--}}
{{--                            <h6 class="title">24 Hour Return Policy</h6>--}}
{{--                            <p>No question ask.</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col">--}}
{{--                    <div class="service-box service-style-2">--}}
{{--                        <div class="icon">--}}
{{--                            <img src="{{asset('/')}}website/assets/images/icons/service4.png" alt="Service">--}}
{{--                        </div>--}}
{{--                        <div class="content">--}}
{{--                            <h6 class="title">Pro Quality Support</h6>--}}
{{--                            <p>24/7 Live support.</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--@endsection--}}











