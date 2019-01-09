<!DOCTYPE html>
<html>
<head>
<title>Trường mẫu giáo ROSEMONT</title>
<meta charset="UTF-8">
<base href="{{asset('')}}">

<link rel="stylesheet"  href="client_asset/css/style.css">
<!--[if IE 6]><link rel="stylesheet" type="text/css" href="client_asset/css/ie6.css"><![endif]-->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">


</head>
<body>
<div id="header">
  <div> <a href="home"><img src="client_asset/images/logo.gif" style="width: 250px;" alt=""></a>
      @yield('name')

</div>

 @yield('content')
</div>
<div id="footer" style="background: #5d802c">
  <div>
    <div> <span>Follow us</span> <a href="#" class="facebook">Facebook</a> <a href="#" class="subscribe">Subscribe</a> <a href="#" class="twitter">Twitter</a> <a href="#" class="flicker">Flickr</a> </div>
    <ul>
      <li> <a href="#"><img src="images/playing-in-grass.gif" alt=""></a>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.</p>
        <a href="#" class="readmore">Read more</a> </li>
      <li> <a href="#"><img src="images/baby-smiling.gif" alt=""></a>
        <p>Sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud.</p>
        <a href="#" class="readmore">Read more</a> </li>
    </ul>
  </div>
  <p class="footnote">Copyright &copy; 2012 <a href="#">School Name</a> All rights reserved | Website Template By <a target="_blank" href="http://www.freewebsitetemplates.com/">freewebsitetemplates.com</a></p>
</div>
</body>
</html>
