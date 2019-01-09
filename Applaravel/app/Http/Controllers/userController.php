<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;


use App\User;
use App\classSchool;
use App\user_class_ref;
class userController extends Controller
{
    public function getListUser($type=4){
        if($type==4)
        {
    	 $User = User::where('is_delete',0)->where('status',1)->paginate(20);
    	return view('admin.user.list_user',['User'=>$User]);
        }
        if($type==0)
        {
         $User = User::where('is_delete',0)->where('type',0)->where('status',1)->paginate(20);
        return view('admin.user.list_user',['User'=>$User]);
        }
        if($type==1)
        {
         $User = User::where('is_delete',0)->where('type',1)->where('status',1)->paginate(20);
        return view('admin.user.list_user',['User'=>$User]);
        }
        if($type==2)
        {
         $User = User::where('is_delete',0)->where('type',2)->where('status',1)->paginate(20);
        return view('admin.user.list_user',['User'=>$User]);
        }
        if($type==3)
        {
         $User = User::where('is_delete',1)->orWhere('status',0)->paginate(20);
        return view('admin.user.list_user',['User'=>$User],['type'=>3]);
        }
    }
    public function getInfo($id){
        $user_class_ref= user_class_ref::where('user_id',$id)->first();
        $class_id=$user_class_ref->class_id;
        $classSchool= classSchool::where('id',$class_id)->first();
           $User =User::find($id);
        return view('admin.user.info_user',['User'=>$User],['classSchool'=>$classSchool]);
    }

    public function getEditUser($id)
    {
        $classSchool= classSchool::where('is_delete',0)->get();
         $User =User::find($id);
    	return view('admin.user.edit_user',['User'=>$User],['classSchool'=>$classSchool]);
    }
    public function postEditUser(Request $request,$id)
    {
        $user_class_ref= user_class_ref::where('user_id',$id)->first();

         $User =User::find($id);
        // $this->validate($request,
        //     [
        //         'email'=>'request|unique:User,email|min:3|max:50'
        //     ],
        //     [
        //         'email.required'=>'Bạn chưa nhập email',
        //         'email.unique'=>'Email đã tồn tại',
        //         'email.min'=>'Email quá ngắn',
        //         'email.max'=>'Email quá dài'
        //     ]);
        $salt='0f61760804aee7d89a2ba685cd757373';
        $User->name =$request->name;
        $User->gender =$request->gender;
        $User->email =$request->email;
        $User->msisdn =$request->msisdn;
        $User->salt=$salt;
        $User->password =Hash::make($request->password+$salt);
        $User->address =$request->address;
        $User->facebook =$request->facebook;
        $User->description =$request->description;
        $User->type =$request->type;
        $User->save();
        // $user_class=$User->id;
         $Userclass_id=$request->class_id;
         //echo $user_class_ref->id;

        // $user_class_ref->user_id=$user_class;
        $user_class_ref->class_id=$Userclass_id;
        // echo $user_class_ref->id;
        // echo $user_class_ref->user_id;
        // echo $user_class_ref->class_id;
        $user_class_ref->save();
        return redirect('admin/user/list_user')->with('thongbao','sửa Thành công') ;
    }
    public function getAddUser()
    {
        $classSchool= classSchool::where('is_delete',0)->get();
        return view('admin.user.add_user',['classSchool'=>$classSchool]);
    }
    public function postAddUser(Request $request)
    {
        $this->validate($request,
        [

            'email'=>'unique:tbl_user,email',
    
        ],
        [
           
            'email.unique'=>'Đã tồn tại',
        ]
        );
        $image_path= $request->file('images')->getClientOriginalName();
        $User =new User;
        $salt='0f61760804aee7d89a2ba685cd757373';
        $User->name =$request->name;
        $User->gender =$request->gender;
        $User->email =$request->email;
        $User->msisdn =$request->msisdn;
        $User->password =Hash::make($request->password+$salt+$salt);
        $User->address =$request->address;
        $User->facebook =$request->facebook;
        $User->description =$request->description;
        $User->type =$request->type;
        $User->salt=$salt;
        $request->file('images')->move('public/admin_asset/images/users/',$image_path);
        $User->save();
        $user_class=$User->id;
         $Userclass_id=$request->class_id;
        $user_class_ref=new user_class_ref;
        $user_class_ref->user_id=$user_class;
        $user_class_ref->class_id=$Userclass_id;
        $user_class_ref->save();
        return redirect('admin/user/add_user')->with('thongbao','Them thanh cong');
       
       // $this->postUserClass($user_class,$Userclass_id);
        // echo $request->name;
        // echo $request->type;

        
    }

    // public function postUserClass($user_class,$Userclass_id)
    // {
        
    // }
    public function getxoa($id)
        {
            $User= User::find($id);
            $User->is_delete=1;
            $User->save();

            return redirect('admin/user/list_user');
        }

    public function getCheck($id)
    {
        $User= User::find($id);
        $User->is_delete=0;
        $User->status=1;

        $User->save();

        return redirect('admin/user/list_user/3');
    }
     public function getLoginAdmin()
    {
        if(Auth::check())
        {
            if(Auth::User()->type==2)
            {
                return view('Client/home/home');
            }
            else{
                return view('admin/layout/content');}

        }
        else{
        return view('admin/login/login');
        }
    }
    public function postLoginAdmin(Request $request)
    {
 
        $this->validate($request,[
         'email'=>'required',
         'password'=>'required|min:3|max:32'
        ],[
         'email.required'=>'Bạn chưa nhập email',
         'password.required'=>'Bạn chưa nhập mật khẩu',
         'password.min'=>'password không được nhở hơn 3',
         'password.max'=>'password không được nhở hơn 32'
        ]);

        $login=[
            'email'=>$request->email,
            'password'=>$request->password,
        ];
        if(Auth::attempt($login))
        {
            if((Auth::User()->type)==2)
            {
                return redirect('home');
            }
            else{
                return redirect('admin/layout/content');
            }
        }
        else{
            return redirect('admin/login')->with('thongbao','Đăng nhập không thành công');
        }
    }
    public function getLogoutAdmin()
    {
        Auth::logout();
        return redirect('admin/login');
    }



}
