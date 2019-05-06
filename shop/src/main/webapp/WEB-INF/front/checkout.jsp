<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ssm.core.po.UserInfo"%>
<!DOCTYPE html>
<html>
<head>
<title>购物车</title>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<!-- Custom Theme files -->
<!--theme style-->
<link href="front/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="front/js/jquery.min.js"></script>


<!--//theme-style-->
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
</head>
<body>
<!-- header -->
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href="${pageContext.request.contextPath }/toindex.shtml">辣条商城</a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="${pageContext.request.contextPath }/tologin.shtml">首页</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/toproduct.shtml">商品列表</a>
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
					
					<%}else{ %>
								<li class="grid"><a href="${pageContext.request.contextPath }/tologin.shtml">登录</a></li>		
					<li class="grid"><a href="${pageContext.request.contextPath }/toregister.shtml">注册</a></li>		
					<%} %>
					<li class="grid"><a href="contact.html"><font color="red">我的购物车</font></a></li>				
				</ul>				
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

<div class="container">
	<div class="check-sec">	 
		<div class="col-md-3 cart-total">
			<a class="continue" href="${pageContext.request.contextPath }/toproduct.shtml">继续逛逛</a>			
		 <span id="order"></span>	
		 		 <span id="money"></span>	
		</div>

		<div class="col-md-9 cart-items">
	        		 <span id = "GoodsInfo"></span> 
	        
		</div>
  
		<div class="clearfix"> </div>
 
	</div>
					
</div>

<!-- //check out -->
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
						<li><a href="${pageContext.request.contextPath}/tologin.shtml">登录</a></li>
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

</script>
<script type="text/javascript">
var goods ;
var price = new Array(1000) ;
$(function(){
	showCart() ;
});
function showCart(){	
	$.get("${pageContext.request.contextPath }/showcart.shtml",
			function(data){
		    var allMoney = 0 ;
				goods = data.length ;
				var orderStr = "" ;
				var goodsStr = "" ;
				if (data.length == 0){
					goodsStr = "<h2>您的购物车空空如也</h2>" ;
					 $("#GoodsInfo").html(goodsStr) ;
				}else{
					for(var i=0 ;i < data.length ;i++){			
								price[i] = data[i].goods_price ;
								allMoney = allMoney + data[i].goods_price ;
						     var str = 
						    '<span id="orderInfo'+i+'">' +
							  '<div class="price-details">'+
								'<span><font size="2">商品名称</font></span>'+
								'<span class="total1"><font size="2">'+data[i].goods_name+'</font></span>'+
								'<span><font size="2">商品单价</font></b></span>'+
								'<span class="total1"><b><font size="2">￥'+data[i].goods_price+'元</font></b></span>'+
								'<span><b><font size="2">商品数量</font></b></span>'+
								'<span class="total1"><input type="text" style="height:10px;width:30px" value="1" id="goodsNum'+i+'"></span>'+								
								'<div class="clearfix"></div>	'	+		 
							  '</div>	'+
							  '<ul class="total_price">'+
							  ' <li class="last_price"> <h4>总价</h4></li>	'+
							  '<li class="last_price"><span id="money'+i+'">￥'+data[i].goods_price+'元</span></li>	'+		   
							  '</ul> <br>'+
							  '<div class="clearfix"></div>'+
							  '<button type="button" class="btn btn-info" onclick="orderCheck('+data[i].goods_id+','+i+')">结算此商品</button><b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</b>' +
								'<button type="button" class="btn btn-danger" onclick="remove('+data[i].goods_id+','+i+')" id="remove">删除此商品</button></a>'  +
								'<br>------------------------------------<br><br><br>'+ 
								'</span>' ;						  
							  orderStr += str ;
							  
						     var str1 =
						    '<span id="goodsInfo'+i+'">' +
								'<div class="cart-header1">' +
								'<div class="cart-item cyc">'+
								'<img src="http://127.0.0.1:9999/shopimg/upload/'+data[i].goods_url+'" width="10" height="230"  alt=""/>'+
								'</div>'+
								'<div class="cart-item-info">' +
								'<h2><a href="single.html"><font color="red">'+data[i].goods_name+'</font></a></h2>'+
								'<ul class="qty">'+
								'</ul>'+
								'<div class="delivery">'+
								'<span><font size="5" color="black">￥'+data[i].goods_price+'</font></span>'+
						 		'<div class="clearfix"><font size="6">----------欢迎光临本小店------------</font></div>'+
						 		'<div class="clearfix"><font size="6">----------给您最温暖的服务------------</font></div>'+
								'</div>'+				
								'</div>'+							
								'</div>'+
							  '</div>' +		
							  '</span> ' ;
							  goodsStr += str1 ;							  						  
					     }
					 var str =  '<li class="last_price"> <h3><span id="total">总金额：￥'+allMoney+'</span></h3></li>'+
					            '<a class="order" onclick="orderList()"> 结算所有商品 </a> ' ;
					 $("#money").html(str) ;
					 order.innerHTML = orderStr;
					 $("#GoodsInfo").html(goodsStr) ;
				}									
	 });
}
</script>
<script>
window.onload=function(){
	if (location.href.indexOf("?xyz=")<0)
	{
	location.href=location.href+"?xyz="+Math.random();
	}
	}
setTimeout('test()',2000);
function test(){
	$("input[type='text']").change( function() {
	   	   money() ;
	});
	$("button").blur( function() {
	   	   money() ;
	});
}

function orderCheck(goodsId,i){
	var num = $("#goodsNum"+i).val();
	$.post("${pageContext.request.contextPath }/adminorder/ordercart.shtml",{orderNumber:num,goodsId:goodsId});
	window.location.href="${pageContext.request.contextPath }/adminorder/tosingleorder_check.shtml" ;

}

function money(){
	  var allMoney = 0 ;
		$("#orderInfo"+i).hide() ;
		$("#goodsInfo"+i).hide() ;
			$.post("${pageContext.request.contextPath }/removecart/"+id+".shtml") ;		
			money() ;
      for(var i = 0 ;i < goods ;i++){     
   	     var num = $("#goodsNum"+i).val();
   	     var Total = num*price[i] ;
   	     $("#money"+i).html("￥"+Total+"元");
   	     allMoney = allMoney + Total ;
   	     $("#total").html("总金额：￥"+allMoney+"元") ;                                    	     
     		 }
}
function remove(id,i){

	$("#orderInfo"+i).hide() ;
	$("#goodsInfo"+i).hide() ;
		$.get("${pageContext.request.contextPath }/removecart/"+id+".shtml") ;		
		money() ;
}

function orderList(){
	$.post("${pageContext.request.contextPath}/adminorder/orderlist.shtml") ;
	window.location.href="${pageContext.request.contextPath }/adminorder/toorder_check.shtml" ;
}
</script>
</html>
