<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;

class AdminCustomerController extends Controller
{
    public function index(){
        return view('backend.customer.index',['customers'=>Customer::all()]);
    }
    public function store(){
        return view('backend.customer.create');
    }
}
