<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;
use App\news;
use App\Comment;
use App\User;
use App\notification_ref;
use App\Notification;
use App\menu;
use App\menu_ref;
use App\user_class_ref;
use App\classSchool;

class homeController extends Controller
{
    public function getHome()
    {
        $news = news::where('is_delete',0)->where('status',1)->paginate(5);
        return view('client/Home/home',['news'=>$news]);
    }
    public function getNoti()
    {
        
        $noti = notification_ref::where('user_id',Auth::id())->get();
        $data=[];
         foreach ($noti as $key)
         {
             $data[]=notification::where('id',$key->program_id)->get();
         }
    //    foreach($data as $k)
    //    {
    //     foreach($k as $kk)
    //     {
    //         echo $kk->id;
    //     }
    //    }
    $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);

       return view('client/noti/noti',['data'=>$data,'list'=>$list]);
    }
    public function getNotiInfo($id)
    {
        $noti=notification::find($id);
        return view('client/noti/noti_info',['noti'=>$noti]);
    }
    public function getInfo()
    {
    $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);

        return view('client/home/info',['list'=>$list]);
    }
    public function getNews($id)
    {
        $comment = Comment::where('article_id', $id)->paginate(3);
        $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);
        $news = news::find($id);
        // echo $news;
        $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);
         return view('client/news/news',['news'=>$news,'Comment'=>$comment,'list'=>$list]);
        
    }
    public function getLienHe()
    {
        // $comment = Comment::where('article_id', $id)->get();;
        // $news = news::find($id);
        // echo $news;
     $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);
    $user= User::where('is_delete',0)->where('status',1)->where('type',1)->orWhere('type',0)->orderBy('id', 'DESC')->paginate(3);
    // dd($user);
         return view('client/home/lienhe',['list'=>$list,'User'=>$user]);
        
    }
public function postNews(Request $request, $id)
{
    $Comment = new Comment;
    $Comment->content=$request->content;
    $Comment->user_id=Auth::id();
    $Comment->article_id=$id;
     $Comment->save();
     $com = Comment::where('article_id', $id)->where('is_delete',0)->paginate(20);
     $news = news::find($id);
     $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);

    return view('client/news/news',['news'=>$news,'Comment'=>$com,'list'=>$list]);
    
}

    public function getList()
    {
        $news = news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(5);
        return view('client/news/tintuc',['news'=>$news]);
    }

    public function getMenu()
    {

        $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);
        // $user= User::where('is_delete',0)->where('status',1)->where('type',1)->orWhere('type',0)->orderBy('id', 'DESC')->paginate(3);
        //     $user_id= Auth::User()->id;
        //     $user_class_ref= user_class_ref::where('user_id',$user_id)->first();
        //  echo  $class_id=$user_class_ref->class_id;



        $menu = menu::where('is_delete',0)->orderBy('id', 'DESC')->paginate(5);

        $data=[];
        foreach ($menu as $key =>$value) {
        $menu_ref=menu_ref::where('menu_id',$value->id)->count();
       $data[$value->id]=$menu_ref;

        }
        return view('client/menu/list_menu',['list'=>$list,'data'=>$data,'menu'=>$menu]);
    }

    public function getInfoMenu($id)
    {
 
        

          
        $list =news::where('is_delete',0)->where('status',1)->orderBy('id', 'DESC')->paginate(3);

        
        $menu = menu::find($id);
        return view('client/menu/info_menu',['list'=>$list,'l_u'=>$menu]);

    }
}
