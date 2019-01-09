 @extends('admin.layout.index')
 @section('content')

          
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/comment/list_comment">Danh sách bình luận</a></li>


                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Quản lý bình luận</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">
                            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                <thead>
                                    <tr>                                
                                        <th data-sortable="true">ID</th>
                                        <th data-sortable="true">UserID</th>
                                        <th data-sortable="true">Content</th>
                                        {{-- <th data-sortable="true">ParentID</th> --}}
                                        <th data-sortable="true">ID bài viết</th>
                                        <th data-sortable="true">Chi Tiết</th>
                                        <th data-sortable="true">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($Comment as $l_C)
                                    <tr style="height: 300px;">
                                        <td data-checkbox="true">{{$l_C->id}}</td>
                                        <td data-checkbox="true">{{$l_C->user_id}}<a href="#"></a></td>
                                        <td data-checkbox="true"><a href="admin/news/info_news/{{$l_C->article_id}}">{{$l_C->content}}</a></td>
                                        {{-- <td data-sortable="true">{{$l_C->parent_id}}</td> --}}
                                        <td data-sortable="true">{{$l_C->article_id}}</td>
                                        <td>
                                            <a href="admin/comment/details_comment/{{$l_C->id}}}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                                        </td>
                                        <td>
                                            <a href="admin/comment/xoa/{{$l_C->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
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

@endsection