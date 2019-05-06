<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>用户注册</title>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="front/css/docs.min.css" rel="stylesheet">
<!-- Custom Theme files -->
<!--theme-style-->
<link href="front/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="front/js/jquery.min.js"></script>

<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="front/js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="front/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="front/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<script src="front/js/responsiveslides.min.js"></script>
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
				<h1><a href="${pageContext.request.contextPath }/toindex.shtml">辣条商城</a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a  href="${pageContext.request.contextPath }/toindex.shtml">首页</a></li>
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
				</ul>				
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
<div class="container">
	  <ol class="breadcrumb">
		  <li><a href="${pageContext.request.contextPath }/toindex.shtml">首页</a></li>
		  <li class="active">账户</li>
		 </ol>
	 <div class="registration">
		 <div class="registration_left">
			 <h2>新用户？ <span> 创建一个用户 </span></h2>
			 <!-- [if IE] 
				< link rel='stylesheet' type='text/css' href='ie.css'/>  
			 [endif] -->  
			  
			 <!-- [if lt IE 7]>  
				< link rel='stylesheet' type='text/css' href='ie6.css'/>  
			 <! [endif] -->  
			 <script>
				(function() {
			
				// Create input element for testing
				var inputs = document.createElement('input');
				
				// Create the supports object
				var supports = {};
				
				supports.autofocus   = 'autofocus' in inputs;
				supports.required    = 'required' in inputs;
				supports.placeholder = 'placeholder' in inputs;
			
				// Fallback for autofocus attribute
				if(!supports.autofocus) {
					
				}
				
				// Fallback for required attribute
				if(!supports.required) {
					
				}
			
				// Fallback for placeholder attribute
				if(!supports.placeholder) {
					
				}
				
				// Change text inside send button on submit
				var send = document.getElementById('register-submit');
				if(send) {
					send.onclick = function () {
						this.innerHTML = '...Sending';
					}
				}
			
			 })();
			 </script>
			 <div class="registration_form">
			 <!-- Form -->
		
					<div>
						<label>
							<input placeholder="用户名" type="text" tabindex="2" id="userName">
						</label>
					</div>
					<div>
						<label>
							<input placeholder="手机号" type="text" tabindex="3" id="userPhone"><span id="info" style="color:red"></span>
						</label>
					</div>					
						<div class="sky_form1">
							<ul>
								<li><label class="radio left"><input type="radio" name="radio" checked="checked" value="男"><i></i>男</label></li>
								<li><label class="radio"><input type="radio" name="radio" value="女" checked="checked"><i></i>女</label></li>								
							</ul>
							<div class="clearfix"></div>
						</div>					
					<div>
						<label>
							<input placeholder="请输入密码" type="password" tabindex="4" id="userPw1">
						</label>
					</div>						
					<div>
						<label>
							<input placeholder="请再次输入密码" type="password" tabindex="4" id="userPw2">
						</label>
					</div>	
					<div>
						<input type="submit" value="注册" id="register-submit" onclick="register()">
					</div>
					<div class="sky-form">
						<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>我同意 &nbsp;<a class="terms" href="#"> 服务协议</a> </label>
					</div>

				<!-- /Form -->
			 </div>
		 </div>
		 <div class="registration_left">
			 <h2>以有账号</h2>
			 <div class="registration_form">
			 <!-- Form -->
				 <form action="${pageContext.request.contextPath }/login.shtml" method="POST" >
					 <input type="text" name="userInfo" placeholder="请输入手机号或用户名" >
					 <input type="password" name="userPw" placeholder="请输入密码">					
					 <input type="submit" value="登录">	
						<a class="acount-btn" href="${pageContext.request.contextPath }/toregister.shtml">创建用户</a>
				 </form>
			 <!-- /Form -->
			 </div>
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
<!---->
<div class="subscribe">
	 <div class="container">
		 <h3>Newsletter</h3>
		 <form>
			 <input type="text" class="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
			 <input type="submit" value="Subscribe">
		 </form>
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
<script type="text/javascript">
$(function(){

	 $("#userPhone").blur(function(){
		 //ajax
		 $.post('${pageContext.request.contextPath }/selectphone.action',{userPhone:$(this).val()},function(json){
			 $("#info").html(json.info);
		 },"json");
	 });
});

function register(){
	var userName = $("#userName").val() ;
	var userSex = $("input[name$='radio']:checked").val();
	var userPhone = $("#userPhone").val() ;
	var userPw1 = $("#userPw1").val() ;
	var userPw2 = $("#userPw2").val() ;
	if(userPw1 == null || userPw1 == ''||userPw2 == null || userPw2 == ''){
		alert("密码不能为空") ;
		return false ;
	}
	if(userPw1 != userPw2) {
		alert("两次密码输入不一致") ;
		return false ;
	}
	$.post("${pageContext.request.contextPath }/register.shtml",{userName:userName,userSex:userSex,userPhone:userPhone,userPw:userPw1,userType:"普通用户"},
			function(data){
					alert(data.info) ;
	});
}

</script>
</html>
