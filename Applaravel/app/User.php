<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\DB;

class User extends Authenticatable
{
    use Notifiable;
    protected $table = 'tbl_user' ;
    
   
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable =[
        'email','password'];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    
    protected $hidden = [
        'password', 'remember_token',
    ];
    public function userClass()
    {
        return $this->belongsTo('App\user_class_ref');
    }
    public function userSchool()
    {
        return $this->belongsTo('App\user_school_ref','user_id','id');
    }
    // public function comment()
    // {
    //     return $this->hasMany('App\comment','user_id','id');
    // }

}
