<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class notification extends Model
{
    //
    protected $table ='tbl_notification_program';

    public function notification()
    {
    	return $this->belongsTo('App\User','user_id','id');
    }
    //public $timestamps = false;
}
