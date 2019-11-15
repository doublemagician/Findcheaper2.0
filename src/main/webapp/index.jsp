<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Home</title>
	<meta name="description" content="">
	<meta name="keywords" content="">

<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="fonts/law-icons/font/flaticon.css">

<link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">


<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/slick-theme.css">

<link rel="stylesheet" href="css/helpers.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/landing-2.css">
</head>
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="pb-navbar">
  <div class="container">
	<!-- <a class="navbar-brand" href="index.html">Landing</a> -->
	<button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#probootstrap-navbar" aria-controls="probootstrap-navbar" aria-expanded="false" aria-label="Toggle navigation">
	  <span><i class="ion-navicon"></i></span>
	</button>
	<div class="collapse navbar-collapse" id="probootstrap-navbar">
	  <ul class="navbar-nav ml-auto">
		<li class="nav-item"><a class="nav-link" href="#section-home">登陆</a></li>
		<li class="nav-item"><a class="nav-link" href="#section-features">找实惠特色说明</a></li>
		<li class="nav-item"><a class="nav-link" href="#section-reviews">关于我们</a></li>
		<li class="nav-item"><a class="nav-link" href="#section-faq">相关问题</a></li>
		<li class="nav-item"><a class="nav-link" href="#section-register">注册</a></li>
	  </ul>
	</div>
  </div>
</nav>
<!-- END nav -->




<section class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 pb_slant-light" id="section-home">
  <div class="container">
	<div class="row align-items-center justify-content-center">
	  <div class="col-md-6">
		<h2 class="heading mb-3">Find Cheaper</h2>
		<div class="sub-heading">
		  <p class="mb-4">
		  We are committed to making shopping a simple thing.
		  looking for real quality and cheap
		  Product information collected in 
		  <a href="https://www.jd.com" target="_blank">Jingdong</a>
		  </p>
		  
		  <p class="mb-5">
		  <a class="btn btn-success btn-lg pb_btn-pill smoothscroll" href="#section-register">
		  <span class="pb_font-14 text-uppercase pb_letter-spacing-1">注册</span>
		  </a>
		  </p>
		</div>
	  </div> 
	  <div class="col-md-1">
	  </div>
	  <div class="col-md-5 relative align-self-center">
		
		<form action="login.action" class="bg-white rounded pb_form_v1">
		  <h2 class="mb-4 mt-0 text-center">登陆界面</h2>
		  <div class="form-group">
			<input type="text" class="form-control pb_height-50 reverse" placeholder="请输入你的用户名" name ="userName" >
		  </div>
		  <div class="form-group">
			<input type="password" class="form-control pb_height-50 reverse" placeholder="请输入你的密码" name="userPassword">
		  </div>
		  <div class="form-group">
			<input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue" value="登陆">
		  </div>
		</form>
	
	  </div> 
	</div>
  </div>
</section>
<!-- END section -->

<section class="pb_section bg-light pb_slant-white pb_pb-250" id="section-features">
  <div class="container">
	<div class="row justify-content-center mb-5">
	  <div class="col-md-6 text-center mb-5">
		<h5 class="text-uppercase pb_font-15 mb-2 pb_color-dark-opacity-3 pb_letter-spacing-2"><strong>Features</strong></h5>
		<h2>Website Features</h2>
	  </div>
	</div>
	<div class="row">
	  <div class="col-lg-4 col-md- col-sm-6">
		<div class="media d-block pb_feature-v1 text-left">
		  <div class="pb_icon"><i class="ion-ios-bookmarks-outline pb_icon-gradient"></i></div>
		  <div class="media-body">
			<h5 class="mt-0 mb-3 heading">设计简约</h5>
			<p class="text-sans-serif">本网站设计风格简单，容易上手，对受众人群的文化水平没有较高要求</p>
		  </div>
		</div>
	  </div>
	  <div class="col-lg-4 col-md- col-sm-6">
		<div class="media d-block pb_feature-v1 text-left">
		  <div class="pb_icon"><i class="ion-ios-speedometer-outline pb_icon-gradient"></i></div>
		  <div class="media-body">
			<h5 class="mt-0 mb-3 heading">更高的效率</h5>
			<p class="text-sans-serif">本网站致力于让用户在最短的时间内做出最好的选择，减少用户用于对比不同货物所浪费的时间，使用户达到高效购物的目的</p>
		  </div>
		</div>
	  </div>
	  <div class="col-lg-4 col-md- col-sm-6">
		<div class="media d-block pb_feature-v1 text-left">
		  <div class="pb_icon"><i class="ion-ios-infinite-outline pb_icon-gradient"></i></div>
		  <div class="media-body">
			<h5 class="mt-0 mb-3 heading">无限的惊喜</h5>
			<p class="text-sans-serif">在使用本网站的过程中，用户会在很短的时间之内发现性价比最高的心仪商品，带给用户无限惊喜的购物体验
			</p>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</section>
<!-- END section -->



<section class="pb_section pb_slant-light pb_pb-220" id="section-reviews">
  <div class="container">
	<div class="row justify-content-center mb-1">
	  <div class="col-md-6 text-center mb-5">
		<h5 class="text-uppercase pb_font-15 mb-2 pb_color-dark-opacity-3 pb_letter-spacing-2"><strong>About_us</strong></h5>
		<h2>关于我们</h2>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md">
		<div class="pb_slide_testimonial_sync_v1">
		  <div class="pb_slider_content js-pb_slider_content2">
			<div>
			  <div class="media d-block text-center testimonial_v1 pb_quote_v2">
				<div class="media-body">
				  <div class="quote">&ldquo;</div>
				  <blockquote class="mb-5">Several college students who are committed to learning computer information technology, after a few days of hard work,
				   to create this website, if there are functional deficiencies, please understand!</blockquote>
				</div>
			  </div>
			</div>
		</div>
		<!-- END sync_v1 -->
	  </div>
	</div>
  </div>
</section>
<section class="pb_section pb_slant-white" id="section-faq">
  <div class="container">
	<div class="row justify-content-center mb-5">
	  <div class="col-md-6 text-center mb-5">
		<h5 class="text-uppercase pb_font-15 mb-2 pb_color-dark-opacity-3 pb_letter-spacing-2"><strong>Q A</strong></h5>
		<h2>Questions & Answer</h2>
	  </div>
	</div>
	<div class="row">
	  <div class="col-md">
		<div id="pb_faq" class="pb_accordion" data-children=".item">
		  <div class="item">
			<a data-toggle="collapse" data-parent="#pb_faq" href="#pb_faq1" aria-expanded="false" aria-controls="pb_faq1" class="pb_font-22 py-4">
			网站创建日期及开发目的？
			</a>
			<div id="pb_faq1" class="collapse show" role="tabpanel">
			  <div class="py-3">
			  <p> "找实惠网站"创建于2019年5月，属于公益性质的网站，致力于向用户提供购物链接的平台，方便消费者和商家良好的关系。</p>
			  </div>
			</div>
		  </div>
		  <div class="item">
			<a data-toggle="collapse" data-parent="#pb_faq" href="#pb_faq2" aria-expanded="false" aria-controls="pb_faq2" class="pb_font-22 py-4">
			用户在购物过程中，出现问题时请联系管理员</a>
			<div id="pb_faq2" class="collapse" role="tabpanel">
			  <div class="py-3">
				<p>管理员QQ：XXXXXXXX，或者向管理员邮箱XXXXXXX联系</p>
			  </div>
			</div>
		  </div>
		  <div class="item">
			<a data-toggle="collapse" data-parent="#pb_faq" href="#pb_faq3" aria-expanded="false" aria-controls="pb_faq3" class="pb_font-22 py-4">
			本网站是否收取费用</a>
			<div id="pb_faq3" class="collapse" role="tabpanel">
			  <div class="py-3">
				<p>本站坚持老实做站原则。本站不会以任何名义、缘由向用户收取费用，无需绑定任何财产相关的银行账户</p>
			  </div>
			</div>
		  </div>
		  <div class="item">
			<a data-toggle="collapse" data-parent="#pb_faq" href="#pb_faq4" aria-expanded="false" aria-controls="pb_faq4" class="pb_font-22 py-4">
			商品信息来源?
			</a>
			<div id="pb_faq4" class="collapse" role="tabpanel">
			  <div class="py-3">
				<p>商品信息均来自网络</p>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</section>

<section class="pb_xl_py_cover overflow-hidden pb_slant-light pb_gradient_v1 cover-bg-opacity-8" id="section-register" style="background-image: url(assets/images/1900x1200_img_5.jpg)">
  <div class="container">
	<div class="row align-items-center justify-content-center">
	  <div class="col-md-5 justify-content-center">
		<h2 class="heading mb-5 pb_font-40">
		Find Cheaper
		     注册
		</h2>
	  </div> 
	  <div class="col-md-1"></div>
	  <div class="col-md-5">
		 <form action="signup.action" class="bg-white rounded pb_form_v1">
		  <h2 class="mb-4 mt-0 text-center">注册</h2>
		  <div class="form-group">
			<input type="text" class="form-control py-3 reverse" placeholder="请输入用户名" name="userName">
		  </div>
		  <div class="form-group">
			<input type="passsword" class="form-control py-3 reverse" placeholder="请设置密码" name="userPassword">
		  </div>
		   <div class="form-group">
			<input type="passsword" class="form-control py-3 reverse" placeholder="请重复密码" name="userPassword2">
		  </div>
		  <div class="form-group">
			<input type="text" class="form-control py-3 reverse" placeholder="请输入邮箱" name="email">
		  </div>
		  <div class="form-group">
			<input type="text" class="form-control py-3 reverse" placeholder="请输入电话号码" name="phone">
		  </div>
		  <div class="form-group">
			<input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue" value="Register">
		  </div>
		</form>
	  </div>
	</div>
  </div>
</section>
<!-- END section -->

<footer class="pb_footer bg-light" role="contentinfo">
  <div class="container">
	<div class="row text-center">
	  <div class="col">
		<ul class="list-inline">
		  <li class="list-inline-item"><a href="#" class="p-2"><i class="fa fa-facebook"></i></a></li>
		  <li class="list-inline-item"><a href="#" class="p-2"><i class="fa fa-twitter"></i></a></li>
		  <li class="list-inline-item"><a href="#" class="p-2"><i class="fa fa-linkedin"></i></a></li>
		</ul>
	  </div>
	</div>
	
  </div>
</footer>

<script src="js/jquery.min.js"></script>

<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/jquery.mb.YTPlayer.min.js"></script>

<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>

<script src="js/main.js"></script>
  </body>
</html>
