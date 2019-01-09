 @extends('admin.layout.index')
 @section('content')
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/Notification/list_noti">Danh sách thông báo</a></li>
                    <li class="active"><a href="admin/Notification/edit_noti/{{$notification->id}}">Sửa thông báo</a></li>
                    
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
                        <div class="panel-heading">Sửa Thông Báo</div>
                        <div class="panel-body">

                            <form action="admin/Notification/edit_noti/{{$notification->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tiêu đề</label>
                                        <input type="text" class="form-control"  name="name" value="{{$notification->name}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Thời gian bắt đầu</label>
                                        <input type="date" class="form-control"  name="start_time" value="{{$notification->start_time}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Nội dung thông báo</label>
                                        <input type="text" class="form-control"  name="content" value="{{$notification->content}}" required="">
                                    </div>
                                     
                                </div>
                                <div class="col-md-6">
                                    
                                     <div class="form-group">
                                        <label>Phạm vi</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=3 {{(($notification->type)==3)?'checked':''}}>Cá nhân
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=2 {{(($notification->type)==2)?'checked':''}}>Theo lớp
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=1 {{(($notification->type)==1)?'checked':''}}>Theo khối
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=0 {{(($notification->type)==0)?'checked':''}}>Toàn trường
                                            </label>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=3 {{(($notification->status)==3)?'checked':''}}>Đã gửi
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=2 {{(($notification->status)==2)?'checked':''}}>Phê duyệt
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=1 {{(($notification->status)==1)?'checked':''}}>Chờ phê duyệt
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=0 {{(($notification->status)==0)?'checked':''}}>Nháp
                                            </label>
                                    </div>
                                </div>

                                </div>
                               
                                <button type="submit" class="btn btn-primary" name="submit">Cập nhập Thông Báo</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection