<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MKIDs</title>
        <base href="{{asset('')}}">

        <link href="admin_asset/css/bootstrap.min.css" rel="stylesheet">
        <link href="admin_asset/css/datepicker3.css" rel="stylesheet">
        <link href="admin_asset/css/styles.css" rel="stylesheet">
      

        <!--Icons-->
        <script src="admin_asset/js/lumino.glyphs.js"></script>

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>

        <![endif]-->

    </head>

    <body>
        <!-- header -->
        @include('admin.layout.header')
        <!-- end header -->

        	@include('admin.layout.menu')
       <!--/.sidebar-->
       <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" style=" padding-left: 5px;padding-right: 5px;">	
       		@yield('content')
		</div>
        	<!--/.main-->

        <script src="admin_asset/js/jquery-1.11.1.min.js"></script>
        <script src="admin_asset/js/bootstrap.min.js"></script>
        <script src="admin_asset/js/chart.min.js"></script>
        <script src="admin_asset/js/chart-data.js"></script>
        <script src="admin_asset/js/easypiechart.js"></script>
        <script src="admin_asset/js/easypiechart-data.js"></script>
        <script src="admin_asset/js/bootstrap-datepicker.js"></script>	
        <script src="admin_asset/js/bootstrap-table.js"></script>
        <script src='admin_asset/ckeditor/ckeditor.js'></script>
       
        <script>CKEDITOR.replace( 'editor1', {
            filebrowserBrowseUrl: '{{ asset('admin_asset/ckfinder/ckfinder.html') }}',
            filebrowserImageBrowseUrl: '{{ asset('admin_asset/ckfinder/ckfinder.html?type=Images') }}',
            filebrowserFlashBrowseUrl: '{{ asset('admin_asset/ckfinder/ckfinder.html?type=Flash') }}',
            filebrowserUploadUrl: '{{ asset('admin_asset/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files') }}',
            filebrowserImageUploadUrl: '{{ asset('admin_asset/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images') }}',
            filebrowserFlashUploadUrl: '{{ asset('admin_asset/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash') }}'
        } );</script>
        <link rel="stylesheet" href="admin_asset/css/bootstrap-table.css"/>
        <script>
            $('#calendar').datepicker({
            });

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
@if(session('thongbao'))
    <script type="text/javascript">                    
        alert ('{{session('thongbao')}}');
 </script>
@endif
