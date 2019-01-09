@extends('admin.layout.index')
@section('content')
                  
           <div class="row">
               <ol class="breadcrumb">
                   <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                   <li class="active"><a href="admin/menu/list_menu">Danh sách thực đơn</a></li>
                   <li class="active"><a href="admin/menu/add_menu">Chi tiết thực đơn</a></li>

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
                       <div class="panel-heading">Chi tiêt thực đơn</div>
                       <div class="panel-body">

                           <form action="admin/menu/add_menu" method="post" enctype="multipart/form-data" role="form">
                               <input type="hidden" name="_token" value="{{csrf_token()}}">
                               <div class="col-md-6">
                                   <div class="form-group">
                                       <label>TIêu đề</label>
                                       <text type="text" class="form-control"  name="title" value="" required="">{{$menu->title}}</text>
                                   </div>
                                   
                                   <div class="form-group">
                                       <label>Danh sách món ăn</label><br>
                                       @foreach($menu->listMenu as $row)
                                       <b>- {!!$row->title!!}  </b>
                                       <p> {!!$row->description!!}  </p>
                                    
                                        @endforeach

                                       

                                   </div>
                                  

                                   

                                   

                                   
                               </div>
                               <div class="col-md-6">
                                    <div class="form-group">
                                            <label>Tổng số xuất</label>
                                            <p>{{ count($menu->menuRef)}}
                                        </div>
                                    <div class="form-group">
                                        
                                       <label>Loại thực đơn</label>
                                       <div class="radio">
                                           <label>
                                               <input checked type="radio" name="type" id="optionsRadios2" value=0>{{($menu->type)==0?'Sáng':(($menu->type==1)?'Trưa':'Chiều')}} 
                                           </label>
                                       </div>
                                       

                                   </div>
                                   <div class="form-group">
                                       <label>Ảnh Minh họa</label>
                                       <input type="file" name="images">    
                                   </div>

                                   
                                  

                               
                                   <div class="form-group">
                                       <label>Mô tả chi tiết</label>
                                       <p >{!!$menu->description!!}</p>
                                   </div>

                                 

                               </div>

                              


                           </form>
                       </div>
                   </div>
               </div><!-- /.col-->
           </div><!-- /.row -->

   
@endsection