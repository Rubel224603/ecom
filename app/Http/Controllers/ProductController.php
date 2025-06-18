<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\OtherImage;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function productDetails(){
        return view('website.product.details');
    }


    public function checkOut(){

        return view('website.product.checkout');
    }



    public function create(){
        return view('backend.product.create',[
            'categories'=>Category::all(),
            'subcategories'=>SubCategory::all(),
            'brands'=>Brand::all(),
            'units'=>Unit::all()

        ]);
    }


    public function getCategoryBySubCategory(){
        $categoryId = $_GET['id'];
        $subCategories = SubCategory::where('category_id',$categoryId)->get();

        return response()->json($subCategories);
    }

    public function store(Request $request){
        //return $request;
        $id = Product::newProduct($request);
        OtherImage::newOtherImage($id,$request->file('other_image'));
        return back()->with('message','Product Save successfully');
    }

    public function index(){
        return view('backend.product.index',['products'=>Product::all()]);
    }

    public function detail($id){
        return view('backend.product.detail',['product'=>Product::find($id)]);
    }

    public function edit($id){

        return view('backend.product.edit',[
            'product'=>Product::find($id),
            "categories"=>Category::all(),
            'subcategories'=>SubCategory::all(),
            'brands'=>Brand::all(),
            'units'=>Unit::all(),
        ]);
    }


    public function update(Request $request,$id){

        Product::updateProduct($request,$id);

        if($request->file('other_image')){

            OtherImage::updateOtherImage($id, $request->file('other_image'));
        }
        return redirect('/product/index')->with('message','Product info update successfully');
    }

    public function delete($id){

        Product::deleteProduct($id);

        OtherImage::deleteOtherImage($id);
        return redirect('/product/index')->with('message','Product Deleted Successfully');
    }

}
