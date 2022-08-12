<?php

namespace App\settings;

use Illuminate\Database\Eloquent\Model;
use App\User;
use Auth;

class companies extends Model
{
    //
    protected $table = 'tbl_companies_info';

    public static function insertCompany(array $data){
        $license = new companies;
        $license->code          = $data['license_code'];
        $license->name          = strtoupper($data['name']);
        $license->address       = strtoupper($data['address']);
        $license->phone         = $data['phone'];
        $license->fax           = $data['fax'];
        $license->email         = $data['email'];
        $license->created_by    = Auth::user()->id;
        $license->save();
 
        return true;
    }

    public static function updateCompany(array $data){
        $license = companies::find(base64_decode($data['license_id']));
        $license->code          = $data['license_code'];
        $license->name          = strtoupper($data['name']);
        $license->address       = strtoupper($data['address']);
        $license->phone         = $data['phone'];
        $license->fax           = $data['fax'];
        $license->email         = $data['email'];
        $license->created_by    = Auth::user()->id;
        $license->save();
 
        return true;
    }

    public function user(){
        return $this->belongsTo(User::class, 'created_by');
    }
}
