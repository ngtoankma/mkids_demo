<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class news extends Model
{
    protected $table = "tbl_article";
    public function article()
    {
    	return $this->belongsTo('App\User','user_id','id');
    }
}
	