 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/classSchool/list_class">Danh sách lớp</a></li>
                    <li class="active"><a href="admin/classSchool/edit_class/{{$classSchool->id}}">Sửa lớp</a></li>


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
                        <div class="panel-heading">Sửa thông tin lớp: </div>
                        <div class="panel-body">

                            <form action="admin/classSchool/edit_class/{{$classSchool->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control"  name="name" value="{{$classSchool->name}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>khối</label>
                                         <select class="form-control" name="group_id">
                                             @foreach($group as $cs)
                                             <option value="{{$cs->id}}">{{$cs->name}}</option>
                                             @endforeach
                                         </select>

                                    </div>
                                </div>
                                <div class="col-md-6">

                                    
                                    

                                
                                    <div class="form-group">
                                        <label>Mô tả chi tiết</label>
                                        <input type="type"class="form-control" rows="3" name="description" value="{{$classSchool->description}}"></input>
                                    </div>

                                  <button type="submit" class="btn btn-primary" name="submit">Cập nhật</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>

                                </div>

                                


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection