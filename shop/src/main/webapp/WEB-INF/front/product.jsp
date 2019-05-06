<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ssm.core.po.UserInfo"%>
<!DOCTYPE html>
<html>
<head>
<title>商品列表</title>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="front/js/jquery.min.js"></script>

<!-- Custom Theme files -->
<!--theme style-->
<link href="front/css/style.css" rel="stylesheet" type="text/css" media="all" />	
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
<link href="front/css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- the jScrollPane script -->
<script type="text/javascript" src="front/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->

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
				<ul class="memenu skyblue"><li><a href="${pageContext.request.contextPath }/toindex.shtml">首页</a></li>
					<li class="active"><a href="${pageContext.request.contextPath }/toproduct.shtml">商品列表</a>
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
					<li class="grid"><a href="${pageContext.request.contextPath }/adminorder/tosingleorder_check.shtml">我的订单</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/toaddress.shtml">地址管理</a></li>
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
<div class="product-model">	 
	 <div class="container">
			<ol class="breadcrumb">
		  <li><a href="${pageContext.request.contextPath }/toindex.shtml">主页</a></li>
		  <li class="active">商品列表</li>
		 </ol>
			<h2>全部辣条</h2>	
			 <div class="col-md-9 product-model-sec">
			
							<span id = "goods"></span>					
																																		
	 </div>
</div>
			
			
			
			
				   <!---->
					 <script type="text/javascript" src="js/jquery-ui.min.js"></script>
					 <link rel="stylesheet" type="text/css" href="front/css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
					$(window).load(function(){
					 $( "#slider-range" ).slider({
								range: true,
								min: 0,
								max: 100000,
								values: [ 500, 100000 ],
								slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
								}
					 });
					$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

					});//]]> 
					</script>
					 <!---->
  
				 
				   
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
</body>
<script>
$(function getGoodsInfo(){
		var str0 = "" ;
	 $.get("${pageContext.request.contextPath }/goods/getgoods.shtml",{goodsState:1},
			function(data){
		 		for(var i = 0 ; i < data.length ;i++){ 
		       var str =
			 				' <a href="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc('+data[i].goods_id+')"><div class="product-grid">'+
								'<div class="more-product"><span> </span></div>	'	+				
								'<div class="product-img b-link-stripe b-animate-go  thickbox">'+
								'<img src="http://127.0.0.1:9999/shopimg/upload/'+data[i].goods_url+'" width="200" height="250"  alt="">'+
								'<div class="b-wrapper">'+
								'<h4 class="b-animate b-from-left  b-delay03">'+
								'<button><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>查看详情</button>'+
								'</h4>'+
								'</div>'+
								'</div></a>'+						
								'<div class="product-info simpleCart_shelfItem">'+
								'<div class="product-info-cust prt_name">'+
								'<h3>美味'+data[i].goods_name+'</h3>'								+
								'<span class="item_price">￥'+data[i].goods_price+'元</span>'+
								'<div class="ofr">'+
						 		'<p class="pric1"><del>￥500元</del></p>'+
								'</div>'+
								'<input type="text" class="item_quantity" value="1" />'+						
								'<input type="button" class="item_add items" value="加入购物车" onclick="addShoppingcart('+data[i].goods_id+')">'+
								'<div class="clearfix"> </div>'+
								'</div>'+																
								'</div>'+
				    		'</div> '  ;
				    		str0 = str0 + str ;
		 		}
			goods.innerHTML= str0 ;
	 		}		 
	 ) ;	
});
function getDesc(id){
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");	
}

function addShoppingcart(goodsId){
	$.get("${pageContext.request.contextPath }/shoppingcart/"+goodsId+".shtml");
}
</script>
</html>
