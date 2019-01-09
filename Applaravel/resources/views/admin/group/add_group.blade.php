 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/classSchool/list_class">Danh sách khối</a></li>
                    <li class="active"><a href="admin/classSchool/add_class">Thêm khối</a></li>


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
                        <div class="panel-heading"> Thêm khối</div>
                        <div class="panel-body">

                            <form action="{!!route('group.store')!!}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tên khối</label>
                                        <input type="text" class="form-control"  name="name" value="" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=0>Không kích hoạt
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="status" id="optionsRadios2" value=1 checked>Có kích hoạt
                                            </label>
                                        </div>

                                    </div>

                                </div>
                                
                                <div class="col-md-6">

                                    
                                    <div class="form-group">
                                        <label>Trường học</label>
                                         <select class="form-control" name="school_id">
                                             @foreach($school as $cs)
                                             <option value="{{$cs->id}}">{{$cs->name}}</option>
                                             @endforeach
                                         </select>

                                    </div>

                                
                                    <div class="form-group">
                                        <label>Mô tả chi tiết</label>
                                        <textarea class="form-control" rows="3" name="description" value=""></textarea>
                                    </div>

                                  

                                </div>

                                <button type="submit" class="btn btn-primary" name="submit">Thêm lớp</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection