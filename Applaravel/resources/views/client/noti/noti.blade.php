@extends('client/home/index')

@section('name')

  <ul>
<li><a href="home">Trang chủ</a></li>
<li><a href="home/info">Giới thiệu</a></li>
<li><a href="home/list">Tin tức</a></li>
<li ><a href="home/lienhe">Liên hệ</a></li>
<li ><a href="home/menu">Thực đơn</a></li>
<li  class="current"><a href="home/noti">Thông báo</a></li>
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
    <div> <img src="client_asset/images/baby.jpg" alt=""> </div>
    <div id="services">
     @include('client/news/list')
      <div id="aside"> <span class="first">Thông báo</span>
        <ul class="section">
            @foreach($data as $dataf) 
            @foreach($dataf as $key) 
            <a href="home/noti_info/{{$key->id}}"><b><h2>{{$key->name}}</h2></b></a>
        <p >{{ substr($key->content,0,150)}}</p>
        <p >Thời gian áp dụng: {{$key->start_time}}</p>
        <p style="margin-left: 400px;">{{$key->updated_at}}</p>
        <p style="margin-left: 400px;"><b>{{$key->notification->name}}</b></p>
        <hr/>
          @endforeach
          @endforeach
        </ul>



        {{-- <span>Common Special needs include:</span> <b>~ &nbsp;Challeger with learning</b> <b>~ &nbsp;Emotional and Behavioral Disorders</b> <b>~ &nbsp;Physical Disabilities</b> <b>~ &nbsp;Developmental Disorders</b> <span>Our Services</span>
        <div>
          <ol>
            <li>Speech and Language Pathology</li>
            <li>Audiology</li>
            <li>Psychological Services</li>
            <li>Physical Therapy</li>
            <li>Occupation Therapy</li>
            <li>Counseling Services</li>
            <li>Rehabilitation Counseling</li>
            <li>Orientation and Mobility Services</li>
          </ol>
          <ol>
            <li>School Social Work</li>
            <li>Assistive Technology Services</li>
            <li>Corrective Support Services</li>
            <li>Developmental Recreation Activities</li>
            <li>School Health Services</li>
            <li>Parent Counseling and Training</li>
            <li>Medical Services</li>
          </ol>
        </div> --}}
      </div>
    </div>
  </div>
</div>
  @endsection
