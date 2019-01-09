<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\list_menu;

class thucdonController extends Controller
{
    public function getListMenu()
    {
        $Menu= list_menu::where('is_delete',0)->Where('status',0)->orderBy('id', 'desc')->paginate(20);
        return view('admin/listMenu/list_menu',['menu'=>$Menu]);
    }
    public function getAddMenu()
    {

        return view('admin/listMenu/add_list_menu');
    }
    public function postAddmenu(Request $request)
    {
        $Menu = new list_menu;
        $Menu->title =$request->title;
        $Menu->is_delete=0;
        $Menu->description=$request->description;
        $Menu->status=$request->status;


        $Menu->save();
        return redirect('admin/monan/add_list_menu')->with('thongbao','Thêm thành công');

    }
    public function getEditMenu($id)
    {
        $Menu = list_menu::find($id);
        return view('admin/listMenu/edit_list_menu',['menu'=>$Menu]);
    }
    public function postEditMenu(Request $request, $id)
    {
        $Menu = list_menu::find($id);
        $Menu->title =$request->title;
        $Menu->is_delete=0;
        $Menu->description=$request->description;
        $Menu->status=$request->status;


        $Menu->save();
        return redirect('admin/monan/list_menu')->with('thongbao','Sua thành công');
    }
    public function getDelete()
    {
        $Menu= list_menu::where('is_delete',1)->orWhere('status',1)->paginate(20);
        $data='bị khóa';
        return view('admin/listMenu/list_menu',['menu'=>$Menu],['data'=>$data]);
    }
    public function getxoa($id)
    {
        $menu = list_menu::find($id);
        $menu->is_delete=1;
        $menu->save();
        return redirect('admin/monan/list_menu')->with('thongbao','Xoa thành công');

    }
}
