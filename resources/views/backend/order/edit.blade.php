
@extends('backend.master')

@section('body')

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">

                </div>
                <div class="card-body">
                    <form action="{{route('admin.order.update',['id'=>$order->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <p class="text-success">{{session('message')}}</p>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Order total</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="Order total" name="order_total" value="{{$order->order_total}}" readonly/>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Customer Info </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="Order total" name="name" value="{{$order->customer->name}}" readonly/>
                            </div>
                        </div>


                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Delivery Address</label>
                           <div class="col-sm-10">
                               <textarea name="delivery_address"  class="form-control" placeholder="delivery_address">{{$order->delivery_address}}</textarea>
                           </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message"> Order Status</label>
                            <div class="col-sm-10">
                                <select name="order_status" class="form-control">
                                    <option value="">--Order  Status---</option>
                                    <option value="Pending" {{$order->order_status=='Pending' ?'selected':''}}>Pending</option>
                                    <option value="Processing" {{$order->order_status =='Processing'? 'selected':''}}>Processing</option>
                                    <option value="Complete" {{$order->order_status=='Complete'? 'selected':''}}>Complete</option>
                                    <option value="Cancel" {{$order->order_status=='Cancel'?'selected':''}}>Cancel</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message"> Courier Info</label>
                            <div class="col-sm-10">
                                <select name="courier_id"  class="form-control">
                                    <option value="">--Courier Status---</option>
                                    <option value="1" {{$order->courier_id==1 ?'selected':''}}>SundorBan</option>
                                    <option value="2" {{$order->courier_id==2 ?'selected':''}}>Korotoa</option>
                                    <option value="3" {{$order->courier_id==3 ?'selected':''}}>SA Paribahon</option>
                                    <option value="4" {{$order->courier_id==4 ?'selected':''}}>Amar Ponno</option>
                                </select>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Update Category Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





@endsection



