@extends('client/home/index')

@section('name')

  <ul>
<li><a href="home">Trang chủ</a></li>
<li><a href="home/info">Giới thiệu</a></li>
<li><a href="home/list">Tin tức</a></li>
<li ><a href="home/lienhe">Liên hệ</a></li>
<li  class="current"><a href="home/menu">Thực đơn</a></li>

<li><a href="home/noti">Thông báo</a></li>
@if(Auth::check())
{{-- <li>{{Auth::User()->name}}</li> --}}

<li><a href="admin/logout">Đăng xuất</a></li>

@endif
@if(!(Auth::check()))

<li><a href="admin/login">Đăng nhập</a></li>

@endif

</ul>
</div>
@endsection


@section('content')
<div class="content">
  <div>
    <div> <img style="
      width: 980px;
  " src="client_asset/images/2.jpg" alt=""> </div>
    <div>
        @include('client/news/list')
      <div id="contact">
        <h2 class="first">Thực đơn</h2>
      
        <hr>
            <h3><a href="">{{$l_u->title}}</a></h3>
            
            <p>Mô tả: 
                {!!$l_u->description!!}
            </p>
            <p>Áp dụng:  {{($l_u->type)==0?'Sáng':(($l_u->type==1)?'Trưa':'Chiều')}} </p>
            <p>Trạng thái:
     {{(($l_u->status)==1)?'Không hoạt động':'Hoạt động'}} 
            </p>
            <p>Số xuất: 
              {{count($l_u->menuRef)}}
            </p>
            <h4 style="margin-top: 10px;margin-bottom: 10px;">Danh sách món ăn</h4>   
            <p>
                <ul>
                   
                @foreach($l_u->listMenu as $row)
                <p>- {!!$row->title!!}  </p>
                <p>- {!!$row->description!!}  </p>
             
                 @endforeach
                </ul>
              </p>                            
            

        </tr>


  
      </div>
    </div>
  </div>
</div>
  @endsection
