<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\database\countries;
use App\Models\database\cities;
use App\Models\database\foreignAgent;
use App\Models\database\importer;
use App\Models\database\importer_custType;
use App\Models\database\salePerson;
use App\Models\database\terminal;
use DB;

class databaseController extends Controller
{
    /*  Countries */

        function viewCountry(){
            $databelt = countries::orderBy('name')->get();
            return view('database.country.country', ['databelt' => $databelt]);
        }

        function addCountry(){
            return view('database.country.addCountry');
        }

        function insertCountry(Request $request){
            $validatedData = $request->validate([
                'un_code' => 'required|unique:tbl_country',
                'name' => 'required|unique:tbl_country',
            ]);
            $data = $request->all();
            $query = countries::insertCountry($data);

            return redirect('/database/country/add')->with('success', 'New Country Added.');
        }

        function deleteCountry($id){
            $id = base64_decode($id);
            countries::destroy($id);

            return redirect('/database/country')->with('success', 'Country Deleted.');
        }

        function editCountry($id){
            $id = base64_decode($id);
            $data = countries::find($id);

            return view('database.country.editCountry', ['data' => $data]);
        }

        function updateCountry(Request $request){
            $data = $request->all();
            $query = countries::updateCountry($data);

            return redirect('/database/country')->with('success', 'Country Updated.');
        }


    /*  Cities */

        function viewCity(){
            $databelt = cities::orderBy('name')->get();
            return view('database.city.city', ['databelt' => $databelt]);
        }

        function addCity(){
            $databelt = countries::orderBy('name')->get();
            return view('database.city.addCity', ['countries' => $databelt]);
        }

        function insertCity(Request $request){
            $validatedData = $request->validate([
                'paccs_code' => 'required|unique:tbl_port_city',
                'name' => 'required|unique:tbl_port_city',
            ]);

            $data = $request->all();
            $query = cities::insertCity($data);
            return redirect('/database/city/add')->with('success', 'New City Added.');
        }

        function editCity($id){
            $id = base64_decode($id);
            $data = cities::find($id);
            $databelt = countries::orderBy('name')->get();
            return view('database.city.editCity', ['data' => $data, 'countries' => $databelt]);
        }

        function updateCity(Request $request){
            $data = $request->all();
            $query = cities::updateCity($data);

            return redirect('/database/city')->with('success', 'City Updated.');
        }

        function deleteCity($id){
            $id = base64_decode($id);
            cities::destroy($id);

            return redirect('/database/city')->with('success', 'City Deleted.');
        }


    /*  Foreign Agent */

        function viewForeignAgent(){
            $databelt = foreignAgent::orderBy('name')->get();
            return view('database.foreignAgent.foreignAgent', ['databelt' => $databelt]); 
        }

        function addForeignAgent(){
            $databelt = cities::orderBy('name')->get();
            $databelt2 = countries::orderBy('name')->get();
            $databelt3 = terminal::orderBy('name')->get();
            return view('database.foreignAgent.addForeignAgent', ['cities' => $databelt, 'countries' => $databelt2, 'terminal' => $databelt3]);
        }

        function insertForeignAgent(Request $request){
            $data = $request->all();
            $query = foreignAgent::insertForeignAgent($data);
            return redirect('/database/foreignAgent')->with('success', 'New Agent Added.');
        }

        function deleteForeignAgent($id){
            $id = base64_decode($id);
            foreignAgent::destroy($id);

            return redirect('/database/foreignAgent')->with('success', 'Agent Deleted.');
        }

        function editForeignAgent($id){
            $id = base64_decode($id);
            $data = foreignAgent::find($id);
            $databelt = cities::orderBy('name')->get();
            $databelt2 = countries::orderBy('name')->get();
            $databelt3 = terminal::orderBy('name')->get();
            return view('database.foreignAgent.editForeignAgent', ['data' => $data, 'cities' => $databelt, 'countries' => $databelt2, 'terminal' => $databelt3]);
        }

        function updateForeignAgent(Request $request){
            $data = $request->all();
            $query = foreignAgent::updateForeignAgent($data);

            return redirect('/database/foreignAgent')->with('success', 'Agent Updated.');
        }


    /*  Importer */

        function viewImporter(){
            $databelt = importer::orderBy('name')->get();
            return view('database.importer.importer', ['databelt' => $databelt]);
        }

        function addImporter(){
            $cities = cities::orderBy('name')->get();
            return view('database.importer.addImporter', ['cities' => $cities]);
        }

        function insertImporter(Request $request){
            $data = $request->all();
            $query = importer::insertImporter($data);
            return redirect('/database/importer')->with('success', 'New Importer Added.');
                  
        }

        function deleteImporter($id){
            $id = base64_decode($id);
            importer::importerDestroy($id);

            return redirect('/database/importer')->with('success', 'Importer Deleted.');
        }

        function editImporter($id){
            $id = base64_decode($id);
            $data = importer::find($id);
            $cities = cities::orderBy('name')->get();
            $cust_type = importer_custType::where('importer_id', $id)->select('type')->get();
            return view('database.importer.editImporter', ['data' => $data, 'cities' => $cities, 'cust_type' => $cust_type]);
        }

        function updateImporter(Request $request){
            $data = $request->all();
            $query = importer::updateImporter($data);

            return redirect('/database/importer')->with('success', 'Importer Updated.');
        }


    /*  SalePerson */

        function viewSalePerson(){
            $databelt = salePerson::orderBy('name')->get();
            return view('database.salePerson.salePerson', ['databelt' => $databelt]);
        }

        function addSalePerson(){
            return view('database.salePerson.addSalePerson');
        }

        function insertSalePerson(Request $request){
            $data = $request->all();
            $query = salePerson::insertSalePerson($data);
            return redirect('/database/saleperson')->with('success', 'New Sales Person Added.');
        }

        function deleteSalePerson($id){
            $id = base64_decode($id);
            salePerson::destroy($id);

            return redirect('/database/saleperson')->with('success', 'Sales Person Deleted.');
        }

        function editSalePerson($id){
            $id = base64_decode($id);
            $data = salePerson::find($id);
            return view('database.salePerson.editSalePerson', ['data' => $data]);
        }

        function updateSalePerson(Request $request){
            $data = $request->all();
            $query = salePerson::updateSalePerson($data);

            return redirect('/database/saleperson')->with('success', 'Sales Person Updated.'); 
        }


    /*  Terminal */

        function viewTerminal(){
            if (Auth::check()) {

                $databelt = terminal::orderBy('name')->get();
                return view('database.terminal.terminal', ['databelt' => $databelt]);
            }else{
                return redirect('/login')->with('error', 'Authentication Error');
            } 
        }

        function addTerminal(){
            if (Auth::check()) {
                $databelt = cities::orderBy('name')->get();
                return view('database.terminal.addTerminal', ['cities' => $databelt]);
              
            }else{
                return redirect('/login')->with('error', 'Authentication Error');
            } 
        }

        function insertTerminal(Request $request){
            if (Auth::check()) {
                $data = $request->all();
                $query = terminal::insertTerminal($data);
                return redirect('/database/terminal')->with('success', 'New Terminal Added.');
                          
            }else{
                return redirect('/login')->with('error', 'Authentication Error');
            } 
        }

        function deleteTerminal($id){
            if (Auth::check()) {

                $id = base64_decode($id);
                terminal::destroy($id);

                return redirect('/database/terminal')->with('success', 'Terminal Deleted.');
            }else{
                return redirect('/login')->with('error', 'Authentication Error');
            } 
        }

        function editTerminal($id){
            if (Auth::check()) {

                $id = base64_decode($id);
                $data = terminal::find($id);
                $databelt = cities::orderBy('name')->get();
                return view('database.terminal.editTerminal', ['data' => $data, 'cities' => $databelt]);
            }else{
                return redirect('/login')->with('error', 'Authentication Error');
            } 
        }

        function updateTerminal(Request $request){
            if (Auth::check()) {
                $data = $request->all();
                $query = terminal::updateTerminal($data);

                return redirect('/database/terminal')->with('success', 'Terminal Updated.');
            }else{
                return redirect('/login')->with('error', 'Authentication Error');
            } 
        }
}
