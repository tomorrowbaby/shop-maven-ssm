<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  
		<!-- page specific plugin scripts -->
        <script type="text/javascript" src="js/H-ui.js"></script> 
        <script type="text/javascript" src="js/H-ui.admin.js"></script> 
        <script src="assets/layer/layer.js" type="text/javascript" ></script>
        <script src="assets/laydate/laydate.js" type="text/javascript"></script>

<title>订单列表</title>
</head>
<body>
	<div class="container">
		<h1><font color="red">订单管理</font></h1>
		<br />
			<h4><font color="red">订单查询</font></h4>
			<form class="form-inline" action="${pageContext.request.contextPath }/list.action" method="post">
  			<div class="form-group">
    		<label for="exampleInputName2">订单编号</label>
   			 <input type="text" class="form-control" id="orderId" name="orderId" placeholder="订单编号"/>
 			 </div>
  			<div class="form-group">
   			 <label for="exampleInputEmail2">订单日期</label>
     		<input class="inline laydate-icon" id="start" name="orderDate" style=" margin-left:10px;"/>
  			</div>
  			<button type="submit" class="btn btn-default">查询</button>
			</form>
			<br />
			<br />
			<h3><font color="green">订单信息</font></h3>
			<h4><font color="red">${info}</font></h4>
		<table class="table table-bordered">
		<tr>
			<th>订单编号</th>
			<th>订单时间</th>
			<th> 购买人</th>
			<th>收货人</th>
			<th>总金额</th>
			<th>状态</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="order">
		<tr>
			<td class="success">${order.orderId }</td>
			<td class="success">${order.orderTime }</td>
			<td class="success">${order.userName }</td>
			<td class="success">${order.consigneeName }</td>
			<td class="success">${order.orderTotal }</td>
			<td class="success">${order.orderState }</td>
			<td>
			<a class="btn btn-danger" href="${pageContext.request.contextPath }/delete.action?orderId=${order.orderId}">删除</a>
			<a class="btn btn-warning" href="${pageContext.request.contextPath }/getconsignee.action?userId=${order.userId}&orderId=${order.orderId}">更换收货人</a>
			</td>		
		</tr>
		</c:forEach>		
	</table>
	<a class="btn btn-danger" href="${pageContext.request.contextPath }">返回</a>
	</div>
      
 
</body>
</html>
<script type="text/javascript">
laydate({
    elem: '#start',
    event: 'focus' 
});


</script>