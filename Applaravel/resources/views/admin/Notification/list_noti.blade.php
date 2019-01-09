 @extends('admin.layout.index')
 @section('content')

          
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/Notification/list_noti">Danh sách thông báo</a></li>

                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Quản lý Thông Báo</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">
                            <a href="admin/Notification/add_noti" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm thông báo mới</a>                
                            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                <thead>
                                    <tr>                                
                                        <th data-sortable="true">ID</th>
                                        <th data-sortable="true">Tên thông báo</th>
                                        <th data-sortable="true">Phạm vi</th>
                                        <th data-sortable="true">Nội dung</th>
                                        <th data-sortable="true">Thời gian bắt đầu</th>
                                        <th data-sortable="true">Người tạo</th>
                                        <th data-sortable="true">Trạng thái</th>
                                        <th data-sortable="true">Sửa</th>
                                        <th data-sortable="true">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($notification as $l_n)
                                    <tr style="height: 300px;">
                                        <td data-checkbox="true">{{$l_n->id}}</td>
                                        <td data-checkbox="true"><a href="admin/Notification/send_noti/{{$l_n->id}}">{{$l_n->name}}</a></td>
                                        <td data-sortable="true">{{($l_n->type==0)?'Toàn trường':(($l_n->type)==1?'Theo khối':(($l_n->type==2)?'Theo lớp':'Từng cá nhân'))}}</td>
                                        <td data-sortable="true">{{$l_n->content}}</td>
                                        <td data-sortable="true">{{$l_n->start_time}}</td>
                                        <td data-sortable="true">{{$l_n->notification->name}}</td>
                                        <td data-checkbox="true">{{($l_n->status==0)?'Nháp':(($l_n->status==1)?'Chờ phê duyệt':'Phê duyệt')}}</td>

                                        <td>
                                            <a href="admin/Notification/edit_noti/{{$l_n->id}}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                                        </td>

                                        <td>
                                            <a href="admin/Notification/xoa/{{$l_n->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                        </td>
                                    </tr>
                                @endforeach
                                
                                </tbody>
                            </table>
                            <ul class="pagination" style="float: right;">
                                @if($notification->currentPage()!=1)
                                <li><a href="{{str_replace('/?','?',$notification->url($notification->currentPage()-1))}}"><<</a></li>
                                @endif
                                @for($i=1;$i<=$notification->lastPage();$i=$i+1   )
                                <li class="{{(($notification->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$notification->url($i))}}">{{$i}}</a></li>
                                @endfor
                                @if($notification->currentPage()!=$notification->lastPage())
                                <li><a href="{{str_replace('/?','?',$notification->url($notification->currentPage()+1))}}">>></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>

@endsection