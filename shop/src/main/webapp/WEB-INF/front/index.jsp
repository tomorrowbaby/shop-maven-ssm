<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.ssm.core.po.UserInfo"%>
 <%@taglib prefix="oscache" uri="http://www.opensymphony.com/oscache" %>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="front/css/docs.min.css" rel="stylesheet">
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
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="front/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="front/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->	
<script src="front/js/responsiveslides.min.js"></script>
<script>  
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: false,
      });
    });
  </script>
 <oscache:cache >
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
					<li class="grid"><a href="${pageContext.request.contextPath }/adminorder/tosingleorder_check.shtml">我的订单</a></li>
					<li class="grid"><a href="${pageContext.request.contextPath }/toaddress.shtml">地址管理</a></li>
					<%}else{ %>
								<li class="grid"><a href="${pageContext.request.contextPath }/tologin.shtml">登录</a></li>		
					<li class="grid"><a href="${pageContext.request.contextPath }/toregister.shtml">注册</a></li>		
					<%} %>
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
<!---->	
<div class="slider">
	  <div class="callbacks_container">
	     <ul class="rslides" id="slider">
	         <li>
				 <div class="banner1">				  
					  <div class="banner-info">
					  <h3>欢迎来到辣条商城</h3>
					  <p>给您最可口 最温暖 饱含爱的味道 的超级美味的 辣条  ！！！</p>
					  </div>
				 </div>
	         </li>
	         <li>
				 <div class="banner2">
					 <div class="banner-info">
					 <h3>安全是我们的宗旨</h3>
					 <p>美味是我们的追求</p>
					 </div>
				 </div>
			 </li>
	         <li>
	             <div class="banner3">
	        	 <div class="banner-info">
	        	 <h3>完美的辣条</h3>
	          	 <p>等待完美的你！</p>
				 </div>
				 </div>
	         </li>
	      </ul>
	  </div>
  </div>
<!---->
<script src="front/js/bootstrap.js"> </script>

<div class="items">
	 <div class="container">
		 <div class="items-sec">
			 <div class="col-md-3 feature-grid">
				 <a  href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc0()" ><img src="images/img1.jpg" width="300" height="200" alt=""/>	
					 <div class="arrival-info">
						<span id="data0">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
			
					 </div>
					 <div class="viw">
						<a  href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc0()"><span class="glyphicon glyphicon-eye-open" ></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc1()"><img src="images/img2.jpg" width="300" height="200" alt=""/>	
					 <div class="arrival-info">
						<span id="data1">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc1()"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc2()"><img src="images/img3.jpg" width="300" height="200" alt=""/>	
					 <div class="arrival-info">
						<span id="data2">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc2()"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc3()"><img src="images/img4.jpg" width="300" height="200" alt=""/>	
					<div class="arrival-info">
					   <span id="data3">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc3()"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
		 <div class="items-sec btm-sec">
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc4()"><img src="images/img5.jpg"  width="300" height="200" alt=""/>	
					 <div class="arrival-info">
						<span id="data4">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc4()"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc5()"><img src="images/img8.jpg"  width="300" height="200" alt=""/>	
					 <div class="arrival-info">
						<span id="data5">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a onclick = "getDesc5()"><span class="glyphicon glyphicon-eye-open" href ="${pageContext.request.contextPath }/tosingle.shtml" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc6()"><img src="images/img7.jpg" width="300" height="200"  alt=""/>	
					 <div class="arrival-info">
						<span id ="data6"></span>
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc6()"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="col-md-3 feature-grid">
				 <a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc7()"><img src="images/img6.jpg"  width="300" height="200" alt=""/>	
					 <div class="arrival-info">
						<span id="data7">
						 </span> 
						 <span class="pric1"><del>原价 15.0</del></span>
					 </div>
					 <div class="viw">
						<a href ="${pageContext.request.contextPath }/tosingle.shtml" onclick="getDesc7()"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>查看详情</a>
					 </div>
				  </a>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div class="copyrights">Collect from <a href="http://www.mycodes.net/" >网站模板</a></div>
<div class="offers">
	 <div class="container">
	 <h3>选择它并带走它</h3>
	 <div class="offer-grids">
		 <div class="col-md-6 grid-left">
			 <a href="#"><div class="offer-grid1">
				 <div class="ofr-pic">
					 <img src="images/ofr.jpg" width="400" height="300" class="img-responsive" alt=""/>
				 </div>
				 <div class="ofr-pic-info">
					 <h4>安全</h4>
					 <span>表情包强力推荐</span>
					 <p>查看更多</p>
				 </div>
				 <div class="clearfix"></div>
			 </div></a>
		 </div>
		 <div class="col-md-6 grid-right">
			 <a href="#"><div class="offer-grid2">				 
				 <div class="ofr-pic-info2">
					 <h4>可靠</h4>
					 <span>表情包强力推荐</span>
					 <p>查看更多</p>
				 </div>
				 <div class="ofr-pic2">
					 <img src="images/ofr3.jpg" width="400" height="300" class="img-responsive" alt=""/>
				 </div>
				 <div class="clearfix"></div>
			 </div></a>
		 </div>
		 <div class="clearfix"></div>
	 </div>
	 </div>
</div>
<!---->
<div class="subscribe">
	 <div class="container">
		 <h3>发邮件</h3>
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
						<li><a href="${pageContext.request.contextPath }/tologin.shtml">登录</a></li>
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
</oscache:cache>
<!---->
</body>
<script>
$(function (){	
		$.get("${pageContext.request.contextPath }/goods/getgoods.shtml", {goodsState : 1},
	          function(data){		
  							for(var i = 0 ; i < 8 ; i++ ){		
									 var str =										 
										 "<input type='hidden' id='goodsId"+i+"'  value= '" + data[i].goods_id + "' />" +
										 " <h2>美味    "+ data[i].goods_name +" </h2> " +
										 " <p>售价    "+   data[i].goods_price +" </p> "  ;
										if( i == 0 ) data0.innerHTML = str ;
										if( i == 1 ) data1.innerHTML = str ;
										if( i == 2 ) data2.innerHTML = str ;
										if( i == 3 ) data3.innerHTML = str ;
										if( i == 4 ) data4.innerHTML = str ;
										if( i == 5 ) data5.innerHTML = str ;
										if( i == 6 ) data6.innerHTML = str ;
										if( i == 7 ) data7.innerHTML = str ;		  							
  								}  						 					
		});		
}) 
function getDesc0(){
	  var id = $("#goodsId0").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");	
}
function getDesc1(){
	  var id = $("#goodsId1").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
function getDesc2(){
	  var id = $("#goodsId2").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
function getDesc3(){
	  var id = $("#goodsId3").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
function getDesc4(){
	  var id = $("#goodsId4").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
function getDesc5(){
	  var id = $("#goodsId5").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
function getDesc6(){
	  var id = $("#goodsId6").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
function getDesc7(){
	  var id = $("#goodsId7").val() ;	  
	  $.get("${pageContext.request.contextPath }/goods/"+id+".shtml");		
}
</script>
</html>

