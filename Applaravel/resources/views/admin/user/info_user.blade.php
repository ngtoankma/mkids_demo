 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                     <li class="active"><a href="admin/user/list_user">Danh sách tài khoản</a></li>
                    <li class="active"><a href="admin/user/info_user/{{$User->id}}">Thông tin chi tiết</a></li>
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
                        <div class="panel-heading">Thông tin chi tiết: {{$User->name}} </div>
                        <div class="panel-body">

                            <form action="admin/user/edit_user/{{$User->id}}" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Tên User</label>
                                        <text type="text" class="form-control"  name="name" value="" required="">{{$User->name}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Mật khẩu</label>
                                        <text class="form-control"  >{{$User->password}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Giới Tính</label>
                                                <text class="form-control"  >{{($User->gender==0)?'Nữ':'Nam'}}</text>
                                    </div>


                                    <div class="form-group">
                                        <label>Email</label>
                                        <text class="form-control" >{{$User->email}}</text>
                                    </div>

                                    <div class="form-group">
                                        <label>Địa chỉ</label>
                                        <text type="text" class="form-control" name="address" value="" required="">{{$User->address}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Lớp</label>
                                        <text type="text" class="form-control" name="address" value="" required="">{{$classSchool->name}}</text>
                                    </div>

                                    <div class="form-group">
                                        <label>Ảnh đại diện</label>
                                        @if(isset($User->image_path))
                                        <img src='admin_asset/images/users/{{$User->image_path}}'>
                                        @endif
                                        @if(!isset($User->image_path))
                                        <img src='admin_asset/images/users/nurse.jpg'>
                                        @endif
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Facebook</label>
                                        <text class="form-control" >{{$User->facebook}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <text  class="form-control">{{$User->msisdn}}</text>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Lever user</label>                                     
                                        <text class="form-control"> {{($User->type)==0?'Hiệu Trưởng':(($User->type==1)?'Giáo viên':'Phụ huynh')}} </text>
                                    </div>
                                
                                    <div class="form-group">
                                        <label>Mô tả chi tiết</label>
                                        <text class="form-control" rows="3" name="description" value="">{{$User->description}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                        <text class="form-control" rows="3" name="description" value="">{{($User->status==0)?'Bị khóa':'Kích hoạt'}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Thời gian tạo</label>
                                        <text class="form-control" rows="3" name="description" value="">{{$User->created_at}}</text>
                                    </div>
                                    <div class="form-group">
                                        <label>Thời gian cập nhập</label>
                                        <text class="form-control" rows="3" name="description" value="">{{$User->updated_at}}</text>
                                    </div>

                                  

                                </div>

                                


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection