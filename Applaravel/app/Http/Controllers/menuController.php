<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use App\menu;
use App\classSchool;
use App\group;
use App\Member;
use App\menu_ref;
use App\list_menu;
use App\list_menu_ref;
class menuController extends Controller
{
    public function getListMenu()
    {
    	$menu = menu::where('is_delete',0)->orderBy('id', 'DESC')->paginate(20);

        $data=[];
        foreach ($menu as $key =>$value) {
        $menu_ref=menu_ref::where('menu_id',$value->id)->count();
       $data[$value->id]=$menu_ref;

        }
        // $list_menu_ref=list_menu_ref::all();
        // echo $list_menu_ref;
        // foreach ($data as $key => $value) {
        //     echo $key.'-'.$value;
        // }
	return view('admin/menu/list_menu',['menu'=>$menu],['data'=>$data]);
    }
    public function getDelete()
    {
        $menu = menu::where('is_delete',1)->orWhere('status',1)->paginate(20);

        $data=[];
        foreach ($menu as $key =>$value) {
        $menu_ref=menu_ref::where('menu_id',$value->id)->count();
       $data[$value->id]=$menu_ref;

        }

        // foreach ($data as $key => $value) {
        //     echo $key.'-'.$value;
        // }
    return view('admin/menu/list_menu',['menu'=>$menu],['data'=>$data]);
    }

    public function getAddMenu()
    {
        $group = group::where('is_delete',0)->where('status',1)->get();
      
        $classSchool = classSchool::where('is_delete',0)->where('status',1)->get();
        $list_menu= list_menu::where('is_delete',0)->Where('status',0)->get();
        //  echo $list_menu;
    	return view('admin/menu/add_menu',['group'=>$group,'list_menu'=>$list_menu,'classSchool'=>$classSchool]);

    }

    public function postAddMenu(Request $request)
    {
        $group = group::where('is_delete',0)->where('status',1)->get();
        
    	$menu =new menu;
    	$menu->title=$request->title;
    	$menu->description =$request->description; 
    	$menu->type=$request->type;
    	
        $menu->save();
        
         $menu_id=$menu->id;
         foreach($request->list as $key)
         {
            $list_menu_ref= new list_menu_ref;
            $list_menu_ref->menu_id=$menu_id;
            $list_menu_ref->list_menu_id=$key;
            $list_menu_ref->save();
         }

        if($request->typeSchool==0)
        {


            $group = group::where('is_delete',0)->where('status',1)->get();
            foreach ($group as $group) {
                # code...
            //echo $group->id.'=';
                $classSchool = classSchool::where('is_delete',0)->where('group_id',$group->id)->where('status',1)->get();
                foreach ($classSchool as $classSchool) {
                //$key->id;
                    //echo $classSchool->id.'-';
                $Member = Member::where('is_delete',0)->where('class_id',$classSchool->id)->where('status',1)->get();
                foreach ($Member as $mb) {
                    $menu_red =new menu_ref;
                   echo $menu_red->member_id=$mb->id;
                    echo $menu_red->class_id=$classSchool->id;
                    echo $menu_red->group_id=$group->id;
                    echo $menu_red->menu_id=$menu_id;
                 $menu_red->save();

                }
                
                }
            }
            return redirect('admin/menu/add_menu')->with('thongbao','Thêm thực đơn thành công');

        }
        elseif($request->typeSchool==1)
        {
            
            $group = group::find($request->group_id);
            foreach ($group as $group) {
                # code...
            //echo $group->id.'=';
                $classSchool = classSchool::where('is_delete',0)->where('group_id',$group->id)->where('status',1)->get();
                foreach ($classSchool as $classSchool) {
                //$key->id;
                    //echo $classSchool->id.'-';
                $Member = Member::where('is_delete',0)->where('class_id',$classSchool->id)->where('status',1)->get();
                foreach ($Member as $mb) {
                    $menu_red =new menu_ref;
                    echo $menu_red->member_id=$mb->id;
                    echo $menu_red->class_id=$classSchool->id;
                    echo $menu_red->group_id=$group->id;
                    echo $menu_red->menu_id=$menu_id;
                    $menu_red->save();

                }
                
                }
            }
            return redirect('admin/menu/add_menu')->with('thongbao','Thêm thực đơn thành công');

        }
        // elseif($request->typeSchool==2)
        // {
            
        //     $group = group::find($request->group_id);
        //     foreach ($group as $group) {
        //         # code...
        //     //echo $group->id.'=';
        //         $classSchool = classSchool::where('is_delete',0)->where('group_id',$group->id)->where('status',1)->get();
        //         foreach ($classSchool as $classSchool) {
        //         //$key->id;
        //             //echo $classSchool->id.'-';
        //         $Member = Member::where('is_delete',0)->where('class_id',$classSchool->id)->where('status',1)->get();
        //         foreach ($Member as $mb) {
        //             $menu_red =new menu_ref;
        //             echo $menu_red->member_id=$mb->id;
        //             echo $menu_red->class_id=$classSchool->id;
        //             echo $menu_red->group_id=$group->id;
        //             echo $menu_red->menu_id=$menu_id;
        //             $menu_red->save();
        //             return redirect('admin/menu/add_menu')->with('thongbao','Thêm thực đơn thành công');

        //         }
                
        //         }
        //     }
        // }





    }
    public function getEditMenu($id)
    {
        $menu = menu::find($id);

    	return view('admin/menu/edit_menu',['menu'=>$menu]);

    }
    // public function postEditMenu(Request $request,$id)
    // {
    //     $menu = menu::find($id);
    //     $menu->title=$request->title;
    //     $menu->description =$request->description; 
    //     $menu->type=$request->type;

    //     $menu->save();
    //     return redirect('admin/menu/info_menu')->with('thongbao','Sửa thực đơn thành công');

    // }
    public function getxoa($id)
    {
        $menu = menu::find($id);
        $menu->is_delete=1;
        $menu->save();
        return redirect('admin/menu/list_menu')->with('thongbao','Xoa thành công');

    }
}
