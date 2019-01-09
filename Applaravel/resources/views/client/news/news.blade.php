@extends('client/home/index')

@section('name')
  <ul >
<li><a href="home">Trang chủ</a></li>
<li><a href="home/info">Giới thiệu</a></li>
<li class="current"><a href="home/list">Tin tức</a></li>
<li  ><a href="home/lienhe">Liên hệ</a></li>
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
        <h4 class="first" style="
        padding-top: 10px;">{{$news->title}}</h4>
        <p><span style="font-size: 16px">{{$news->article->name}} </span ><span> {{$news->updated_at}}</span></p>
        
        <p>{!!$news->content!!}</p>
        <b>Call toll-free: 877 000 0000<br>
        Call toll-free: 866 000 0000<br>
        Toll-free fax: 877 000 0000</b>
          <hr>
        <h4 style="
        margin-top: 0px;
        margin-bottom: 0px;
    ">Bình Luận</h4>
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                  @foreach ($Comment as $item)
                      
                    <div class="panel panel-white post panel-shadow" style="
                    padding-top: 0px;
                ">
                        <div class="post-heading">
                            <div class="pull-left image">
                                <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image" style=" height: 50px; ">
                            </div>
                            <div class="pull-left meta">
                                <div class="title h5">
                                    <a href="#"><b style="padding-left: 5px;">{{$item->User->name}}</b></a>
                                   
                                </div>
                                <h6 class="text-muted time">{{$item->updated_at}}</h6>
                            </div>
                        </div> 
                        <div class="post-description"> 
                            <p>{!!$item->content!!}</p>
                            <div class="stats">
                                <a href="#" class="btn btn-default stat-item">
                                    <i class="fa fa-thumbs-up icon"></i>2
                                </a>
                                <a href="#" class="btn btn-default stat-item">
                                    <i class="fa fa-thumbs-down icon"></i>12
                                </a>
                            </div>
                        </div>
                    </div>
                    <hr>
                  @endforeach
                  <div aria-label="Page navigation">
                    <ul class="pagination">
                        {!! $Comment->links()!!}
                    </ul>
                </div>
                  @can('Comment')
                  <form method="post" action="home/news/{{$news->id}}">
                    {{ csrf_field() }}
                      <div class="form-group">
                          <textarea class="form-control" name="content" required="" placeholder="Mời bạn để lại bình luận"></textarea>
                      </div>
                      <div class="form-group">
                          <button type="submit" name="submit"  class="btn btn-default">Bình luận</button>
                      </div>
                  </form>
                  @endcan

                </div>

            </div>
        </div>
       
    </div>
  </div>
</div>
  @endsection
