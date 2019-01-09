<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\group;

class groupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $group = group::where('is_delete',0)->where('status',1)->paginate(20);

        $school=DB::table('tbl_school')->get();
        return view('admin.group.list_group',compact('group'),['school'=>$school]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $school=DB::table('tbl_school')->get();

        return view('admin.group.add_group',['school'=>$school]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $group = new group;
        $group->name=$request->name;
        $group->school_id=$request->school_id;
        $group->description=$request->description;
        $group->status=$request->status;
        $group->save();
        return redirect('admin/group/create')->with('thongbao','Thêm thành công');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $group=group::find($id);
        $school=DB::table('tbl_school')->get();

        return view('admin.group.edit_group',compact('group'),['school'=>$school]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
         $group=group::find($id);
        $group->name=$request->name;
        $group->school_id=$request->school_id;
        $group->description=$request->description;
        $group->status=$request->status;
        $group->save();
        return redirect('admin/group')->with('thongbao','Thêm thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
