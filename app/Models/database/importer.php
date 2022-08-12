<?php

namespace App\Models\database;

use Illuminate\Database\Eloquent\Model;
use Auth;
use App\Models\database\importer_custType;
use App\Models\database\cities;
use App\User;

class importer extends Model
{
    protected $table = 'tbl_importer_info';

    public static function insertImporter(array $data){
    	$importer = new importer;
    	$importer->name 			= $data['name'];
    	$importer->address 			= $data['address'];
    	$importer->remarks 			= $data['remarks'];
    	$importer->phone 			= $data['phone'];
    	$importer->email 			= $data['email'];
    	$importer->fax 				= $data['fax'];
    	$importer->website 			= $data['website'];
    	$importer->city_id 			= $data['city_id'];
    	$importer->cont_person 		= $data['cont_person'];
    	$importer->cont_position 	= $data['cont_position'];
    	$importer->fin_person 		= $data['fin_person'];
    	$importer->fin_position 	= $data['fin_position'];
    	$importer->import_license 	= $data['import_license'];
    	$importer->license_validity = $data['lic_validity'];
    	$importer->ntn_no 			= $data['ntn_no'];
    	$importer->clearing_agent 	= $data['clearing_agent'];
    	$importer->ccie_regist 		= $data['ccie_regist'];
    	$importer->sales_man 		= $data['sales_man'];
    	$importer->created_by		= Auth::user()->id;
    	$importer->save();
    	$id = $importer->id;
 		
        if(isset($data['cust_type'])){
     		importer::insertCustType($id, $data['cust_type']);
        }
    	return true;
    }

    public static function updateImporter(array $data){
        $id = base64_decode($data['importer_id']);
        $importer = importer::find($id);
        $importer->name             = $data['name'];
        $importer->address          = $data['address'];
        $importer->remarks          = $data['remarks'];
        $importer->phone            = $data['phone'];
        $importer->email            = $data['email'];
        $importer->fax              = $data['fax'];
        $importer->website          = $data['website'];
        $importer->city_id          = $data['city_id'];
        $importer->cont_person      = $data['cont_person'];
        $importer->cont_position    = $data['cont_position'];
        $importer->fin_person       = $data['fin_person'];
        $importer->fin_position     = $data['fin_position'];
        $importer->import_license   = $data['import_license'];
        $importer->license_validity = $data['lic_validity'];
        $importer->ntn_no           = $data['ntn_no'];
        $importer->clearing_agent   = $data['clearing_agent'];
        $importer->ccie_regist      = $data['ccie_regist'];
        $importer->sales_man        = $data['sales_man'];
        $importer->created_by       = Auth::user()->id;
        $importer->save();
        
        importer_custType::where('importer_id', $id)->delete();

        if(isset($data['cust_type'])){
            importer::insertCustType($id, $data['cust_type']);
        }
        return true;
    }

    public static function importerDestroy($id){
        importer::destroy($id);
        importer_custType::where('importer_id', $id)->delete();

        return true;
    }

    public static function insertCustType($id, $data){
    	foreach($data as $da){
    		$type = new importer_custType;
    		$type->importer_id = $id;
    		$type->type = $da;
    		$type->save();
    	}
    }

    public function cust_type(){
        return $this->belongsTo(importer_custType::class, 'id', 'importer_id');
    }

    public function city(){
        return $this->belongsTo(cities::class, 'city_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }
}
