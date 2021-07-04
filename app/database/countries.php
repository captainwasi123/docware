<?php

namespace App\database;

use Illuminate\Database\Eloquent\Model;
use Auth;
use App\User;

class countries extends Model
{
    
    protected $table = 'tbl_country';

    public static function insertCountry(array $data){
    	$country = new Countries;
    	$country->code      = strtoupper($data['iso_code']);
        $country->un_code   = strtoupper($data['un_code']);
    	$country->name      = strtoupper($data['name']);
        $country->created_by= Auth::user()->id;
    	$country->save();
 
    	return true;
    }

    public static function updateCountry(array $data){
    	$country = Countries::find($data['country_id']);
        $country->code      = strtoupper($data['iso_code']);
        $country->un_code   = strtoupper($data['un_code']);
        $country->name      = strtoupper($data['name']);
    	$country->save();
 
    	return true;
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }
}
