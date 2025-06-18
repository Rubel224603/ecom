@extends('website.master')

@section('body')

    <main class="main-wrapper">

        <!-- Start Checkout Area  -->
        <div class="axil-checkout-area axil-section-gap">
            <div class="container">

                <div class="row">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="text-center text-primary">Customer</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col">
                        <p class="text-center">
                            {{session("middlewareMessage")}}
                        </p>
                    </div>
                </div>
                <div class="row mt-4">

                    <div class="col-lg-6 ">

                        <div class="card p-5">


                            <form class="singin-form" action="{{route('customer.login')}}" method="POST">
                                @csrf
                                <h3 class="text-center  rounded-3 p-3">Login Form</h3>
                                <p class="text-danger">{{session('message')}}</p>

                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" name="email" placeholder="enter your email" >
                                </div>
                                <div class="form-group">
                                    <label >Password</label>
                                    <input type="password" class="form-control" name="password" placeholder="enter your password">
                                </div>


                                <div class="d-flex gap-5 justify-content-between">
                                    <input type="submit" class="btn btn-primary btn-lg  form-control fs-1"  value="Login">
                                    <a href="#" class="btn btn-primary btn-lg  form-control fs-1">Forget Password</a>

                                </div>
                            </form>
                        </div>




                    </div>
                    <div class="col-lg-6">

                        <div class="card p-5">
                            <h3 class="text-center">Registraion Form</h3>

                            <form action="{{route('customer.register')}}" method="POST">

                                @csrf

                                <div class="form-group">
                                    <label>Full  Name <span class="text-danger">*</span> </label>
                                    <input type="text" class="form-control" name="name" placeholder="enter your name">
                                </div>

                                <div class="form-group">
                                    <label>Email <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email" placeholder="enter your email">
                                </div>
                                <div class="form-group">
                                    <label>Mobile <span class="text-danger">*</span></label>
                                    <input type="number" class="form-control" name="mobile" placeholder="enter your number">
                                </div>
                                <div class="form-group">
                                    <label>Password <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password" placeholder="enter your password">
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Register" class="fs-1" >
                                </div>
                            </form>
                        </div>




                    </div>




                </div>
            </div>
        </div>
        <!-- End Checkout Area  -->

    </main>


@endsection

