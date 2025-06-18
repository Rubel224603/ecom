
@extends('website.master')

@section('body')


    <!-- Start Slider Area -->
    <div class="axil-main-slider-area main-slider-style-2">
        <div class="container">
            <div class="slider-offset-left">
                <div class="row row--20">
                    <div class="col-lg-9">
                        <div class="slider-box-wrap">
                            <div class="slider-activation-one axil-slick-dots">
                                <div class="single-slide slick-slide">
                                    <div class="main-slider-content">
                                        <span class="subtitle"><i class="fal fa-watch"></i> Smartwatch </span>
                                        <h1 class="title">Bloosom Smat Watch</h1>
                                        <div class="shop-btn">
                                            <a href="shop.html" class="axil-btn">Shop Now <i class="fal fa-long-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="main-slider-thumb">
                                        <img src="{{asset('/')}}website/assets/images/product/product-40.png" alt="Product">
                                    </div>
                                </div>
                                <div class="single-slide slick-slide">
                                    <div class="main-slider-content">
                                        <span class="subtitle"><i class="fal fa-watch"></i> Smartwatch</span>
                                        <h1 class="title">Delux Brand Watch</h1>
                                        <div class="shop-btn">
                                            <a href="shop.html" class="axil-btn">Shop Now <i class="fal fa-long-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="main-slider-thumb">
                                        <img src="{{asset('/')}}website/assets/images/product/product-46.png" alt="Product">
                                    </div>
                                </div>
                                <div class="single-slide slick-slide">
                                    <div class="main-slider-content">
                                        <span class="subtitle"><i class="fal fa-watch"></i> Smartwatch</span>
                                        <h1 class="title">Bloosom Smat Watch</h1>
                                        <div class="shop-btn">
                                            <a href="shop.html" class="axil-btn">Shop Now <i class="fal fa-long-arrow-right"></i></a>
                                        </div>
                                    </div>
                                    <div class="main-slider-thumb">
                                        <img src="{{asset('/')}}website/assets/images/product/product-40.png" alt="Product">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="slider-product-box">
                            <div class="product-thumb">
                                <a href="single-product.html">
                                    <img src="{{asset('/')}}website/assets/images/product/product-41.png" alt="Product">
                                </a>
                            </div>
                            <h6 class="title"><a href="single-product.html">Yantiti Leather Bags</a></h6>
                            <span class="price">$29.99</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Slider Area -->
    <main class="main-wrapper">

        <div class="service-area">
            <div class="container">
                <div class="row row-cols-xl-5 row-cols-lg-5 row-cols-md-3 row-cols-sm-2 row-cols-1 row--20">
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="{{asset('/')}}website/assets/images/icons/service1.png" alt="Service">
                            </div>
                            <h6 class="title">Fast &amp; Secure Delivery</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="{{asset('/')}}website/assets/images/icons/service2.png" alt="Service">
                            </div>
                            <h6 class="title">100% Guarantee On Product</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="{{asset('/')}}website/assets/images/icons/service3.png" alt="Service">
                            </div>
                            <h6 class="title">24 Hour Return Policy</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="{{asset('/')}}website/assets/images/icons/service4.png" alt="Service">
                            </div>
                            <h6 class="title">24 Hour Return Policy</h6>
                        </div>
                    </div>
                    <div class="col">
                        <div class="service-box">
                            <div class="icon">
                                <img src="{{asset('/')}}website/assets/images/icons/service5.png" alt="Service">
                            </div>
                            <h6 class="title">Next Level Pro Quality</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Start New Arrivals Product Area  -->
        <div class="axil-new-arrivals-product-area fullwidth-container bg-color-white axil-section-gap pb--0">
            <div class="container ml--xxl-0">
                <div class="product-area pb--50">
                    <div class="section-title-wrapper">
                        <span class="title-highlighter highlighter-primary"><i class="far fa-shopping-basket"></i> This Week’s</span>
                        <h2 class="title">New Arrivals</h2>
                    </div>
                    <div class="new-arrivals-product-activation slick-layout-wrapper--15 axil-slick-arrow  arrow-top-slide">
                        @foreach($new_products as $product)
                        <div class="slick-single-layout">
                            <div class="axil-product product-style-four">
                                <div class="thumbnail">
                                    <a href="{{route('product-detail',['id'=>$product->id])}}">
                                        <img data-sal="fade" data-sal-delay="100" class="w-100" data-sal-duration="1500" src="{{$product->image}}" alt="Product Images">
                                        <img class="hover-img" src="{{$product->image}}" alt="Product Images" height="100"/>
                                    </a>
                                    <div class="label-block label-right">
                                        <div class="product-badget">20% OFF</div>
                                    </div>
                                    <div class="product-hover-action">
                                        <ul class="cart-action">
                                            <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                            <li class="select-option"><a href="{{route('direct-card-add',['id'=>$product->id])}}">Add to Cart</a></li>
                                            <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title"><a href="{{route('product-detail',['id'=>$product->id])}}">{{$product->name}}</a></h5>
                                        <div class="product-price-variant">
                                            <span class="price old-price">${{$product->product_price}}</span>

                                            <span class="price current-price">${{$product->selling_price}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End .slick-single-layout -->
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <!-- End New Arrivals Product Area  -->


<!--new products 3 cloumn-->
    <div class="container">
        <h1>New Products</h1>
        <div class="row border">
            <div class="col-md-3 pt-5">
                @foreach($first_new_products as  $product)

                <div class="card mb-5">

                    <img src="{{asset($product->image)}}" alt="">

                    <div class="card-body text-center" >
                        <h4>{{$product->name}}</h4>
                        <a href="{{route('product-detail',['id'=>$product->id])}}" class="card-title">{{$product->short_description}}</a>
                        <p>BDT {{$product->selling_price}} <del class="text-danger">{{$product->product_price}}</del></p>
                        <a href="{{route('direct-card-add',['id'=>$product->id])}}" class="btn btn-danger btn-lg btn-bl">Add to Cart</a>
                    </div>


                </div>

                @endforeach
            </div>
            <div class="col-md-6 pt-5">

                <div class="card">
                    <img src="{{asset($second_new_product->image)}}">
                    <div class="card-body text-center" >
                        <h4>{{$second_new_product->name}}</h4>
                        <a href="{{route('product-detail',['id'=>$second_new_product->id])}}" class="card-title">{{$second_new_product->short_description}}</a>
                        <p>BDT {{$second_new_product->selling_price}} <del class="text-danger">BDT {{$second_new_product->product_price}}</del></p>
                        <a href="{{route('direct-card-add',['id'=>$second_new_product->id])}}" class="btn btn-danger btn-lg btn-bl">Add to Cart</a>
                    </div>
                </div>



            </div>
            <div class="col-md-3 pt-5" >

                @foreach($third_new_products as $product)

                <div class="card mb-5">
                    <img src="{{asset($product->image)}}" alt="">
                    <div class="card-body text-center" >
                        <h4>{{$product->name}}</h4>
                        <a href="{{route('product-detail',['id'=>$product->id])}}"  class="card-title">{{$product->short_description}}</a>
                        <p>BDT {{$product->selling_price}} <del class="text-danger">BDT {{$product->product_price}}</del></p>
                        <a href="{{route('direct-card-add',['id'=>$product->id])}}" class="btn btn-danger btn-lg btn-bl">Add to Cart</a>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </div>
     <!--start categories &  Products-->

        <div class="container mt-5">

            <h2  class="title">Category  Products</h2>


            <ul class="nav nav-tabs" id="categoryTabs" role="tablist">

                @foreach($categories  as $key=> $category)


                        <li class="nav-item" role="presentation">
                            <button class="nav-link {{$key== 0? 'active':''}}" id="electronics-tab" data-bs-toggle="tab" data-bs-target="#electronics{{$key}}" type="button" role="tab" aria-controls="electronics" aria-selected="true">
                                {{$category->name}}
                            </button>
                        </li>


                @endforeach
            </ul>


            <div class="tab-content mt-3" id="categoryTabsContent">

                @foreach($categories as $key1=>$category)

                <div class="tab-pane fade show {{$key1== 0? 'active':''}}" id="electronics{{$key1}}" role="tabpanel" aria-labelledby="electronics-tab">
                    <div class="row">
                        @foreach($category->products as $product)
                            <div class="col-md-4">
                                <div class="card">
                                    <img src="{{$product->image}}" class="card-img-top img-fluid" alt="Product 1">
                                    <div class="card-body ">
                                       <div class="text-center">

                                           <a href="{{route('product-detail',['id'=>$product->id])}}" class="text-capitalize">{{$product->name}}</a>
                                           <p class="">{{$product->short_description}}.</p>
                                           <a href="{{route('product-detail',['id'=>$product->id])}}" class="btn btn-success btn-lg mb-5 ">Product Details</a>
                                           <p> Price:${{$product->product_price}}</p>
                                           <p> Price: ${{$product->selling_price}}</p>

                                       </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach


                    </div>
                </div>

                @endforeach
            </div>
        </div>

        <!--End categories &  Products-->






        <!-- Start Best Sellers Product Area  -->
        <div class="axil-best-seller-product-area bg-color-white axil-section-gap pb--50 pb_sm--30">
            <div class="container">
                <div class="section-title-wrapper">
                    <span class="title-highlighter highlighter-secondary"><i class="far fa-shopping-basket"></i>This Month</span>
                    <h2 class="title">{{$home_categories_one->name}}</h2>
                </div>
                <div class="new-arrivals-product-activation-2 product-transparent-layout slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide product-slide-mobile">
                    @foreach($home_categories_one->products as $home_category_one_product)

                    <div class="slick-single-layout">
                        <div class="axil-product product-style-seven">
                            <div class="product-content">
                                <div class="cart-btn">
                                    <a href="{{route('direct-card-add',['id'=>$home_category_one_product->id])}}">
                                        <i class="flaticon-shopping-cart"></i>
                                    </a>
                                </div>

                                <div class="inner">
                                    <h5 class="title"><a href="{{route('product-detail',['id'=>$home_category_one_product->id])}}">{{$home_category_one_product->name}}</a></h5>
                                    <div class="product-price-variant">
                                        <span class="price current-price">{{$home_category_one_product->selling_price}}</span>
                                        <span class="price old-price">{{$home_category_one_product->product_price}}</span>
                                    </div>
                                    <div class="product-rating">
                                        <span class="icon">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </span>
                                        <span class="rating-number">(64)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="thumbnail">
                                <a href="{{route('product-detail',['id'=>$home_category_one_product->id])}}">
                                    <img data-sal="zoom-out" data-sal-delay="100" data-sal-duration="800" loading="lazy" src="{{asset($home_category_one_product->image)}}" alt="Product Images">
                                </a>
                            </div>
                        </div>
                    </div>

                    @endforeach

                </div>
            </div>
        </div>
        <!-- End  Best Sellers Product Area  -->

        <!-- Poster Countdown Area  -->
        <div class="axil-poster-countdown">
            <div class="container">
                <div class="poster-countdown-wrap bg-lighter">
                    <div class="row">
                        <div class="col-xl-5 col-lg-6">
                            <div class="poster-countdown-content">
                                <div class="section-title-wrapper">
                                    <span class="title-highlighter highlighter-secondary"> <i class="far fa-shopping-basket"></i> Don’t Miss!!</span>
                                    <h2 class="title">Let's Shopping Today</h2>
                                </div>
                                <div class="poster-countdown countdown mb--40"></div>
                                <a href="#" class="axil-btn btn-bg-primary">Check it Out!</a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-6">
                            <div class="poster-countdown-thumbnail">
                                <img src="{{asset('/')}}website/assets/images/product/poster/poster-05.png" alt="Poster Product">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Poster Countdown Area  -->

        <!-- Start Expolre Product Area  -->
        <div class="axil-product-area bg-color-white axil-section-gap">
            <div class="container">
                <div class="section-title-wrapper">
                    <span class="title-highlighter highlighter-primary"> <i class="far fa-shopping-basket"></i> Our Products</span>
                    <h2 class="title">{{$home_categories_two->name}}</h2>
                </div>
                <div class="explore-product-activation slick-layout-wrapper slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
                    <div class="slick-single-layout">
                        <div class="row row--15">
                            @foreach($home_categories_two->products as $home_categories_two_product)
                            <div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30">
                                <div class="axil-product product-style-one">
                                    <div class="thumbnail">
                                        <a href="{{route('product-detail',['id'=>$home_categories_two_product->id])}}">
                                            <img data-sal="fade" data-sal-delay="100" data-sal-duration="1500" src="{{asset($home_categories_two_product->image)}}" alt="Product Images">
                                        </a>
                                        <div class="label-block label-right">
                                            <div class="product-badget">20% Off</div>
                                        </div>
                                        <div class="product-hover-action">
                                            <ul class="cart-action">
                                                <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                                <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                                <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <div class="inner">
                                            <h5 class="title"><a href="{{route('product-detail',['id'=>$home_categories_two_product->id])}}">{{$home_categories_two_product->name}}</a></h5>
                                            <div class="product-price-variant">
                                                <span class="price current-price">{{$home_categories_two_product->selling_price}}</span>
                                                <span class="price old-price">{{$home_categories_two_product->product_price}}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>n
                            <!-- End Single Product  -->


                            @endforeach
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-12 text-center mt--20 mt_sm--0">
                        <a href="shop.html" class="axil-btn btn-bg-lighter btn-load-more">View All Products</a>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Expolre Product Area  -->

        <!-- Start Testimonila Area  -->
        <div class="axil-testimoial-area axil-section-gap bg-vista-white">
            <div class="container">
                <div class="section-title-wrapper">
                    <span class="title-highlighter highlighter-secondary"> <i class="fal fa-quote-left"></i>Testimonials</span>
                    <h2 class="title">Users Feedback</h2>
                </div>
                <!-- End .section-title -->
                <div class="testimonial-slick-activation testimonial-style-one-wrapper slick-layout-wrapper--20 axil-slick-arrow arrow-top-slide">
                    <div class="slick-single-layout testimonial-style-one">
                        <div class="review-speech">
                            <p>“ It’s amazing how much easier it has been to
                                meet new people and create instantly non
                                connections. I have the exact same personal
                                the only thing that has changed is my mind
                                set and a few behaviors. “</p>
                        </div>
                        <div class="media">
                            <div class="thumbnail">
                                <img src="{{asset('/')}}website/assets/images/testimonial/image-1.png" alt="testimonial image">
                            </div>
                            <div class="media-body">
                                <span class="designation">Head Of Idea</span>
                                <h6 class="title">James C. Anderson</h6>
                            </div>
                        </div>
                        <!-- End .thumbnail -->
                    </div>
                    <!-- End .slick-single-layout -->
                    <div class="slick-single-layout testimonial-style-one">
                        <div class="review-speech">
                            <p>“ It’s amazing how much easier it has been to
                                meet new people and create instantly non
                                connections. I have the exact same personal
                                the only thing that has changed is my mind
                                set and a few behaviors. “</p>
                        </div>
                        <div class="media">
                            <div class="thumbnail">
                                <img src="{{asset('/')}}website/assets/images/testimonial/image-2.png" alt="testimonial image">
                            </div>
                            <div class="media-body">
                                <span class="designation">Head Of Idea</span>
                                <h6 class="title">James C. Anderson</h6>
                            </div>
                        </div>
                        <!-- End .thumbnail -->
                    </div>
                    <!-- End .slick-single-layout -->
                    <div class="slick-single-layout testimonial-style-one">
                        <div class="review-speech">
                            <p>“ It’s amazing how much easier it has been to
                                meet new people and create instantly non
                                connections. I have the exact same personal
                                the only thing that has changed is my mind
                                set and a few behaviors. “</p>
                        </div>
                        <div class="media">
                            <div class="thumbnail">
                                <img src="{{asset('/')}}website/assets/images/testimonial/image-3.png" alt="testimonial image">
                            </div>
                            <div class="media-body">
                                <span class="designation">Head Of Idea</span>
                                <h6 class="title">James C. Anderson</h6>
                            </div>
                        </div>
                        <!-- End .thumbnail -->
                    </div>
                    <!-- End .slick-single-layout -->
                    <div class="slick-single-layout testimonial-style-one">
                        <div class="review-speech">
                            <p>“ It’s amazing how much easier it has been to
                                meet new people and create instantly non
                                connections. I have the exact same personal
                                the only thing that has changed is my mind
                                set and a few behaviors. “</p>
                        </div>
                        <div class="media">
                            <div class="thumbnail">
                                <img src="{{asset('/')}}website/assets/images/testimonial/image-2.png" alt="testimonial image">
                            </div>
                            <div class="media-body">
                                <span class="designation">Head Of Idea</span>
                                <h6 class="title">James C. Anderson</h6>
                            </div>
                        </div>
                        <!-- End .thumbnail -->
                    </div>
                    <!-- End .slick-single-layout -->

                </div>
            </div>
        </div>
        <!-- End Testimonila Area  -->






        <div class="container">
            <h1>New Products</h1>
            <div class="row border">
                <!-- First Column: Products List -->
                <div class="col-md-3 pt-5">
                    @foreach($first_new_products as $product)
                        <div class="card mb-5">
                            <img src="{{asset($product->image)}}" alt="" class="card-img-top">
                            <div class="card-body text-center">
                                <h4>{{ $product->name }}</h4>
                                <a href="{{ route('product-detail', ['id' => $product->id]) }}" class="card-title">{{ $product->short_description }}</a>
                                <p>BDT {{ $product->selling_price }} <del class="text-danger">{{ $product->product_price }}</del></p>
                                <a href="{{ route('direct-card-add', ['id' => $product->id]) }}" class="btn btn-danger btn-lg btn-bl">Add to Cart</a>
                            </div>
                        </div>
                    @endforeach
                </div>

                <!-- Second Column: Featured Product -->
                <div class="col-md-6 pt-5">
                    <div class="card">
                        <img src="{{asset($second_new_product->image)}}" class="card-img-top">
                        <div class="card-body text-center">
                            <h4>{{ $second_new_product->name }}</h4>
                            <a href="{{ route('product-detail', ['id' => $second_new_product->id]) }}" class="card-title">{{ $second_new_product->short_description }}</a>
                            <p>BDT {{ $second_new_product->selling_price }} <del class="text-danger">BDT {{ $second_new_product->product_price }}</del></p>
                            <a href="{{ route('direct-card-add', ['id' => $second_new_product->id]) }}" class="btn btn-danger btn-lg btn-bl">Add to Cart</a>
                        </div>
                    </div>
                </div>

                <!-- Third Column: Products List -->
                <div class="col-md-3 pt-5">
                    @foreach($third_new_products as $product)
                        <div class="card mb-5">
                            <img src="{{asset($product->image)}}" alt="" class="card-img-top">
                            <div class="card-body text-center">
                                <h4>{{ $product->name }}</h4>
                                <a href="{{ route('product-detail', ['id' => $product->id]) }}" class="card-title">{{ $product->short_description }}</a>
                                <p>BDT {{ $product->selling_price }} <del class="text-danger">BDT {{ $product->product_price }}</del></p>
                                <a href="{{ route('direct-card-add', ['id' => $product->id]) }}" class="btn btn-danger btn-lg btn-bl">Add to Cart</a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

        <!-- Start Categories & Products Section -->
        <div class="container mt-5">
            <h2 class="title">Brand Products </h2>

            <!-- Categories Tab Navigation -->
            <ul class="nav nav-tabs" id="categoryTabs" role="tablist">
                @foreach($brands as $brandKey => $brand)
                    <li class="nav-item" role="presentation">
                        <button class="nav-link {{ $brandKey == 0 ? 'active' : '' }}" id="category-tab-{{ $brandKey }}" data-bs-toggle="tab" data-bs-target="#category-{{ $brandKey }}" type="button" role="tab" aria-controls="category-{{ $brandKey }}" aria-selected="{{ $brandKey == 0 ? 'true' : 'false' }}">
                            {{ $brand->name }}
                        </button>
                    </li>
                @endforeach
            </ul>

            <!-- Tab Content for Categories -->
{{--            <div class="tab-content mt-3" id="categoryTabsContent">--}}
{{--                @foreach($brands as $brandKey1 => $brand)--}}

{{--                    <div class="tab-pane fade show {{ $brandKey1 == 0 ? 'active' : '' }}" id="category-{{ $brandKey1 }}" role="tabpanel" aria-labelledby="category-tab-{{ $brandKey1 }}">--}}
{{--                        <div class="row">--}}
{{--                            @foreach($brands->products as $brandProduct)--}}
{{--                                <div class="col-md-4">--}}
{{--                                    <div class="card">--}}
{{--                                        <img src="{{ $brandProduct->image }}" class="card-img-top img-fluid" alt="Product Image">--}}
{{--                                        <div class="card-body">--}}
{{--                                            <div class="text-center">--}}
{{--                                                <a href="{{ route('product-detail', ['id' => $brandProduct->id]) }}" class="text-capitalize">{{ $brand->name }}</a>--}}
{{--                                                <p>{{ $brandProduct->short_description }}</p>--}}
{{--                                                <a href="{{ route('product-detail', ['id' => $brandProduct->id]) }}" class="btn btn-success btn-lg mb-5">Product Details</a>--}}
{{--                                                <p>Price: BDT {{ $brandProduct->product_price }}</p>--}}
{{--                                                <p>Discounted Price: BDT {{ $brandProduct->selling_price }}</p>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                              </div>--}}
{{--                            @endforeach--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                @endforeach--}}
{{--            </div>--}}
{{--        </div>--}}
        <!-- End Categories & Products Section -->


















        <!-- Start Axil Newsletter Area  -->
        <div class="axil-newsletter-area axil-section-gap pt--0">
            <div class="container">
                <div class="etrade-newsletter-wrapper bg_image bg_image--12">
                    <div class="newsletter-content">
                        <span class="title-highlighter highlighter-primary2"><i class="fas fa-envelope-open"></i>Newsletter</span>
                        <h2 class="title mb--40 mb_sm--30">Get weekly update</h2>
                        <div class="input-group newsletter-form">
                            <div class="position-relative newsletter-inner mb--15">
                                <input placeholder="example@gmail.com" type="text">
                            </div>
                            <button type="submit" class="axil-btn mb--15">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End .container -->
        </div>
        <!-- End Axil Newsletter Area  -->

    </main>
@endsection
