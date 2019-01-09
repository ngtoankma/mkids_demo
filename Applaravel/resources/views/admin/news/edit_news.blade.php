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
                        <div class="panel-heading">Sửa Thông Tin Bài Đăng </div>
                        <div class="panel-body">

                            <form action="admin/news/edit_news/{{$news->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tiêu đề</label>
                                        <input type="text" class="form-control"  name="title" value="{{$news->title}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Nội dung bài đăng</label>
                                        <textarea type="text" class="form-control"  name="content" value="" required="">{{$news->content}}</textarea>
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
                                     
                                <button type="submit" class="btn btn-primary" name="submit">Cập nhật bài đăng</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection