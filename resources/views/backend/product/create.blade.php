
@extends('backend.master')


@section('body')

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-xxl">
            <div class="card mb-6">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Add Product Form </h5>
                    </hr>
                </div>
                <div class="card-body">

                    <form action="{{route('product.store')}}" method="POST" enctype="multipart/form-data">

                        @csrf

                        <p class="text-success">{{session('message')}}</p>

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Add Category </label>
                            <div class="col-sm-10">

                                <select id="" name="category_id" class="form-control" onchange="getCategoryBySubCategory(this.value)">
                                    <option value="">-----select Category----</option>
                                    @foreach($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Add Sub-Category </label>
                            <div class="col-sm-10">

                                <select id="subCategory" name="sub_category_id" class="form-control">
                                    <option value="">-----select Sub Category----</option>
                                   @foreach($subcategories as $subCategory)
                                        <option value="{{$subCategory->id}}">{{$subCategory->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Add Brand</label>
                            <div class="col-sm-10">

                                <select id="" name="brand_id" class="form-control">
                                    <option value="">-----select Brand----</option>
                                   @foreach($brands as $brand)
                                        <option value="{{$brand->id}}">{{$brand->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Add Unit</label>
                            <div class="col-sm-10">

                                <select id="" name="unit_id" class="form-control">
                                    <option value="">-----select Unit----</option>
                                  @foreach($units as $unit)
                                        <option value="{{$unit->id}}">{{$unit->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                        </div>


                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Product  Name  </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="Product Name" name="name" />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Product Code</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"  placeholder="Product Code" name="code" />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Product  Price</label>
                            <div class="col-sm-10">
                               <div class="input-group">
                                   <input type="number" class="form-control"  placeholder="Product Price" name="product_price" />
                                   <input type="number" class="form-control"  placeholder="Sellig price" name="selling_price" />
                               </div>
                            </div>
                        </div>


                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Stock Amount  </label>
                            <div class="col-sm-10">

                                    <input type="number" class="form-control"  placeholder="stock number" name="stock" />



                            </div>
                        </div>



                        <div class="row mb-4">
                            <label class="col-sm-2 text-dark" for="basic-default-company"> Publication Status</label>
                            <div class="col-sm-10">
                                <lable>   <input type="radio"   value="1"  name="status" checked/> Published</lable>
                                <lable>   <input type="radio"   value="2"  name="status"/> Unpublished</lable>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Product Image</label>
                            <div class="col-sm-10">
                                <input type="file"  class="form-control phone-mask" name="image"  />
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Other  Image</label>
                            <div class="col-sm-10">
                                <input type="file"  class="form-control phone-mask" name="other_image[]" multiple/>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message"> Short Description</label>
                            <div class="col-sm-10">
                                <textarea id="" class="form-control" placeholder="sort description" name="short_description" ></textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-sm-2 col-form-label" for="basic-default-message">Long Description</label>
                            <div class="col-sm-10">
                                <textarea id="summernote" class="form-control" placeholder="long description" name="long_description" ></textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="" class="col-sm-2 col-form-label">Meta Title</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="meta title" name="meta_title">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="" class="col-sm-2 col-form-label">Meta Description</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control p-5" placeholder="meta description" name="meta_description">
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Save Product   Information</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>





@endsection



