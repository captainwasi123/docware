<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\settings\companies;

class settingController extends Controller
{
    /*  Companies */

        function viewCompanies(){
            $databelt = companies::orderBy('name')->get();
            return view('settings.companies.view', ['databelt' => $databelt]);
        }

        function addCompany(){
            return view('settings.companies.add');
        }

        function insertCompany(Request $request){
            $data = $request->all();
            $query = companies::insertCompany($data);
            return redirect('/settings/companies')->with('success', 'New Company Added.');
        }

        function deleteCompany($id){
            $id = base64_decode($id);
            companies::destroy($id);

            return redirect('/settings/companies')->with('success', 'Company Deleted.');
        }

        function editCompany($id){
            $id = base64_decode($id);
            $data = companies::find($id);
            return view('settings.companies.edit', ['data' => $data]); 
        }

        function updateCompany(Request $request){
            $data = $request->all();
            $query = companies::updateCompany($data);

            return redirect('/settings/companies')->with('success', 'Company Updated.');
        }
}
