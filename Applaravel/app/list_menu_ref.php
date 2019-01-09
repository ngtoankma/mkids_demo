<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class list_menu_ref extends Model
{
    protected $table ='tbl_list_menu_ref';
    public $timestamps = false;
    public function menIDu()
    {
    	return $this->belongsTo('App\menu','menu_id','id');
    }
    public function listMenu()
    {
    	return $this->belongsTo('App\menu','list_menu_id','id');
    }
}
