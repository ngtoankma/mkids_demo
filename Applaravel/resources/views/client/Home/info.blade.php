@extends('client/home/index')

@section('name')

    <ul >
      <li><a href="home">Trang chủ</a></li>
      <li  class="current"><a href="home/info">Giới thiệu</a></li>
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

@endif</li>
    </ul>
  </div>
@endsection
  @section('content')
  <div class="content">
  <div>
    <div> <img src="client_asset/images/professionals.jpg" alt=""> </div>
    <div>
        @include('client/news/list')

      <div id="aside"> <span class="first">Đôi lời giới thiệu về trường Mầm non</span>
        <p>Nhà trường có 3 đảng viên, chiếm 10,7% tổng số cán bộ, giáo viên, nhân viên. Các chức vụ Hiệu trưởng, Phó Hiệu trưởng, Chủ tịch Công đoàn, Tổ trưởng Tổ chuyên môn đều do các đồng chí có kinh nghiệm tổ chức lãnh đạo quản lý và trình độ chuyên môn cao nắm giữ. Vì vậy công tác lãnh đạo, chỉ đạo của chi bộ đối với các mặt công tác trong nhà trường luôn đồng bộ, thống nhất và thuận lợi.</p>
        {{-- <span>We Have More Templates for You</span> --}}
        <p>Mỗi cán bộ, giáo viên, nhân viên nhà trường luôn gương mẫu về đạo đức, lối sống, về sự tận tâm, trách nhiệm trong công tác chăm sóc, giáo dục trẻ. Mỗi cô giáo, nhân viên trường mầm non Hương Sen luôn khắc ghi và thường xuyên phấn đấu thực hiện tâm nguyện của Bác "Vì lợi ích trăm năm thì phải trồng người". Học tập và làm theo tấm gương đạo đức Hồ Chí Minh là động lực, là niềm tin cho mỗi cá nhân và tập thể nhà trường..</p>
        {{-- <span>Be Part of Our Community</span>
        <p>Mỗi cán bộ, giáo viên, nhân viên nhà trường luôn gương mẫu về đạo đức, lối sống, về sự tận tâm, trách nhiệm trong công tác chăm sóc, giáo dục trẻ. Mỗi cô giáo, nhân viên trường mầm non Hương Sen luôn khắc ghi và thường xuyên phấn đấu thực hiện tâm nguyện của Bác "Vì lợi ích trăm năm thì phải trồng người". Học tập và làm theo tấm gương đạo đức Hồ Chí Minh là động lực, là niềm tin cho mỗi cá nhân và tập thể nhà trường.</p>
        <span>Template details</span>
        <p>Version 2<br>
          Website Template details, discussion and updates for this Special School Web Template.<br>
          Website Template design by Free Website Templates.<br>
          Please feel free to remove some or all the text and links of this page and replace it with your own About content.</p>
      </div> --}}
    </div>
  </div>
</div>

@endsection