 @extends('admin.layout.index')
 @section('content')
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                     <li class="active"><a href="admin/Notification/list_noti">Danh sách thông báo</a></li>
                    <li class="active"><a href="admin/Notification/send_noti/{{$notification->id}}">Gửi thông báo</a></li>
                    
                </ol>
            </div><!--/.row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                      <!--   @if(count($errors)>0)
                        <div class="alert alert-danger">
                            @foreach($errors->all() as $err)
                            {{$err}}<br>
                            @endforeach
                        </div>
                        @endif
                        @if(session('thongbao'))
                        <div class="alert alert-success">
                            {{session('thongbao')}}
                        <div>
                        @endif -->
                        <div class="panel-heading">Gửi Thông Báo</div>
                        <div class="panel-body">

                            <form action="admin/Notification/send_noti/{{$notification->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tiêu đề</label>
                                        <Text type="text" class="form-control"  name="name" value="" required="">{{$notification->name}}</Text>
                                    </div>
                                    <div class="form-group">
                                        <label>Thời gian bắt đầu</label>
                                        <text type="date" class="form-control"  >{{$notification->start_time}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Nội dung thông báo</label>
                                        <p  name="content" value="" required="">{{$notification->content}}</p>
                                    </div>
                                     
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Người tạo</label>
                                        <text type="date" class="form-control"  >{{$notification->notification->name}}</text>
                                    </div>
                                     <div class="form-group">
                                        <label>Phạm vi</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" checked>{{($notification->type==0)?'Toàn trường':(($notification->type)==1?'Theo khối':(($notification->type==2)?'Theo lớp':'Từng cá nhân'))}}
                                            </label>
                                        </div>
                                        

                                    </div>
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" checked="">{{($notification->status==0)?'Nháp':($notification->status==1?'Chờ phê duyệt':'Phê duyệt')}}
                                            </label>
                                        </div>
                                        
                                </div>

                                </div>
                               
                                <button type="submit" class="btn btn-primary" name="submit">Gửi thông báo</button>
                                



                            </form>
                            <a href="admin/Notification/edit_noti/{{$notification->id}}"><button class="btn btn-primary">Sửa thông báo</button></a>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection