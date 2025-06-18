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


                                <p class="text-center">{{session('message')}}</p>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Checkout Area  -->

    </main>


@endsection

