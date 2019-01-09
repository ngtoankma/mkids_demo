@extends('client/home/index')

@section('name')
  <ul>
<li><a href="home">Trang chủ</a></li>
<li><a href="home/info">Giới thiệu</a></li>
<li><a href="home/list">Tin tức</a></li>
<li  class="current"><a href="home/lienhe">Liên hệ</a></li>
<li><a href="home/menu">Thực đơn</a></li>

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
    <div> <img src="client_asset/images/calling.jpg" alt=""> </div>
    <div>
        @include('client/news/list')
      <div id="contact">
        <h4 class="first">Liên hệ với chúng tôi</h4>
        @foreach ($User as $item)
        <p>Tên: <a href="#">{{$item->name}}</a></p>
        <p>Chức vụ: <a href="#">{{$item->type==0?'Hiệu trưởng':'Giáo viên'}}</a></p>

        <p>E-mail: <a href="#">{{$item->email}}</a></p>
        <p>Gọi điện hoặc gửi e-mail cho chúng tôi để được trợ giúp về bất kỳ khía cạnh nào của trường học.</p>
        <b>Hotline: {{$item->msisdn}}<br>
          Địa chỉ: {{$item->address}}
        </b>
<hr>
        @endforeach

      </div>
    </div>
  </div>
</div>
  @endsection
