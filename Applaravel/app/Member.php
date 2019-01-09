<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    //
    protected $table = 'tbl_member';
    public function memberClass()
    {
    	return $this->belongsTo('App\classSchool','class_id','id');
    }
}
