<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('backend.user.index',['users'=>User::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('backend.user.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //return $request;
        User::newUser($request);
        return back()->with('message', 'User info create successfully.');
    }

    /**
     * Display the specified resource.
     */
        public function show(string $id)
    {
        //
    }


        /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view('backend.user.edit', ['user' => User::find($id)]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        User::updateUser($request, $id);
        return redirect('/user')->with('message', 'User info update successfully.');
    }


    /**
     * Remove the specified resource from storage.
     */
        public function destroy(string $id)
        {
            if ($id == 1 ) {
                return back()->with('message', 'Sorry you can not delete this user.');
            }
            User::deleteUser($id);
            return redirect('/user')->with('message', 'User info delete successfully.');
        }
}
