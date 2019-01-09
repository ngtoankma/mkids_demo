 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/member/list_member">Danh sách học sinh</a></li>
                    <li class="active"><a href="admin/member/add_member">Thêm học sinh</a></li>

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
                        <div class="panel-heading">Thêm Học Sinh</div>
                        <div class="panel-body">

                            <form action="admin/member/add_member" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control"  name="name" value="" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Birthday</label>
                                        <input type="text" class="form-control"  name="birthday" value="" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Height</label>
                                        <input type="text" class="form-control"  name="height" value="" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Weight(Kg)</label>
                                        <input type="text" class="form-control"  name="weight" value="" required="">
                                    </div>

                                    <div class="form-group">
                                        <label>Ảnh đại diện</label>
                                        <input type="file" name="images">    
                                    </div>

                                </div>
                                <div class="col-md-6">

                                    
                                    <div class="form-group">
                                        <label>Class</label>
                                         <select class="form-control" name="class_id">
                                             @foreach($classSchool as $cs)
                                             <option value="{{$cs->id}}">{{$cs->name}}</option>
                                             @endforeach
                                         </select>

                                    </div>

                                
                                    <div class="form-group">
                                        <label>Mô tả chi tiết</label>
                                        <textarea class="form-control" rows="3" name="description" value=""></textarea>
                                    </div>

                                  

                                </div>

                                <button type="submit" class="btn btn-primary" name="submit">Thêm học sinh</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection