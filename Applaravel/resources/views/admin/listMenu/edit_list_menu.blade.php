@extends('admin.layout.index')
@section('content')
   
<div class="row">
<ol class="breadcrumb">
   <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
   <li class="active"><a href="admin/member/list_member">Danh sách các món ăn</a></li>
   <li class="active"><a href="admin/member/add_member">Sửa món ăn</a></li>

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
      <div class="panel-heading">Thêm thực đơn</div>
      <div class="panel-body">

            <form action="admin/monan/edit_list_menu/{{$menu->id}}" method="post" enctype="multipart/form-data" role="form">
               <input type="hidden" name="_token" value="{{csrf_token()}}">
               <div class="col-md-6">
                  <div class="form-group">
                        <label>TIêu đề</label>
                        <input type="text" class="form-control"  name="title" value="{{$menu->title}}" required="">
                  </div>  
                  <div class="form-group">
                        <label>Ảnh Minh họa</label>
                        <input type="file" name="images">    
                  </div>                 
               </div>
               <div class="col-md-6">
                  <div class="form-group">
                        <label>Trạng thái</label>
                        <div class="radio">
                           <label>
                              <input type="radio" name="status" id="optionsRadios2" value=0 {{(($menu->status)==0)?'Checked':''}}>Hoạt động
                           </label>
                        </div>
                        <div class="radio">
                           <label>
                              <input type="radio" name="status" id="optionsRadios2" value=1  {{(($menu->status)==1)?'Checked':''}}>Không hoạt động
                           </label>
                        </div>
 

                  </div>
                

                  
                  

               
                  <div class="form-group">
                        <label>Mô tả chi tiết</label>
                        <textarea id='editor1' class="form-control" rows="3" name="description" value="">{{$menu->description}}</textarea>
                  </div>

                  

               </div>

               <button type="submit" class="btn btn-primary" name="submit">Sua món ăn</button>
               <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


            </form>
      </div>
   </div>
</div><!-- /.col-->
</div><!-- /.row -->


@endsection