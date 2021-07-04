<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\database\countries;
use App\database\cities;
use App\database\importer;
use App\database\saleperson;
use App\database\foreignAgent;
use App\database\terminal;
use Auth;

class loadController extends Controller
{
    function country(){
        $databelt = countries::orderBy('name')->get();
        return view('dataload.countries', ['databelt' => $databelt]); 
    }

    function city(){
        $databelt = cities::orderBy('name')->get();
        return view('dataload.cities', ['databelt' => $databelt]);
    }

    function importer(){
        $databelt = importer::orderBy('name')->get();
        return view('dataload.importer', ['databelt' => $databelt]);
    }

    function saleperson(){
        $databelt = saleperson::orderBy('name')->get();
        return view('dataload.saleperson', ['databelt' => $databelt]);
    }

    function foreignAgent(){
        $databelt = foreignAgent::orderBy('name')->get();
        return view('dataload.foreignAgent', ['databelt' => $databelt]);
    }

    function terminal(){
        $databelt = terminal::orderBy('name')->get();
        return view('dataload.terminal', ['databelt' => $databelt]);
    }

}
