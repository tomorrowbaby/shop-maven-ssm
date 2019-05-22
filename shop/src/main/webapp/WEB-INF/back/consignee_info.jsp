<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>收货人管理</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1><font color="green">收货人更改</font></h1>
		<br />			
			<h3><font color="green">收货人信息</font></h3>
			<h4><font color="red">${info}</font></h4>
		<table class="table table-bordered">
		<tr>
			<th>收货人编号</th>
			<th>收货人姓名</th>
			<th>收货地址</th>
			<th>收货邮编</th>
			<th>收货电话</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="consignee">
		<tr>
			<td class="success">${consignee.consigneeId }</td>
			<td class="success">${consignee.consigneeName}</td>
			<td class="success">${consignee.consigneeAddress }</td>
			<td class="success">${consignee.consigneeCode }</td>
			<td class="success">${consignee.consigneePhone }</td>
			<td>
			<a class="btn btn-warning" href="${pageContext.request.contextPath }/update.action?consigneeId=${consignee.consigneeId}&orderId=${orderId}">更改为此收货人</a>
			</td>		
		</tr>
		</c:forEach>		
	</table>
	<a class="btn btn-danger" href="${pageContext.request.contextPath }/list.action">返回</a>
	</div>
</body>
</html>