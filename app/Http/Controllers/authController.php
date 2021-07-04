<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use App\User;
use Session;

class authController extends Controller
{
    //
    function loginView(){
        return view('login');
    }

    function dashboardView(){
        return view('dashboard');
    }
    
    function loginAttempt(Request $request){

        if (Auth::attempt(['username' => $request->username, 'password' => $request->password, 'status' => '1'])) {
            
            return redirect()->intended('/');
        }else{
            return redirect('/login')->with('error', 'Authentication Error');
        }
    }

    function logout(){
        Auth::logout();
        if(Auth::check()){
        }else{
            return redirect('/login')->with('error', 'Authentication Error');
        }
    }

    function users(){
        $databelt = User::all();
        return view('users.userList', ['databelt' => $databelt]);
    }

    function addUser(){
        $role = DB::table('tbl_role')->get();
        return view('users.newUser', ['role' => $role]);
    }

    function insertUser(Request $request){
        $validatedData = $request->validate([
            'username' => 'required|unique:tbl_usr|max:25|min:6',
            'password' => 'required|confirmed|min:6',
        ]);

        $data = $request->all();
        $user = new User;
        $user->fullname = $data['fullname'];
        $user->email = $data['email'];
        $user->username = $data['username'];
        $user->password = bcrypt($data['password']);
        $user->age = $data['age'];
        $user->cnic = $data['cnic'];
        $user->phone = $data['phone'];
        $user->role_id = $data['role'];
        $user->status = '1';
        $user->remember_token = $data['_token'];

        $user->save();

        return redirect()->back()->with('success', 'New user registered.');
    }

    function deleteUser($id){
        $id = base64_decode($id);
        User::destroy($id);
        return redirect('/users')->with('success', 'User Deleted.');
    }

    function editUser($id){
        $id = base64_decode($id);
        $databelt = User::find($id);
        $role = DB::table('tbl_role')->get();
        return view('users.editUser', ['databelt' => $databelt, 'role' => $role]);
    }

    function updateUser(Request $request){
        $data = $request->all();
        $user = User::find($data['user_id']);
        $user->fullname = $data['fullname'];
        $user->email = $data['email'];
        $user->age = $data['age'];
        $user->cnic = $data['cnic'];
        $user->phone = $data['phone'];
        $user->role_id = $data['role'];
        $user->remember_token = $data['_token'];

        $user->save();

        return redirect('/users')->with('success', 'User Update.');
    }

    function inactiveUser($id){
        $id = base64_decode($id);
        $user = User::find($id);
        $user->status = '2';
        $user->save();

        return redirect('/users')->with('success', 'User In-Activated.');
    }

    function activeUser($id){

        $id = base64_decode($id);
        $user = User::find($id);
        $user->status = '1';
        $user->save();

        return redirect('/users')->with('success', 'User Activated.');
    }
}
