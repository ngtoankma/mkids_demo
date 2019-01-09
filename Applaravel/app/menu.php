<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class menu extends Model
{
    protected $table='tbl_menu';
    public function menuTotal()
    {
    	return $this->hasmany('App/menu_ref','menu_id','id');
    }
    // public function menuList()
    // {

    //         return $this->belongsTo('App\list_menu_ref','id_menu','id');

    // }

    public function listMenu()
    {
        return $this->belongsToMany('App\list_menu','tbl_list_menu_ref');
    }
    public function menuRef()
    {
        return $this->belongsToMany('App\Member','tbl_menu_ref');
    }
}
