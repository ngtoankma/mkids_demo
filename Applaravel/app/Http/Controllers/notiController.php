<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use App\notification;
use App\notification_ref;
use App\user_class_ref;
use App\classSchool;

use Illuminate\Support\Facades\Auth;
use Mail;



class notiController extends Controller
{
    
    public function getListNoti(){
       // $User= User::all();
    	 $notification =notification::orderBy('id', 'desc')->paginate(20);
    	return view('admin.Notification.list_noti',['notification'=>$notification]);
    }
    public function getAddNoti()
    {
        $user=Auth::id();
        //echo $user;
        return view('admin.Notification.add_noti',['User'=>$user]);
    }
    public function postAddNoti(Request $request)
    {

        $notification =new notification;
        $notification->name =$request->name;
        $notification->type =$request->type;
        $notification->content =$request->content;
        $notification->start_time =$request->start_time;

        $notification->user_id =Auth::id();;
        $notification->status =$request->status;

        $notification->save();

        return redirect('admin/Notification/add_noti')->with('thongbao','Them thanh cong');

    }
    public function getEditNoti($id)
    {

        $notification=notification::find($id);
        //echo $user;
        return view('admin.Notification.edit_noti',['notification'=>$notification]);
    }
    public function postEditNoti(Request $request,$id)
    {

        $notification=notification::find($id);
        $notification->name =$request->name;
        $notification->type =$request->type;
        $notification->content =$request->content;
        $notification->start_time =$request->start_time;

        $notification->user_id =Auth::id();;
        $notification->status =$request->status;
        $notification->save();

        return redirect('admin/Notification/list_noti')->with('thongbao','Sửa thành công');

    }
    public function getSendNoti($id)
    {

        $notification=notification::find($id);
        //echo $user;
        return view('admin.Notification.send_noti',['notification'=>$notification]);
    }
    public function postSendNoti(Request $request,$id)
    {

        $notification=notification::find($id);
 
         $type=(($notification->type==0)?'Toàn trường':(($notification->type)==1?'Theo khối':(($notification->type==2)?'Theo lớp':'Từng cá nhân')));

        $data= ['nameAdmin'=>$notification->notification->name,
                'name'=>$notification->name,
                'type'=>$type,
                'content'=>$notification->content,
                'start_time'=>$notification->start_time,

    ];
    
    
    

        // echo $notification->name;
  

    Mail::send('admin/Notification/send', $data, function ($message) {
        $message->from('ngtoan97@gmail.com', 'Trường học');

        foreach ($User =User::where('is_delete',0)->get() as $key ) {
        # code...
         $mail =$key->email;
         $name =$key->name;
        $message->to($mail, $name)->subject('Test!');

    }
    

    });

    if($notification->type==0)
    {
        $User =User::where('is_delete',0)->where('status',1)->where('type',2)->get();
        foreach ($User as $key ) {
            # code...
             $noti_ref= new notification_ref;
            // echo $key->id;
            $noti_ref->program_id=$id;

            $noti_ref->user_id=$key->id;
             $user_id = user_class_ref::where('user_id', $key->id)->get();

             foreach($user_id as $item)
             {
                 $class_id= classSchool::find($item->class_id);
                 $noti_ref->group_id= $class_id->group_id;

                 $noti_ref->class_id= $item->class_id;
             }
             $noti_ref->save();
            // echo  $key->userClass->group_id;
            // echo $id;
        }
    }
    $notification->status=3;
    $notification->save();

         return redirect('admin/Notification/list_noti')->with('thongbao','Gửi thành công');

    }
    public function getxoa($id)
        {
            $notification= notification::find($id);
            $notification->is_delete=1;
            $notification->save();

            return redirect('admin/Notification/list_noti')->with('thongbao','Xóa thành công');
        }

}
