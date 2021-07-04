<?php

namespace App\database;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\database\countries;
use App\database\cities;
use Auth;

class foreignAgent extends Model
{
    protected $table = 'tbl_foreign_agent';

    public static function insertForeignAgent(array $data){
    	$fagent = new ForeignAgent;
    	$fagent->name 			= $data['name'];
    	$fagent->short_name 	= $data['short_name'];
    	$fagent->address 		= $data['address'];
    	$fagent->phone 			= $data['phone'];
    	$fagent->mobile 		= $data['mobile'];
    	$fagent->email 			= $data['email'];
    	$fagent->fax 			= $data['fax'];
    	$fagent->website 		= $data['website'];
    	$fagent->country_id 	= $data['country_id'];
    	$fagent->city_id 		= $data['city_id'];
    	$fagent->cont_person 	= $data['cont_person'];
    	$fagent->currency 		= $data['currency'];
    	$fagent->ntn_no 		= $data['ntn_no'];
    	$fagent->type 			= $data['type'];
    	$fagent->terminal_id 	= $data['terminal_id'];
    	$fagent->bank_details 	= $data['bank_details'];
        $fagent->created_by     = Auth::user()->id;
    	$fagent->save();
 
    	return true;
    }

    public static function updateForeignAgent(array $data){
    	$fagent = ForeignAgent::find(base64_decode($data['agent_id']));
    	$fagent->name 			= $data['name'];
    	$fagent->short_name 	= $data['short_name'];
    	$fagent->address 		= $data['address'];
    	$fagent->phone 			= $data['phone'];
    	$fagent->mobile 		= $data['mobile'];
    	$fagent->email 			= $data['email'];
    	$fagent->fax 			= $data['fax'];
    	$fagent->website 		= $data['website'];
    	$fagent->country_id 	= $data['country_id'];
    	$fagent->city_id 		= $data['city_id'];
    	$fagent->cont_person 	= $data['cont_person'];
    	$fagent->currency 		= $data['currency'];
    	$fagent->ntn_no 		= $data['ntn_no'];
    	$fagent->type 			= $data['type'];
    	$fagent->terminal_id 	= $data['terminal_id'];
    	$fagent->bank_details 	= $data['bank_details'];
    	$fagent->save();
 
    	return true;
    }



    public function country(){
    	return $this->belongsTo(countries::class, 'country_id');
    }


    public function city(){
    	return $this->belongsTo(cities::class, 'city_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }
}
