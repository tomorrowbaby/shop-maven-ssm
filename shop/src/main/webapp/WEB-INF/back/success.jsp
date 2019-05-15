<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>结果页面</title>
</head>
<body>
<b><font size='+5'>${info}</font></b>
	<%String ref = request.getHeader("REFERER");%>
      <input type="button" id="backBtn" name="button" class="button_return" value="返回上一页"
      onclick="javascript:window.location='<%=ref%>'">
      <a class="btn btn-default" role="button" href="${pageContext.request.contextPath }">返回主页</a>
</body>
</html>