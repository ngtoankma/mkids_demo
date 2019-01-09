 @extends('admin.layout.index')
 @section('content')
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/Notification/list_noti">Danh sách thông báo</a></li>
                    <li class="active"><a href="admin/Notification/add_noti">Thêm thông báo</a></li>
                    
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
                        <div class="panel-heading">Thêm Thông Báo</div>
                        <div class="panel-body">

                            <form action="admin/Notification/add_noti" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tiêu đề</label>
                                        <input type="text" class="form-control"  name="name" value="" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Thời gian bắt đầu</label>
                                        <input type="date" class="form-control"  name="start_time" value="" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Nội dung thông báo</label>
                                        <textarea id="editor1" type="text" class="ckeditor form-control"  name="content" value="" required="" row='5'></textarea>
                                    
                                </div>
                                     
                                </div>
                                <div class="col-md-6">
                                    
                                     <div class="form-group">
                                        <label>Phạm vi</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=3>Cá nhân
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=2>Theo lớp
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=1>Theo khối
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=0 checked>Toàn trường
                                            </label>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                
                                       
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=1>Chờ phê duyệt
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=0 checked>Nháp
                                            </label>
                                    </div>
                                </div>

                                </div>
                               
                                <button type="submit" class="btn btn-primary" name="submit">Thêm Thông Báo</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection