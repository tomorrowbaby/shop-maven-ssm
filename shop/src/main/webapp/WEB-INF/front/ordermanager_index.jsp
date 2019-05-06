<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<link rel="stylesheet" href="res/css/bootstrap.css">
<link rel="stylesheet" href="res/css/animate.min.css">
<link rel="stylesheet" href="res/css/main.css">
</head>
<body>
	<section id="ordermanager">
		<div class="container">
			<div class="row">
				<div class="col-sm-2 menu">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation"><a href="javascript:void(0)" onclick="load('adminorder/queryOrder.shtml')">订单管理</a></li>
						<li role="presentation"><a href="javascript:void(0)" onclick="load('adminconsignee/list.shtml')">收货人</a></li>
						<li role="presentation"><a href="adminorder/exit.shtml" >退出</a></li>
					</ul>
				</div>
				<div id="content" class="col-sm-10 ">
						
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<p>版权所有：老牛</p>
				</div>
			</div>
		</div>
	</footer>

	<script type="text/javascript" src="res/js/jquery.min.js"></script>
	<script type="text/javascript" src="res/js/bootstrap.js"></script>
	<script type="text/javascript">
		
	$(function(){
		$("#content").load("adminorder/queryOrder.shtml");
	});
	
	function load(page){
		$("#content").load(page);
	}
	
	</script>
</body>
</html>