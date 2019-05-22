<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<div class="row">
			<div class="col-sm-3 menu">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><a href="${pageContext.request.contextPath }/adminorder/toordermanager_index.shtml" ><font size="+3">订单信息</font></a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath }/adminconsignee/consigneelist.shtml" ><font size="+3">收货人</font></a></li>
					<li role="presentation"><a href="${pageContext.request.contextPath }/toindex.shtml" ><font size="+2">退出</font></a></li>
				</ul>
			
		</div>
			<div id="content" class="col-sm-9 ">
	<h2><font color="red">收货人管理</font></h2>
	<hr />
	<table class="table">
		<tr>
			<th>收货人编号</th>
			<th>收货人姓名</th>
			<th>收货人地址</th>
			<th>邮编</th>
			<th>电话号码</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="ccm">
			<tr>
				<td>${ccm.consigneeId }</td>
				<td>${ccm.consigneeName }</td>
				<td>${ccm.consigneeAddress }</td>
				<td>${ccm.consigneeCode }</td>
				<td>${ccm.consigneePhone }</td>
				<td>
					<a href="javascript:void(0)" onclick="update(${ccm.consigneeId },'${ccm.consigneeName }','${ccm.consigneeAddress }','${ccm.consigneeCode }','${ccm.consigneePhone }')">修改</a>
					<a href="${pageContext.request.contextPath }/adminconsignee/delete.shtml?consigneeId=${ccm.consigneeId }">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<hr />
		<div align="center" style="color: red;">${info }</div>
	<hr/>
	<div class="row">
		<div class="col-sm-10">
			<form action="" method="post" id="f1">
				<div class="form-group">
					<label for="consignee_id">收货人编号</label> <input type="text"
						class="form-control" name="consigneeId" id="consignee_id"
						placeholder="请输入收货人编号" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="consignee_name">收货人姓名</label> <input type="text"
						class="form-control" name="consigneeName" id="consignee_name"
						placeholder="请输入收货人姓名" >
				</div>
				<div class="form-group">
					<label for="consignee_address">收货人地址</label> <input type="text"
						class="form-control" name="consigneeAddress" id="consignee_address"
						placeholder="请输入收货人地址" >
				</div>
				<div class="form-group">
					<label for="consignee_code">邮编</label> <input type="text"
						class="form-control" name="consigneeCode" id="consignee_code"
						placeholder="请输入邮编" >
				</div>
				<div class="form-group">
					<label for="consignee_phone">收货人电话</label> <input type="text"
						class="form-control" name="consigneePhone" id="consignee_phone"
						placeholder="请输入收货人电话" >
				</div>
				  <button type="button" id="add"  class="btn btn-success">添加收货人</button>
				    <button type="button" id="update" class="btn btn-info">修改收货人</button>
			</form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="res/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			
			//添加
			$("#add").click(function(){
				var f1 =$("#f1");
				f1.attr("action","${pageContext.request.contextPath }/adminconsignee/add.shtml");
				f1.submit();
			});
			
			//修改
			$("#update").click(function(){
				var f1 =$("#f1");
				f1.attr("action","${pageContext.request.contextPath }/adminconsignee/update.shtml");
				f1.submit();
			});
			
		});
		
		function update(id,name,address,code,phone){
			
			$("#consignee_id").val(id);
			$("#consignee_name").val(name);
			$("#consignee_address").val(address);
			$("#consignee_code").val(code);
			$("#consignee_phone").val(phone);
			
		}
	</script>
</body>
</html>