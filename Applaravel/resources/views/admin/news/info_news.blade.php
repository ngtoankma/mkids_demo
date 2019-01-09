@extends('admin.layout.index')
@section('content')
                  
           <div class="row">
               <ol class="breadcrumb">
                   <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                   <li class="active"></li>
               </ol>
           </div><!--/.row-->
           <div class="row">
               <div class="col-lg-12">
                   <div class="panel panel-default">
                       <!-- @if(count($errors)>0)
                       <div class="alert alert-danger">
                           @foreach($errors->all() as $err)
                           {{$err}}<br>
                           @endforeach
                       </div>
                       @endif
                       @if(session('thongbao'))
                       <div class="alert alert-danger">
                           {{session('thongbao')}}
                       <div>
                       @endif -->
                       <div class="panel-heading">Thông Tin Bài Đăng </div>
                       <div class="panel-body">

                           <form action="admin/news/edit_news/{{$news->id}}" method="post" enctype="multipart/form-data" role="form">
                               <input type="hidden" name="_token" value="{{csrf_token()}}">
                               <div class="col-md-6">
                                   <div class="form-group">
                                       <label>Tiêu đề</label>
                                       <text type="text" class="form-control"  name="title" value="" required="">{!!$news->title!!}</text>
                                   </div>
                                   <div class="form-group">
                                       <label>Nội dung bài đăng</label>
                                       <p  >{!!$news->content!!}</p>
                                   </div>
                                   <div class="form-group">
                                       <label>Phạm vi tin tức</label>
                                       <div class="radio">
                                           <label>
                                               <input type="radio" name="type" id="optionsRadios2" value=0 checked>Toàn trường
                                           </label>
                                       </div>
                                       <div class="radio">
                                           <label>
                                               <input type="radio" name="type" id="optionsRadios2" value=1 checked>Theo khối
                                           </label>
                                       </div>
                                       <div class="radio">
                                           <label>
                                               <input type="radio" name="type" id="optionsRadios2" value=2 checked>Theo lớp
                                           </label>
                                       </div>
                                   </div>
                               </div> 
                               <div class="col-md-6">
                                 <label>Bình luận</label>
                                 <div class="row">
                                        <div class="col-lg-12">
                                            <div class="panel panel-default">                   
                                                <div class="panel-body" style="position: relative;">
                                                    <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                                        <thead>
                                                            <tr>                                
                                                                <th data-sortable="true">ID</th>
                                                                <th data-sortable="true">User</th>
                                                                <th data-sortable="true">Content</th>
                                                                <th data-sortable="true">Xóa</th>
                        
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        @foreach($Comment as $item)
                                                            <tr style="height: 300px;">
                                                                <td data-checkbox="true">{{$item->id}}</td>
                                                                <td data-checkbox="true">{{$item->User->name}}<a href="#"></a></td>
                                                                <td data-checkbox="true">{{$item->content}}<a href="#"></a></td>

                                                                <td>
                                                                    <a href="admin/comment/xoa/{{$item->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                        
                                                        </tbody>
                                                    </table>
                                                    <ul class="pagination" style="float: right;">
                                                       @if($Comment->currentPage()!=1)
                                                        <li><a href="{{str_replace('/?','?',$Comment->url($Comment->currentPage()-1))}}"><<</a></li>
                                                        @endif
                                                        @for($i=1;$i<=$Comment->lastPage();$i=$i+1   )
                                                        <li class="{{(($Comment->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$Comment->url($i))}}">{{$i}}</a></li>
                                                        @endfor
                                                        @if($Comment->currentPage()!=$Comment->lastPage())
                                                        <li><a href="{{str_replace('/?','?',$Comment->url($Comment->currentPage()+1))}}">>></a></li>
                                                        @endif
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                 {{-- <table>
                                 @foreach ($Commnet as $item)
                                     <tr>
                              
                               <td style="border: 1px solid black;">
                                    <p><B>{{$item->User->name}}</B></p>
                               </td>
                                    
                                     <td style="border: 1px solid black;">
                                  <label>
                                    <p >{{$item->content}}</p>
                                  </label>
                                     </td>
                                     <td style="border: 1px solid black;">
                                  <p style="">{{$item->updated_at}}</p>
                                     </td>
                                     <td style="border: 1px solid black;">
                                            <a href="admin/comment/xoa/{{$item->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                    </td>
                              </div>
                                     </tr>
                              @endforeach
                                 </table> --}}
                               </div>
                               

                           </form>
                       </div>
                   </div>
               </div><!-- /.col-->
           </div><!-- /.row -->

   
@endsection