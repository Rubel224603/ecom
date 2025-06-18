<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(){
        return view('website.category.index');
    }
    public function category(){
        return view('website.category.product',[
            'categories'=>Category::all(),
            'products'=>Product::all(),
        ]);
    }
    public function create(){
        return view('backend.category.create');
    }
    public function indexCategory(){
        return view('backend.category.index',['categories'=>Category::all()]);
    }
    public function store(Request $request){

       Category::newCategory($request);
       return back()->with('message','category added successfully');

    }

    public function edit($id){
        return view('backend.category.edit',['category'=>Category::find($id)]);
    }

    public function update(Request $request,$id){
            Category::updateCategory($request,$id);
            return  redirect('/category/index')->with('message','Category Update Successfully');
    }

    public function  delete($id){

        Category::deleteCategory($id);

        return back()->with('message','category delete successfully');
    }
}
