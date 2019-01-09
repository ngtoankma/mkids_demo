<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use App\classSchool;;
 use App\group;

class commentController extends Controller
{
    public function getListComment()
    {
        $Comment = Comment::where('is_delete',0)->paginate(20);
        return view('admin/comment/list_comment',['Comment'=>$Comment]);
    }
    public function getDetailsComment($id)
    {
        $Comment= Comment::where('is_delete',0)->get();
         $Comment =Comment::where('id',$id)->first();
        return view('admin.comment.details_comment',['Comment'=>$Comment]);

    }
    public function getxoa($id)
        {
            $Comment= Comment::find($id);
            $Comment->is_delete=1;
            $Comment->save();

            return redirect('admin/comment/list_comment');
        }
}
