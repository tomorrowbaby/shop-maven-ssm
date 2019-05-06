<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ssm.core.po.UserInfo"%>
<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<!--theme style-->
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
<link href="front/css/form.css" rel="front/stylesheet" type="text/css" media="all" />
<link rel="front/stylesheet" href="front/css/flexslider.css" type="text/css" media="screen" />

</head>
<body> 
<!--header-->
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href="${pageContext.request.contextPath }/toindex.shtml">辣条商城</a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="${pageContext.request.contextPath }/toindex.shtml">首页</a></li>
					<li class="grid"><a href="#">商品列表</a>
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
					<% UserInfo user = (UserInfo)session.getAttribute("USER") ;
							if(user != null){ 
					%>
					<li><a>欢迎您，${USER.userName}</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/tologin.shtml">我的订单</a></li>
					
					<%}else{ %>
								<li class="grid"><a href="${pageContext.request.contextPath }/tologin.shtml">登录</a></li>		
					<li class="grid"><a href="${pageContext.request.contextPath }/toregister.shtml">注册</a></li>		
					<%} %>	
				</ul>
				<div class="clearfix"> </div>
			 </div>
			 <!---->
			 <div class="cart box_1">
				 <a href="${pageContext.request.contextPath }/tocheckout.shtml">
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
<!--header//-->
<div class="product">
	 <div class="container">				
		 <div class="product-price1">
			 <div class="top-sing">
				  <div class="col-md-7 single-top">	
					 <div class="flexslider">
							  <ul class="slides">
							  	<span id = "url">
								
								</span>
  					  </ul>
						</div>					 					 
					 <script src="js/imagezoom.js"></script>
						<script defer src="js/jquery.flexslider.js"></script>
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>

				 </div>	
			     <div class="col-md-5 single-top-in simpleCart_shelfItem">
					  <div class="single-para ">
						<span id="goods"></span>
							<div class="check">
							 <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Enter pin code for delivery &amp; availability</p>
						    </div>
							<a href="#" onclick="addShoppingcart()" class="add-cart item_add">加入购物车</a>	
							<a href="${pageContext.request.contextPath }/adminorder/tosingleorder_check.shtml" onclick="orderCheck()" class="add-cart item_add">直接购买</a>						
					 </div>
				 </div>
				 <div class="clearfix"> </div>
			 </div>
	     </div>
		 <div class="bottom-prdt">
			 <div class="btm-grid-sec">
				 <div class="col-md-2 btm-grid">
					 <a href="${pageContext.request.contextPath }/toproduct.shtml">
						<img src="images/img3.jpg" width="200" height="200" alt=""/>
						<h4>美味卫龙</h4>
						<span>$10.00</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					 <a href="${pageContext.request.contextPath }/toproduct.shtml">
						<img src="images/img1.jpg" width="200" height="200" alt=""/>
						<h4>美味辣条</h4>
						<span>$700</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="${pageContext.request.contextPath }/toproduct.shtml">
						<img src="images/img2.jpg" width="200" height="200" alt=""/>
						<h4>美味老干妈</h4>
						<span>$10.00</span></a>
				 </div>
				 <div class="col-md-2 btm-grid">
					  <a href="${pageContext.request.contextPath }/toproduct.shtml">
						<img src="images/img5.jpg" width="200" height="200" alt=""/>
						<h4>香辣斗牛士</h4>
						<span>$10.00</span></a>
				 </div>
				  <div class="clearfix"></div>
			 </div>			
		 </div>
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
						<li><a href="login.html">登录</a></li>
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
<body>
 <script type="text/javascript">
 var goodsId = 0 ;
$(function getGoodsInfo(){
	$.post("${pageContext.request.contextPath }/get/goods.shtml",
			function(data){
		    goodsId = data[0].goods_id ;
				var str=
				"<li data-thumb='http://127.0.0.1:9999/shopimg/upload/"+data[0].goods_url+"'>"+
				' <img src="http://127.0.0.1:9999/shopimg/upload/'+data[0].goods_url+'" width="400" height="500" data-imagezoom="true"  alt=""/>'+
			  "</li>" ;
			  url.innerHTML = str ;
			  var str =
				"<h4>商品名 ： "+data[0].goods_name+"</h4>"	+						
				'<h5 class="item_price">售价 ： ￥'+data[0].goods_price+ '元</h5>'+							
				'<p class="para">商品描述 ：'+ data[0].goods_desc+' </p>' ;			
				goods.innerHTML = str ;
	});				 
})

function addShoppingcart(){
	$.get("${pageContext.request.contextPath }/shoppingcart/"+goodsId+".shtml");
}
function orderCheck(){
	$.post("${pageContext.request.contextPath }/adminorder/ordercheck/"+goodsId+".shtml");
}
 </script>


</body>
</html>

</html>
