<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath }/assets/js/ace-extra.min.js"></script>
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<script src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>        
        <script src="${pageContext.request.contextPath }/assets/layer/layer.js" type="text/javascript"></script>
<title>登录</title>
</head>

<body class="login-layout Reg_log_style">
<div class="logintop">    
    <span>欢迎后台管理界面平台</span>    
    <ul>
    <li><a href="#">返回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    <div class="loginbody">
<div class="login-container">
	<div class="center">
	     <img src="images/logo1.png" />
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box widget-box no-border visible">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												管理员登录
											</h4>

											<div class="login_icon"><img src="images/login.png" /></div>

											<form class="">
												<fieldset>
										<ul>
   <li class="frame_style form_error"><label class="user_icon"></label><input name="用户名" type="text"  id="username"/><i>用户名</i></li>
   <li class="frame_style form_error"><label class="password_icon"></label><input name="密码" type="password"   id="userpwd"/><i>密码</i></li>
   <li class="frame_style form_error"><label class="Codes_icon"></label><input name="验证码" type="text"   id="Codes_text"/><i>验证码</i><div class="Codes_region"></div></li>
   
  </ul>
													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace">
															<span class="lbl">保存密码</span>
														</label>

														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary" onclick="login_back()">
															<i class="icon-key"></i>
															登录
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110">通知</span>
											</div>

											<div class="social-login center">
											本网站系统不再对IE8以下浏览器支持，请见谅。
											</div>
										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											

											
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->
							</div><!-- /position-relative -->
						</div>
                        </div>

</body>
</html>
<script >
function login_back(){
	var username = $("#username").val() ;
	var userpw = $("#userpwd").val() ;
	if(username == ''){
		alert("用户名不能为空") ;
		return false ;
	}
	if(userpw == ''){
		alert('密码不能为空') ;
		return false ;
	}
	$.ajax({
		url : "${pageContext.request.contextPath }/login.action",
		type : "GET" ,
		data : JSON.stringify({userName:username,userPw:userpw}),
		contentType : "application/json;charset=utf-8",
		//定义回调响应的数据格式为JSON字符串，可省略
		dataType : "json" ,
	});

}	
  

</script>