<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function index(){
        //return view('backend.sub-category.index',['subCategories'=>SubCategory::all()]);
        return view('backend.sub-category.index',['subCategories'=>SubCategory::all()]);
    }
    public function create(){

        return view('backend.sub-category.create',['categories'=>Category::all()]);
    }
    public function store(Request $request){

        SubCategory::newSubCategory($request);

        return back()->with('message','Sub Category added successfully');


    }

    public function edit($id){

        return view('backend.sub-category.edit',[
            'subCategory'=>SubCategory::find($id),
            'categories'=>Category::all()
        ]);
    }


    public function update(Request $request,$id){

        SubCategory::updateSubCategory($request,$id);

        return redirect('/sub-category/index')->with('message','success subCategory updated');
    }


    public function  delete($id)
    {

        SubCategory::deleteSubCategory($id);

        return back()->with('message',"SubCategory Delete successfully");

    }

}
