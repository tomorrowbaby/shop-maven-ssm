<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>辣条商城登录平台</title>
<link rel="stylesheet" type="text/css" href="css/style2.0.css">
<style type="text/css">
	ul li{font-size:40px;color:red;}
	.tyg-div{z-index:-1000;float:left;position:absolute;left:1%;top:0%;}
	.tyg-p{
		font-size: 16px;
	    font-family: 'microsoft yahei';
	    position: absolute;
	    top: 150px;
	    left: 60px;
	}
	.tyg-div-denglv{
		z-index:1000;float:right;position:absolute;right:3%;top:20%;
	}
	.tyg-div-form{
		background-color:#FF79BC;
		width:300px;
		height:auto;
		margin:120px auto 0 auto;
		color:black;
	}
	.tyg-div-form form {padding:10px;}
	.tyg-div-form form input[type="text"]{
		width: 270px;
	    height: 30px;
	    margin: 25px 10px 0px 0px;
	}
	.tyg-div-form form button {
	    cursor: pointer;
	    width: 300px;
	    height: 44px;
	    margin-top: 25px;
	    padding: 0;
	    background: yellow;
	    -moz-border-radius: 6px;
	    -webkit-border-radius: 6px;
	    border-radius: 6px;
	    border: 1px solid #2ec0f6;
	    -moz-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    -webkit-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    font-family: 'PT Sans', Helvetica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: 700;
	    color: black;
	    text-shadow: 0 1px 2px rgba(0,0,0,.1);
	    -o-transition: all .2s;
	    -moz-transition: all .2s;
	    -webkit-transition: all .2s;
	    -ms-transition: all .2s;
}
		body{
			height:100% ;
			min-height:100% ;
			overflow:hidden	;
			background-image:url(./img/ltr.jpeg) ;
			color:black;
		}
		
</style>
<body >


<div class="tyg-div">
	<ul>
    	<li>欢</li>
    	<li><div style="margin-left:40px;">迎</div></li>
    	<li><div style="margin-left:80px;">来</div></li>
    	<li><div style="margin-left:120px;">到</div></li>
    	<li><div style="margin-left:150px;">辣</div></li>
    	<li><div style="margin-left:170px;">条</div></li>
    	<li><div style="margin-left:190px;">商</div></li>
    	<li><div style="margin-left:200px;">城</div></li>
    </ul>
</div> 
<div id="contPar" class="contPar">
	<div id="page1"  style="z-index:1;" >
		<div class="title0" style="color:red" style="size:40">辣条商城</div>
		<div class="title1" style="color:red">香辣 美味 可口 劲爆 安全 可靠  </div>
		<div class="imgGroug">		
		<ul>
				<img alt="" class="img0 png" src="img/lt1.jpeg">
				<img alt="" class="img1 png" src="img/lt2.jpeg">
				<img alt="" class="img2 png" src="img/lt3.jpeg">
		</ul>
			</div>
		</div>
</div>
<div class="tyg-div-denglv">
	<div class="tyg-div-form">
		<form action="">
			<h2>登录</h2><p class="tyg-p">欢迎访问  辣条商城</p>
			<div style="margin:5px 0px;">
				<input type="text" placeholder="请输入账号..."/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" placeholder="请输入密码..."/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" style="width:150px;" placeholder="请输入验证码..."/>
				<img src="./img/1.png" style="vertical-align:bottom;" alt="验证码"/>
			</div>
			<button type="submit" >登<span style="width:20px;"></span>录</button>
		</form>
	</div>
</div>
<script type="text/javascript" src="./js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="./js/com.js"></script>
<!--[if IE 6]>
<script language="javascript" type="text/javascript" src="./script/ie6_png.js"></script>
<script language="javascript" type="text/javascript">
DD_belatedPNG.fix(".png");
</script>
<![endif]-->


</body>
</html>