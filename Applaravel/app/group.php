<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use App\school;

class group extends Model
{
    //
    protected $table ='tbl_group';
   
    public function schoolGroup()
    {
    	return $this->belongsTo('App\school','school_id','id');
    }
}
