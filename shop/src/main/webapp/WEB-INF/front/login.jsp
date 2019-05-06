<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ssm.core.po.UserInfo"%>
 <%  request.setCharacterEncoding("UTF-8"); %>  
<!DOCTYPE html>
<html>
<head>
<title>登录页面</title>
<link href="${pageContext.request.contextPath }/front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/front/css/docs.min.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--theme style-->
<link href="${pageContext.request.contextPath }/front/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="${pageContext.request.contextPath }/front/js/jquery.min.js"></script>

<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="${pageContext.request.contextPath }/front/js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="${pageContext.request.contextPath }/front/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/front/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<script src="${pageContext.request.contextPath }/front/js/responsiveslides.min.js"></script>
<script>  
    $(function () {
      $("#slider").responsiveSlides({
      	auto: false,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: false,
      });
    });
  </script>
  
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href="${pageContext.request.contextPath }/toindex.shtml">辣条商城 </a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="${pageContext.request.contextPath }toindex.shtml">首页</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/toproduct.shtml">商品列表</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>选择分类</h4>
									<ul>
										<li><a href="${pageContext.request.contextPath }/toproduct.shtml">经典辣条</a></li>			
									</ul>
								</div>
							</div>
						</div>
					</li>					
					<li class="grid"><a href="contact.html">联系我们</a></li>
					<% UserInfo user = (UserInfo)session.getAttribute("USER") ;
							if(user != null){ 
					%>
					<li><a>欢迎您，${USER.userName}</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/adminorder/tosingleorder_check.shtml">我的订单</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/toaddress.shtml">地址管理</a></li>
					
					<%}else{ %>
								<li class="grid"><a href="${pageContext.request.contextPath }/tologin.shtml">登录</a></li>		
					<li class="grid"><a href="${pageContext.request.contextPath }/toregister.shtml">注册</a></li>		
					<%} %>
				</ul>
				<div class="clearfix"> </div>
			 </div>
			 <!---->
			 <div class="cart box_1">
				 <a href="checkout.html">
					<div class="total">
					<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
</div>
<!---->	
<div class="login_sec">
	 <div class="container">
		 <ol class="breadcrumb">
		  <li><a href="${pageContext.request.contextPath }/toindex.shtml">主页</a></li>
		  <li class="active">登录</li>
		 </ol>
		 <h2>登录</h2>
		 <div class="col-md-6 log">			 
				 <form action="${pageContext.request.contextPath }/login.shtml" method="POST" >
					 <h5>手机号/用户名</h5>	
					 <input type="text" name="userInfo" placeholder="请输入手机号或用户名" >
					 <h5>密码</h5>
					 <input type="password" name="userPw" placeholder="请输入密码">					
					 <input type="submit" value="登录">	
					<a class="acount-btn" href="${pageContext.request.contextPath }/toregister.shtml">创建用户</a>
				 </form>
				 <a href="#">忘记密码 ?</a>					
		 </div>					
		 <div class="clearfix"></div>
	 </div>
</div>
<!---->
<div class="footer">
	 <div class="container">
		 <div class="footer-grids">
			 <div class="col-md-3 about-us">
				 <h3>关于我们</h3>
				 <p>内蒙古农业大学计算机科学与技术2班 王玉</p>
			 </div>
			 <div class="col-md-3 ftr-grid">
					<h3>技术支持</h3>
					<ul class="nav-bottom">
						<li><a href="#">樊柳 - ps工程师</a></li>							
					</ul>					
			 </div>
			 <div class="col-md-3 ftr-grid">
					<h3>更多</h3>
					<ul class="nav-bottom">
						<li><a href="${pageContext.request.contextPath }/tologin.shtml">登录</a></li>
						<li><a href="contact.html">联系我们</a></li>
	
					</ul>					
			 </div>
			 <div class="col-md-3 ftr-grid">
					<h3>赞助商家</h3>
					<ul class="nav-bottom">
						<li><a href="#">表情包有限公司</a></li>
						<li><a href="#">745技术公司</a></li>
					</ul>					
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<div class="copywrite">
	 <div class="container">
		 <div class="copy">
			 <p>此处不知道写什么</p>
		 </div>
		 <div class="social">							
				<a href="#"><i class="facebook"></i></a>
				<a href="#"><i class="twitter"></i></a>
				<a href="#"><i class="dribble"></i></a>	
				<a href="#"><i class="google"></i></a>	
				<a href="#"><i class="youtube"></i></a>	
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
<!---->
</body>
</html>
