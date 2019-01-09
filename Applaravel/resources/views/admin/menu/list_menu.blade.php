 @extends('admin.layout.index')
 @section('content')

          
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                     <li class="active"><a href="admin/menu/list_menu">Danh sách thực đơn</a></li>

                    
                    <li class="active"> 
                        
                    </li>
                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Quản lý thực đơn</h1>
                </div>
            </div><!--/.row-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">                   
                        <div class="panel-body" style="position: relative;">

                            <a href="admin/menu/add_menu" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm mới</a>
                            <a href="admin/menu/delete" class="btn btn-danger" style="margin: 10px 0 20px 100px; position: absolute;">Thực đơn bị khóa</a>

                                           
                            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                                <thead>
                                    <tr>                                
                                        <th data-sortable="true">ID</th>
                                        <th data-sortable="true">Tiêu đề</th>
                                        <th data-sortable="true">Chi tiết</th>
                                        <th data-sortable="true">Loại thực đơn</th>
                                        <th data-sortable="true">Trạng thái</th>
                                        <th data-sortable="true">Món ăn</th>

                                        <th data-sortable="true">Tổng số suất</th>
                                        <th data-sortable="true">Chi tiết</th>
                                        <th data-sortable="true">Xóa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                @foreach($menu as $l_u )

                                    <tr style="height: 300px;">
                                        <td data-checkbox="true">{{$l_u->id}}</td>
                                        <td data-checkbox="true">{{$l_u->title}}<a href="#"></a></td>
                                        <td data-checkbox="true">
                                            {{ substr($l_u->description,0,350)}}
                                        </td>
                                        <td data-sortable="true"> {{($l_u->type)==0?'Sáng':(($l_u->type==1)?'Trưa':'Chiều')}} </td>
                                        <td data-sortable="true">
                                 {{(($l_u->status)==1)?'Không hoạt động':'Hoạt động'}} 
                                        </td>   
                                        <td data-checkbox="true">
                                            <ul>
                                               
                                            @foreach($l_u->listMenu as $row)
                                            <li> {{$row->title}}  </li>
                                             @endforeach
                                            </ul>
                                        </td>                            
                                        <td data-sortable="true">
                                            @foreach($data as $dt=>$valus)
                                                {{ ($dt==($l_u->id))? $valus:''  }}
                                            @endforeach
                                        </td>
                                        

                                        <td>
                                            <a href="admin/menu/info_menu/{{$l_u->id}}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                                        </td>

                                        <td>
                                            <a href="admin/menu/xoa/{{$l_u->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
                                        </td>
                                    </tr>


                                @endforeach
                                
                                </tbody>
                            </table>
                            <ul class="pagination" style="float: right;">
                                @if($menu->currentPage()!=1)
                                <li><a href="{{str_replace('/?','?',$menu->url($menu->currentPage()-1))}}"><<</a></li>
                                @endif
                                @for($i=1;$i<=$menu->lastPage();$i=$i+1   )
                                <li class="{{(($menu->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$menu->url($i))}}">{{$i}}</a></li>
                                @endfor
                                @if($menu->currentPage()!=$menu->lastPage())
                                <li><a href="{{str_replace('/?','?',$menu->url($menu->currentPage()+1))}}">>></a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>


@endsection

