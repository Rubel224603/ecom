<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public function index(){

        return view('backend.brand.index',['brands'=>Brand::all()]);
    }

    public function create(){
        return view('backend.brand.create');

    }

    public function edit($id){
        return view('backend.brand.edit',['brand'=>Brand::find($id)]);

    }
 
    public function store(Request $request){

       Brand::newBrand($request);

       return back()->with('message','Brand Save successfully');
    }

    public function update(Request $request,$id){
        Brand::updateBrand($request,$id);
        return redirect('brand/index')->with('message','Brand added successfully');
    }
    public function delete($id){

        Brand::deleteBrand($id);

        return back()->with('/','Category Deleted Successfully');
    }

}


