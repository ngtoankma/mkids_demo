<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class user_class_ref extends Model
{
    protected $table = 'tbl_user_class_ref' ;
    public $timestamps = false;
    public function user()
    {
    	return $this->belongsTo('App\User');
    }
    public function classSchool()
    {
    	return $this->belongsTo('App\classSchool');
    }
}
