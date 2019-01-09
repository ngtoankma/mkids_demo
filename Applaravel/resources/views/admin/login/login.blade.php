<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Đăng nhập</title>
        <base href="{{asset('')}}">
        <link href="admin_asset/css/bootstrap.min.css" rel="stylesheet">
        <link href="admin_asset/css/datepicker3.css" rel="stylesheet">
        <link href="admin_asset/css/styles.css" rel="stylesheet">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="row">
            <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    @if(session('thongbao'))
                        <div class="alert alert-danger" >{{session('thongbao')}}</div>
                        @endif
                    <div class="panel-heading">Đăng nhập hệ thống quản trị</div>
                    <div class="panel-body">
                        <form action="admin/login" method="post" enctype="multipart/form-data" role="form" >
                            <input type="hidden" name="_token" value="{{csrf_token()}}">
                                <div class="form-group">
                                        @if($errors->has('email'))
                                        <div class="alert alert-danger">{{$errors->first('email')}}!</div>
                                    @endif
                                    <input class="form-control" placeholder="Tài khoản E-mail" name="email" type="email" value="{{old('email')}}" >
                                </div>
                                <div class="form-group">
                                        @if($errors->has('password'))
                                        <div class="alert alert-danger">{{$errors->first('password')}}!</div>
                                        @endif
                                    <input class="form-control" placeholder="Mật khẩu" name="password" type="password" value="{{old('password')}}" >
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="check" type="checkbox" value="Remember Me">Ghi nhớ
                                    </label>
                                </div>
                                <br/>
                                <input type="submit" name="submit" value="Đăng nhập" class="btn btn-primary">
                                <input type="reset" name="resset" value="Làm mới" class="btn btn-primary" />                            
                            
                        </form>
                    </div>
                </div>
            </div><!-- /.col-->
        </div><!-- /.row -->    



        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/chart.min.js"></script>
        <script src="js/chart-data.js"></script>
        <script src="js/easypiechart.js"></script>
        <script src="js/easypiechart-data.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script>
            !function ($) {
                $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                    $(this).find('em:first').toggleClass("glyphicon-minus");
                });
                $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
            }(window.jQuery);

            $(window).on('resize', function () {
                if ($(window).width() > 768)
                    $('#sidebar-collapse').collapse('show')
            })
            $(window).on('resize', function () {
                if ($(window).width() <= 767)
                    $('#sidebar-collapse').collapse('hide')
            })
        </script>   
    </body>

</html>
