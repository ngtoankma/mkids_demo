 @extends('admin.layout.index')
 @section('content')

          
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/classSchool/list_class">Danh sách khói</a></li>


                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Quản lý khối</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">
                            <a href="admin/group/create" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm khối</a>                
                            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                <thead>
                                    <tr>                                
                                        <th data-sortable="true">ID</th>
                                        <th data-sortable="true">Tên khối</th>
                                        <th data-sortable="true">Mô tả</th>
                                        <th data-sortable="true">Trường học</th>
                                        <th data-sortable="true">Trạng thái</th>

                                        <th data-sortable="true">Sửa</th>
                                        <th data-sortable="true">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($group as $l_m)
                                    <tr style="height: 300px;">
                                        <td data-checkbox="true">{{$l_m->id}}</td>
                                        <td data-checkbox="true">{{$l_m->name}}<a href="#"></a></td>
                                        <td data-checkbox="true"><a href="admin/classSchool/userClass/{{$l_m->id}}">{{$l_m->description}}</a></td>
                                        <td data-sortable="true">{{$l_m->schoolGroup->name}}</td>
                                        <td data-sortable="true">{{(($l_m->status)==0)?'Không Hoạt động':'Hoạt động'}}</td>
                                        <td>
                                            <a href="{!!route('group.edit',$l_m->id)!!}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                                        </td>

                                        <td>
                                            <a href="admin/classSchool/xoa/{{$l_m->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                        </td>
                                    </tr>
                                @endforeach
                                
                                </tbody>
                            </table>
                            <ul class="pagination" style="float: right;">
                                @if($group->currentPage()!=1)
                                <li><a href="{{str_replace('/?','?',$group->url($group->currentPage()-1))}}"><<</a></li>
                                @endif
                                @for($i=1;$i<=$group->lastPage();$i=$i+1   )
                                <li class="{{(($group->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$group->url($i))}}">{{$i}}</a></li>
                                @endfor
                                @if($group->currentPage()!=$group->lastPage())
                                <li><a href="{{str_replace('/?','?',$group->url($group->currentPage()+1))}}">>></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>


@endsection