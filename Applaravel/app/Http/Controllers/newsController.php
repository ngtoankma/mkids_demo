<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\news;
use App\Comment;

class newsController extends Controller
{
    public function getListNews(){
    	 $news =news::where('is_delete',0)->paginate(20);
    	return view('admin.news.list_news',['news'=>$news]);
    }
    public function getInfoNews($id){
        $news =news::find($id);
        $Comment = Comment::where('article_id', $id)->where('is_delete',0)->paginate(20);
        // dd($commnet);
      return view('admin.news.info_news',['news'=>$news,'Comment'=>$Comment]);
   }
    public function getEditNews($id)
    {
        $news =news::find($id);
        return view('admin.news.edit_news',['news'=>$news]);

    }
    public function postEditNews(Request $request,$id)
    {
        $news =news::find($id);
        $news->title =$request->title;
        $news->content =$request->content;
        $news->type =$request->type;
        $news->save();
        return redirect('admin/news/list_news')->with('thongbao','sửa Thành công');

    }
    public function getAddNews()
    {
        //echo $user;
        return view('admin.news.add_news');
    }
    public function postAddNews(Request $request)
    {

        $news =new news;
        $news->title =$request->title;
        $news->content =$request->content;
        $news->type =$request->type;
        $news->status =1;
        $news->user_id =Auth::id();;
        $news->save();

        return redirect('admin/news/add_news')->with('thongbao','Them thanh cong');

    }
    public function getxoa($id)
        {
            $news= news::find($id);
            $news->is_delete=1;
            $news->save();

            return redirect('admin/news/list_news')->with('thongbao','Xóa thành công');
        }

}
