<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Comment extends Model
{
    protected $table = "tbl_comment";
    // public $timestamps = false;
    public function User()
    {
    	return $this->belongsTo('App\User','user_id','id');
    }
}
