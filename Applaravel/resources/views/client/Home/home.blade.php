@extends('client/home/index')

@section('name')

  <ul>
<li class="current"><a href="home">Trang chủ</a></li>
<li><a href="home/info">Giới thiệu</a></li>
<li><a href="home/list">Tin tức</a></li>
<li><a href="home/lienhe">Liên hệ</a></li>
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
<div id="content">
<div>
  <div>
    <h1>Trường đặc biệt</h1>
    <p>"Non sông Việt Nam có trở nên vẻ vang hay không, dân tộc Việt Nam có được sánh vai các cường quốc năm châu hay không, chính là nhờ một phần lớn ở công lao học tập của các cháu"

</p>
    <h2>They are Special</h2>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequeat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
    <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis quifacit eorum claritatem. Investigationes demonstraverunt lectores legere me luis quod ii legunt saepius.</p>
  </div>
</div>
</div>
@endsection

