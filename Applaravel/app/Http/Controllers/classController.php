<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
 use App\classSchool;;
 use App\user_class_ref;
 use App\group;
 use App\User;
 use App\Member;

class classController extends Controller
{
    public function getListClass()
    {
        $group= group::all();
        $Class = classSchool::where('is_delete',0)->paginate(20);
        return view('admin/classSchool/list_class',['Class'=>$Class],['group'=>$group]);
    }
    public function getUserClass($id,$type=0)
    {
        if($type==0)
        {
    $classSchool=classSchool::find($id);
    $hey= user_class_ref::where('class_id',$classSchool->id)->get();
    //$user_class_ref= user_class_ref::where('class_id',$id)->value('user_id');
//     $user_class_ref = $user_class_ref->filter(function($user_class_ref, $id){
//     return $user_class_ref->class_id =$id;
// });
    $data=[];
        foreach ($hey as $key) {
            $key->user_id;

            $data[] =User::where('id',$key->user_id)->where('is_delete',0)->get();
            //$data=array_prepend($data,$User);
        };
        // foreach ($data as $key) {
        //     foreach ($key as $us) {
        //          echo $us->id;
        //      } $key;
        // }  ;

        //echo $user_id=$user_class_ref->user_id;
        //$User= User::where('id',$user_id);
  
       return view('admin/classSchool/userClass',['data'=>$data],['classSchool'=>$classSchool]);
        }
        elseif($type=1)
        {
            $Member= Member::where('class_id',$id)->paginate(20);
            $classSchool=classSchool::find($id);     
        return view('admin/classSchool/memberClass',['Member'=>$Member],['classSchool'=>$classSchool]);
        }
    }

    public function getMemberClass($id,$type)
    {

    }

     public function getEditClass($id)
    {
        $group= group::all();
       // $GroupSchool= GroupSchool::all();
         $classSchool =classSchool::find($id);
        return view('admin.classSchool.edit_class',['classSchool'=>$classSchool],['group'=>$group]);

    }
    public function postEditClass(Request $request,$id)
    {
        $group= group::all();
        $Class =classSchool::find($id);
        $Class->name =$request->name;
        $Class->description =$request->description;
        $Class->group_id =$request->group_id;
        $Class->is_delete =0;
        $Class->save();
        return redirect('admin/classSchool/list_class/')->with('thongbao','sửa Thành công') ;

    }
    public function getAddClass()
    {
       $classSchool= classSchool::where('is_delete',0)->get();
       $group= group::all();
        
        return view('admin.classSchool.add_class',['classSchool'=>$classSchool],['group'=>$group]);

    }
    public function postAddClass(Request $request)
    {
        $Class = new classSchool;
        // $this->validate($request,
        //     [
        //         'name'=>'request|min:3|max:50'
        //     ],
        //     [
        //         'name.required'=>'Bạn chưa nhập Tên',
        //         'name.min'=>'Tên quá ngắn',
        //         'name.max'=>'Tên quá dài'
        //     ]);
        $Class->name =$request->name;
        $Class->description =$request->description;
        $Class->group_id =$request->group_id;
        $Class->is_delete =0;
        $Class->status=$request->status;
        $Class->save();
        return redirect('admin/classSchool/add_class');

    }
    public function getxoa($id)
        {
            $Class= classSchool::find($id);
            $Class->is_delete=1;
            $Class->save();

            return redirect('admin/classSchool/list_class')->with('thongbao','Thêm Thành công');
        }
}
