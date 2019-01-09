<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Member;
 use App\classSchool;;

class memberController extends Controller
{
    public function getListMember()
    {
        $classSchool= classSchool::where('is_delete',0)->get();
        $Member = Member::where('is_delete',0)->Where('status',1)->paginate(20);
        return view('admin/member/list_member',['Member'=>$Member]);
    }
     public function getEditMember($id)
    {
        $classSchool= classSchool::where('is_delete',0)->get();
         $Member =Member::find($id);
        return view('admin/member/edit_member',['Member'=>$Member],['classSchool'=>$classSchool]);

    }
    public function postEditMember(Request $request,$id)
    {
        $Member =Member::find($id);
        // $this->validate($request,
        //     [
        //         'name'=>'request|min:3|max:50'
        //     ],
        //     [
        //         'name.required'=>'Bạn chưa nhập Tên',
        //         'name.min'=>'Tên quá ngắn',
        //         'name.max'=>'Tên quá dài'
        //     ]);
        $Member->name =$request->name;
        $Member->birthday =$request->birthday;
        $Member->height =$request->height;
        $Member->weight =$request->weight;
        $Member->class_id =$request->class_id;
        $Member->description =$request->description;
        $Member->save();
        return redirect('admin/member/list_member')->with('thongbao','sửa Thành công') ;

    }
    public function getAddMember()
    {
        $classSchool= classSchool::where('is_delete',0)->get();
        
        return view('admin.member.add_member',['classSchool'=>$classSchool]);

    }
    public function postAddMember(Request $request)
    {
        $Member = new Member;
        // $this->validate($request,
        //     [
        //         'name'=>'request|min:3|max:50'
        //     ],
        //     [
        //         'name.required'=>'Bạn chưa nhập Tên',
        //         'name.min'=>'Tên quá ngắn',
        //         'name.max'=>'Tên quá dài'
        //     ]);
        $Member->name =$request->name;
        $Member->birthday =$request->birthday;
        $Member->height =$request->height;
        $Member->weight =$request->weight;
        $Member->is_delete =0;
        $Member->class_id =$request->class_id;
        $Member->description =$request->description;
        $Member->save();
        return redirect('admin/member/add_member')->with('thongbao','Them thanh cong');

    }
    public function getxoa($id)
        {
            $Member= member::find($id);
            $Member->is_delete=1;
            $Member->save();

            return redirect('admin/member/list_member');
        }
}
