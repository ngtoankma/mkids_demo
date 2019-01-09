@extends('admin.layout.index')
@section('content')


<div class="row">
<ol class="breadcrumb">
    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
    <li class="active"><a href="admin/monan/list_menu">Danh sách món ăn</a></li>

    
    <li class="active"> 
      
    </li>
</ol>
</div><!--/.row-->

<div class="row">
<div class="col-lg-12">
    <h1 class="page-header">Quản lý thực đơn <?php if(isset($data)){
      echo $data;
    } ?> </h1>
</div>
</div><!--/.row-->


<div class="row">
<div class="col-lg-12">
    <div class="panel panel-default">                   
      <div class="panel-body" style="position: relative;">

            <a href="admin/monan/add_list_menu" class="btn btn-primary" style="margin: 10px 0 20px 0; position: absolute;">Thêm mới</a>
            <a href="admin/monan/delete" class="btn btn-danger" style="margin: 10px 0 20px 100px; position: absolute;">Món ăn bị khóa</a>

                            
            <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                <thead>
                  <tr>                                
                        <th data-sortable="true">ID</th>
                        <th data-sortable="true">Tiêu đề</th>
                        <th data-sortable="true">Chi tiết</th>
                        <th data-sortable="true">Ảnh minh họa</th>
                        <th data-sortable="true">Trạng thái</th>
                        <th data-sortable="true">Sửa</th>
                        <th data-sortable="true">Xóa</th>

                  </tr>
                </thead>
                <tbody>
                @foreach($menu as $l_u )

                  <tr style="height: 300px;">
                        <td data-checkbox="true">{{$l_u->id}}</td>
                        <td data-checkbox="true">{{$l_u->title}}<a href="#"></a></td>
                        <td data-checkbox="true">
                            {{$l_u->description}}
                        </td>
                        <td data-sortable="true">  </td>
                        <td data-sortable="true">
                {{(($l_u->status)==1)?'Không hoạt động':'Hoạt động'}} 
                        </td>                               

                        

                        <td>
                            <a href="admin/monan/edit_list_menu/{{$l_u->id}}"><span><svg class="glyph stroked brush" style="width: 20px;height: 20px;"><use xlink:href="#stroked-brush"/></svg></span></a>
                        </td>

                        <td>
                            <a href="admin/monan/xoa/{{$l_u->id}}"><span><svg class="glyph stroked cancel" style="width: 20px;height: 20px;"><use xlink:href="#stroked-cancel"/></svg></span></a>
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

