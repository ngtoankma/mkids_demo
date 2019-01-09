<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class classSchool extends Model
{
    //
     protected $table = 'tbl_class';
     public function Group()
    {
    	return $this->belongsTo('App\group','group_id','id');
    }
     public function memberClass()
    {
        return $this ->hasmany('App\Member','class_id','id');
    }

}
