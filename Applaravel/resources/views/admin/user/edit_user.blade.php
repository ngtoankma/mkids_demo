 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                      <li class="active"><a href="admin/user/list_user">Danh sách tài khoản</a></li>
                    <li class="active"><a href="admin/user/edit_user/{{$User->id}}}">Sửa tài khoản</a></li>
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
                        <div class="panel-heading">Sửa thông tin User: {{$User->name}} </div>
                        <div class="panel-body">

                            <form action="admin/user/edit_user/{{$User->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tên User</label>
                                        <input type="text" class="form-control"  name="name" value="{{$User->name}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Mật khẩu</label>
                                        <input type="text" class="form-control"  name="password" value="{{$User->password}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Giới Tính</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="gender" id="optionsRadios2" value=1 {{(($User->gender)==1)?'checked':''}}>Nam
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input  type="radio" name="gender" id="optionsRadios2" value=0 {{(($User->gender)==0)?'checked':''}}>Nữ
                                            </label>
                                        </div>

                                    </div>


                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="text" class="form-control" name="email" value="{{$User->email}}" required="">
                                    </div>

                                    <div class="form-group">
                                        <label>Địa chỉ</label>
                                        <input type="text" class="form-control" name="address" value="{{$User->address}}" required="">
                                    </div>

                                    <div class="form-group">
                                        <label>Ảnh đại diện</label>
                                        <input type="file" name="images">    
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Facebook</label>
                                        <input type="text" class="form-control" name="facebook" value="{{$User->facebook}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <input type="text" class="form-control" name="msisdn" value="{{$User->msisdn}}" required="">
                                    </div>
                                    <div class="form-group">
                                        <label>Lớp</label>
                                        <select name="class_id" class="form-control" id="exampleFormControlSelect1">
                                            @foreach($classSchool as $cs)
                                          <option value="{{$cs->id}}">{{$cs->name}}</option>
                                          @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Lever user</label>
                                         <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios1" value=2 {{(($User->type)==2)?'checked':''}}>Phụ huynh
                                            </label>
                                        </div>
                                        @if(Auth::User()->type==0)

                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios1" value=1 {{(($User->type)==1)?'checked':''}}>Giáo viên
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=0 {{(($User->type)==0)?'checked':''}}>Admin
                                            </label>
                                        </div>
                                        @endif

                                    </div>

                                
                                    <div class="form-group">
                                        <label>Mô tả chi tiết</label>
                                        <textarea class="form-control" rows="3" name="description" value="{{$User->description}}"></textarea>
                                    </div>

                                  

                                </div>

                                <button type="submit" class="btn btn-primary" name="submit">Cập nhật</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection