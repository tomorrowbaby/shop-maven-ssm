<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单信息</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 menu">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><a href="${pageContext.request.contextPath }/adminorder/toordermanager_index.shtml" ><font size="+3">订单信息</font></a></li>
					<li role="presentation"><a href="javascript:void(0)" onclick="load('adminconsignee/list.shtml')"><font size="+3">收货人</font></a></li>
					<li role="presentation"><a href="adminorder/exit.shtml" ><font size="+2">退出</font></a></li>
				</ul>
			
		</div>
			<div id="content" class="col-sm-9 ">
			<h2>订单信息</h2>
	<hr/>
	<table class="table table-bordered">
		<tr>
			<th>订单编号</th>
			<th>订单时间</th>
			<th> 购买人</th>
			<th>收货人</th>
			<th>总金额</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="order">
		<tr>
			<td class="success">${order.orderId }</td>
			<td class="success">${order.orderTime }</td>
			<td class="success">${order.userName }</td>
			<td class="success">${order.consigneeName }</td>
			<td class="success">${order.orderTotal }</td>
			<td><a class="btn btn-info" href="${pageContext.request.contextPath }/adminorder/toordermanager_info.shtml?orderId=${order.orderId}" >详情</a></td>

		</tr>
		</c:forEach>		
	</table>
	</div>
</div>
</div>
</body>
</html>