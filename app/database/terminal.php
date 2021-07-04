<?php

namespace App\database;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\database\cities;
use Auth;

class terminal extends Model
{
    protected $table = 'tbl_terminal_info';

    public static function insertTerminal(array $data){
    	$terminal = new terminal;
    	$terminal->name 		= $data['name'];
    	$terminal->short_name 	= $data['short_name'];
    	$terminal->city_id 		= $data['city_id'];
        $terminal->created_by   = Auth::user()->id;
    	$terminal->save();
 
    	return true;
    }

    public static function updateTerminal(array $data){
    	$terminal = terminal::find(base64_decode($data['terminal_id']));
    	$terminal->name 		= $data['name'];
    	$terminal->short_name 	= $data['short_name'];
    	$terminal->city_id 		= $data['city_id'];
    	$terminal->save();
 
    	return true;
    }


    public function city(){
    	return $this->belongsTo(cities::class, 'city_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }
}
