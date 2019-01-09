 @extends('admin.layout.index')
 @section('content')
                   
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active"><a href="admin/menu/list_menu">Danh sách thực đơn</a></li>
                    <li class="active"><a href="admin/menu/add_menu">Thêm thực đơn</a></li>

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

                            <form action="admin/menu/add_menu" method="post" enctype="multipart/form-data" role="form">
                                <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>TIêu đề</label>
                                        <input type="text" class="form-control"  name="title" value="" required="">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Danh sách món ăn</label>
                                        @foreach($list_menu as $key)
                                        <div class="radio">
                                            <label>
                                      
                                                
                                                <input type="checkbox" name="list[]" id="optionsRadios2" value="{{$key->id}}">{{$key->title}}

                                            </label>
                                        </div>
                                        @endforeach

                                        

                                    </div>
                                    <div class="form-group">
                                        <label>Phạm vi</label>
                                        <select class="form-control" id='tp' name ='typeSchool' onChange="getcbChild();">
                                            <option value="0" >Toàn Trường</option>
                                            <option value ='1' >Khối</option>
                                            <option value ='2' >Lớp</option>

                                        </select>
                                            <div class="form-group" id="comboChild">
                                                
                                            </div>
                                            <script>
                                                  getcbChild();// mỗi lần Form load thì cho nó chạy cái này để khi đảo lộn vị trí của thằng thành phố thì nó vẫn chạy đúng.
                                                  function getcbChild(){
                                                        var getValue = document.getElementById("tp").value;            
                                            if(getValue == "1"){
                                            document.getElementById("comboChild").innerHTML = 
                                            '<label>Khối</label><select class="form-control" name="group_id">'
                                            <?php foreach($group as $gr): ?>+
                                            '<option value="{{$gr->id}}">{{$gr->name}}</option>'
                                             <?php endforeach?>+'</select>';
                                            }
                                            else if(getValue == "2"){
                                            document.getElementById("comboChild").innerHTML = '<label>Lớp</label><select class="form-control" name="group_id">'
                                            @foreach($classSchool as $gr)+
                                            '<option value="{{$gr->id}}">{{$gr->name}}</option>'
                                            @endforeach
                                            +'</select>';
                                            }
                                            else
                                                 document.getElementById("comboChild").innerHTML = "";
                                            }
                                        </script>
                                    </div>
                                    

                                    

                                    

                                    
                                </div>
                                <div class="col-md-6">
                                     <div class="form-group">
                                        <label>Loại thực đơn</label>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=0>Sáng
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=1 checked>Trưa
                                            </label>
                                        </div>
                                         <div class="radio">
                                            <label>
                                                <input type="radio" name="type" id="optionsRadios2" value=2 checked>Chiều
                                            </label>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label>Ảnh Minh họa</label>
                                        <input type="file" name="images">    
                                    </div>

                                    
                                   

                                
                                    <div class="form-group">
                                        <label>Mô tả chi tiết</label>
                                        <textarea id="editor1" class="form-control" rows="3" name="description" value=""></textarea>
                                    </div>

                                  

                                </div>

                                <button type="submit" class="btn btn-primary" name="submit">Thêm thực đơn</button>
                                <button type="reset" class="btn btn-default" name="reset">Làm mới</button>


                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->

    
@endsection