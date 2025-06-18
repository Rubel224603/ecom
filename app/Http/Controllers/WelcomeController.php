<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index(){
//        $categories = Category::all();
//        return $categories;
//        foreach($categories as $category){
//            $category->products;
//        }
        //return Product::latest()->get();
        //return Product::orderBy('id','desc')->get();
        //return Product::latest()->skip(2)->first();

        return view('website.home.index',[
            'categories'=>Category::all(),
            'new_products'=>Product::latest()->get(),
            'first_new_products'=>Product::latest()->take(2)->get(),
            'second_new_product'=>Product::latest()->skip(2)->first(),
            'third_new_products'=>Product::latest()->skip(3)->take(2)->get(),
            'home_categories_one'=>Category::where('home_status',1)->orderBy('id','asc')->first(),
            'home_categories_two'=>Category::where('home_status',1)->orderBy('id','asc')->skip(1)->first(),
            'brands'=>Brand::all()

            ]);
    }
    public function category($id){
        return view('website.category.index',['products' => Product::where('category_id',$id)->get()]);
    }

    public $product,$categoryProduct;
    public function product($id){
        $this->product = Product::find($id);
        $this->categoryProduct = Product::where('category_id',$this->product->category_id)->latest()->get();
        //return $this->product;
        return view('website.product.index',[
            'products'=> $this->product,
            'categoryProducts'=> $this->categoryProduct
        ]);
    }

    public function contact(){
        return view('website.menu.contact');
    }
    public function returnPolicy(){
        return view('website.menu.returnpolicy');

    }
    public function termsCondition(){
        return view('website.menu.termsandcondition');

    }


}
