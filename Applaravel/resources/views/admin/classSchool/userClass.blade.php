 @extends('admin.layout.index')
 @section('content')

          
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/classSchool/list_class">Danh sách lớp</a></li>
                    <li class="active"><a href="admin/classSchool/userClass/{{$classSchool->id}}">Danh sách cửa lớp {{$classSchool->name}}
                    </li>
                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Danh sách lớp {{$classSchool->name}}</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">
                            <a href="admin/classSchool/userClass/{{$classSchool->id}}/1" class="btn btn-success" style="margin: 10px 0 20px 0; position: absolute;">Danh sách học sinh</a>
 
                            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                 <thead>
                                    <tr>                                
                                        <th data-sortable="true">ID</th>
                                        <th data-sortable="true">Tên</th>
                                        <th data-sortable="true">Giới tính</th>
                                        <th data-sortable="true">Email</th>
                                        <th data-sortable="true">Số điện thoại</th>
                                        <th data-sortable="true">Vị trí</th>
                                        <th data-sortable="true">Chi Tiết</th>
                                        <th data-sortable="true">Sửa</th>
                                        <th data-sortable="true">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($data as $lu)
                                @foreach($lu as $l_u)

                                
                                    <tr style="height: 300px;">
                                        <td data-checkbox="true">{{$l_u->id}}</td>
                                        <td data-checkbox="true">{{$l_u->name}}<a href="#"></a></td>
                                        <td data-checkbox="true">
                                            {{$l_u->gender==0?'Nữ':'Nam'}}
                                        </td>
                                        <td data-sortable="true">{{$l_u->email}}</td>
                                        <td data-sortable="true">
                                  {{$l_u->msisdn}}

                                        </td>                               
                                        <td data-sortable="true">
                                  {{($l_u->type)==0?'Hiệu Trưởng':(($l_u->type==1)?'Giáo viên':'Phụ huynh')}} 
                                        </td>

                                   <td>
                                            <a href="admin/user/info_user/{{$l_u->id}}"><span><svg class="glyph stroked eye" style="width: 20px;height: 20px;"><use xlink:href="#stroked-eye"/></svg></span></a>
                                        </td>
                                        

                                        <td>
                                            <a href="admin/user/edit_user/{{$l_u->id}}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                                        </td>

                                        <td>
                                            <a href="admin/user/xoa/{{$l_u->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                        </td>
                                    </tr>
                                @endforeach
                                @endforeach
                                
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>


@endsection

