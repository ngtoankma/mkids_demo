@extends('client/home/index')

@section('name')

  <ul>
<li><a href="home">Trang chủ</a></li>
<li><a href="home/info">Giới thiệu</a></li>
<li  class="current"><a href="home/list">Tin tức</a></li>
<li ><a href="home/lienhe">Liên hệ</a></li>
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
  <div id="blog">
    <div class="sidebar">
      <h2>Archives</h2>
      <h3 class="first"><a href="#">2011 <span>(60)</span></a></h3>
      <div>
        <p><a href="#">December <span>(1)</span></a></p>
        <p><a href="#">November <span>(11)</span></a></p>
        <p><a href="#">October <span>(3)</span></a></p>
        <p><a href="#">September <span>(8)</span></a></p>
        <p><a href="#">August <span>(2)</span></a></p>
        <p><a href="#">July <span>(3)</span></a></p>
        <p><a href="#">June </a></p>
        <p><a href="#">May <span>(8)</span></a></p>
        <p><a href="#">April <span>(7)</span></a></p>
        <p><a href="#">March <span>(7)</span></a></p>
        <p><a href="#">February <span>(10)</span></a></p>
        <p><a href="#">January <span>(1)</span></a></p>
      </div>
      <h3><a href="#">2010</a></h3>
      <h3><a href="#">2009</a></h3>
    </div>
    <div class="article">
      <ul>
      @foreach ($news as $item)
        <li class="first">
          <div class="section"> <a href="#"><img src="client_asset/images/man.jpg" alt=""></a> <span><a href="home/news/{{$item->id}}"><b>{{$item->article->name}}</b></a>
          </span> <span><a href="#">{{$item->updated_at}}</a></span> </div>
          <div>
            <h1><a href="home/news/{{$item->id}}">{{$item->title}}</a></h1>
            <p>{!! substr($item->content,0,230)!!}</p>
          </div>
        </li>    
        @endforeach
      </ul>
      <div id="paging">
        <ul>
            @if($news->currentPage()!=1)
            <li><a href="{{str_replace('/?','?',$news->url($news->currentPage()-1))}}"><<</a></li>
            @endif
            @for($i=1;$i<=$news->lastPage();$i=$i+1   )
            <li class="{{(($news->currentPage())==$i)?'active':''}}"><a href="{{str_replace('/?','?',$news->url($i))}}">{{$i}}</a></li>
            @endfor
            @if($news->currentPage()!=$news->lastPage())
            <li><a href="{{str_replace('/?','?',$news->url($news->currentPage()+1))}}">>></a></li>
            @endif
        </ul>
        
    </div>
  </div>

</div>
  @endsection
