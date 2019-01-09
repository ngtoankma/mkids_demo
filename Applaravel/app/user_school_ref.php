<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class user_school_ref extends Model
{
    protected $table = 'tbl_user_school_ref' ;
    public $timestamps = false;
    public function user()
    {
    	return $this->hasMany('App\User','user_id','id');
    }
}
