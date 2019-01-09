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
                    <h1 class="page-header">Quản lý bài đăng</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">
                            <a href="admin/news/add_news" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm bài đăng </a>                
                            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                <thead>
                                    <tr>                                
                                        <th data-sortable="true">ID</th>
                                        <th data-sortable="true">Tiêu đề</th>
                                        <th data-sortable="true">Nội dung bài đăng</th>
                                        <th data-sortable="true">Phạm vi tin tức</th>
                                        <th data-sortable="true">ID người tạo</th>
                                        <th data-sortable="true">Sửa</th>
                                        <th data-sortable="true">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($news as $l_n)
                                    <tr style="height: 300px;">
                                        <td data-checkbox="true">{{$l_n->id}}</td>
                                        <td data-checkbox="true"><a href="admin/news/info_news/{{$l_n->id}}">{{$l_n->title}}</a></td>
                                        <td data-sortable="true">{{ substr($l_n->content,0,300)}}</td>
                                        <td data-checkbox="true">{{($l_n->type==0)?'Toàn trường':(($l_n->type)==1?'Theo khối':(($l_n->type==2)?'Theo lớp':'Từng cá nhân'))}}</td>
                                        <td data-sortable="true">{{$l_n->article->name}}</td>
                                        <td>
                                            <a href="admin/news/edit_news/{{$l_n->id}}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                                        </td>

                                        <td>
                                            <a href="admin/news/xoa/{{$l_n->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                        </td>
                                    </tr>
                                @endforeach
                                
                                </tbody>
                            </table>
                            <ul class="pagination" style="float: right;">
                                @if($news->currentPage()!=1)
                                <li><a href="{{str_replace('/?','?',$news->url($news->currentPage()-1))}}"><<</a></li>
                                @endif
                                @for($i=1;$i<=$news->lastPage();$i=$i+1   )
                                <li class="{{(($news->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$news->url($i))}}">{{$i}}</a></li>
                                @endfor
                                @if($news->currentPage()!=$news->lastPage())
                                <li><a href="{{str_replace('/?','?',$news->url($news->currentPage()+1))}}">>></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>

@endsection