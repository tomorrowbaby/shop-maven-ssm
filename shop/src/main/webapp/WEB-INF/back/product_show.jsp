<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品详情</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<h1>商品基本信息：</h1>
<table class="table table-bordered">
   <thead>
		 <tr>
				<th width="80px">产品编号</th>
				<th width="250px">产品名称</th>
				<th width="100px">现价</th>
				<th width="180px">加入时间</th>             
			</tr>
		</thead>
		<tbody >
        <tr>
        		<td>${goods.goods_id }</td>
        		<td>${goods.goods_name }</td>
        		<td>${goods.goods_price }</td>
        		<td>${goods.goods_time }</td>
        </tr>
    </tbody>
    </table>
<h1>商品详情：</h1>
    ${goods.goods_desc}
 <h3>商品图片</h3>
 <div style="text-align: center;">
 <img src="http://127.0.0.1:9999/shopimg/upload/${goods.goods_url}" width='500' height='500'/>
</div>
</body>
</html>