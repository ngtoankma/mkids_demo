 @extends('admin.layout.index')
 @section('content')

          
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                     <li class="active"><a href="admin/user/list_user">Danh sách tài khoản</a></li>

                    
                    <li class="active"> 
                        
                    </li>
                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Quản lý User</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">

                            <a href="admin/user/add_user" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm user mới</a>
                            <a href="admin/user/list_user/0" class="btn btn-success" style="margin: 10px 0 20px 130px; position: absolute;">Hiệu trưởng</a>  
                            <a href="admin/user/list_user/2" class="btn btn-success" style="margin: 10px 0 20px 240px; position: absolute;">Danh sách phụ huynh</a>
                            <a href="admin/user/list_user/1" class="btn btn-success" style="margin: 10px 0 20px 410px; position: absolute;">Danh sách cô giáo</a>
                            <a href="admin/user/list_user/3" class="btn btn-danger" style="margin: 10px 0 20px 560px; position: absolute;">Danh sách tài khoản bị khóa</a>               
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
                                        @if(isset($type))
                                        <th data-sortable="true">Kich hoat</th>
                                        @endif
                                        @if(!isset($type))
                                        <th data-sortable="true">Xoa</th>
                                        @endif

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($User as $l_u)
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
                                                @if(!isset($type))
                                            <a href="admin/user/xoa/{{$l_u->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                                @endif
                                                @if(isset($type))
                                            <a href="admin/user/check/{{$l_u->id}}"><span><svg class="glyph stroked checkmark" style="width: 20px;height: 20px;"><use xlink:href="#stroked-checkmark"/></svg></span></a>
                                                @endif
                                        </td>
                                    </tr>
                                @endforeach
                                
                                </tbody>
                            </table>
                            <ul class="pagination" style="float: right;">
                                @if($User->currentPage()!=1)
                                <li><a href="{{str_replace('/?','?',$User->url($User->currentPage()-1))}}"><<</a></li>
                                @endif
                                @for($i=1;$i<=$User->lastPage();$i=$i+1   )
                                <li class="{{(($User->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$User->url($i))}}">{{$i}}</a></li>
                                @endfor
                                @if($User->currentPage()!=$User->lastPage())
                                <li><a href="{{str_replace('/?','?',$User->url($User->currentPage()+1))}}">>></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>


@endsection

