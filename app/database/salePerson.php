<?php

namespace App\database;

use Illuminate\Database\Eloquent\Model;
use Auth;
use App\User;


class salePerson extends Model
{
    protected $table = 'tbl_sales_person';

    public static function insertSalePerson(array $data){
    	$sperson = new salePerson;
    	$sperson->name 			= $data['name'];
    	$sperson->address 		= $data['address'];
    	$sperson->phone 			= $data['phone'];
    	$sperson->mobile 		= $data['mobile'];
    	$sperson->email 			= $data['email'];
    	$sperson->fax 			= $data['fax'];
    	$sperson->website 		= $data['website'];
    	$sperson->remarks 		= $data['remarks'];
        $sperson->created_by     = Auth::user()->id;
    	$sperson->save();
 
    	return true;
    }

    public static function updateSalePerson(array $data){
    	$sperson = salePerson::find(base64_decode($data['sale_id']));
    	$sperson->name 			= $data['name'];
    	$sperson->address 		= $data['address'];
    	$sperson->phone 			= $data['phone'];
    	$sperson->mobile 		= $data['mobile'];
    	$sperson->email 			= $data['email'];
    	$sperson->fax 			= $data['fax'];
    	$sperson->website 		= $data['website'];
    	$sperson->remarks 		= $data['remarks'];
        $sperson->created_by     = Auth::user()->id;
    	$sperson->save();
 
    	return true;
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }
}
