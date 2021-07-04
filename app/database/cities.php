<?php

namespace App\database;

use Illuminate\Database\Eloquent\Model;
use Auth;
use App\User;

class cities extends Model
{
    protected $table = 'tbl_port_city';

    public static function insertCity(array $data){
    	$city = new Cities;
    	$city->paccs_code 		= strtoupper($data['paccs_code']);
    	$city->name 			= strtoupper($data['name']);
    	$city->principle_code 	= $data['principle_code'];
    	$city->country_id 		= $data['country_id'];
    	$city->type 			= $data['type'];
        $city->created_by       = Auth::user()->id;
    	$city->save();
 
    	return true;
    }

    public static function updateCity(array $data){
        $city = Cities::find(base64_decode($data['city_id']));
        $city->paccs_code       = strtoupper($data['paccs_code']);
        $city->name             = strtoupper($data['name']);
        $city->principle_code   = $data['principle_code'];
        $city->country_id       = $data['country_id'];
        $city->type             = $data['type'];
        $city->save();
 
        return true;
    }

    public function country(){
    	return $this->belongsTo(Countries::class, 'country_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }

}
