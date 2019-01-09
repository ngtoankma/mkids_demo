 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/comment/details_comment">Chi tiết bình luận</a></li>
                    
                </ol>
            </div><!--/.row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        @if(count($errors)>0)
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
                        @endif
                        <div class="panel-heading">Thông tin chi tiết comment{{$Comment->name}} </div>
                        <div class="panel-body">

                            <form action="admin/comment/details_comment/{{$Comment->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>ID</label>
                                        <input type="text" class="form-control"  name="ID" value="{{$Comment->id}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>ID người binh luận</label>
                                        <input type="text" class="form-control"  name="user_id" value="{{$Comment->user_id}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Nội dung bình luận</label>
                                        <input type="text" class="form-control"  name="content" value="{{$Comment->content}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>ID bình luận gốc</label>
                                        <input type="text" class="form-control"  name="parent_id" value="{{$Comment->parent_id}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>ID bài viết</label>
                                        <input type="text" class="form-control"  name="article_id" value="{{$Comment->article_id}}" required="">
                                    </div>
                                    
                                     <input type="button" value="Quay lại trang trước" onclick="history.back(-1)" >

                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection