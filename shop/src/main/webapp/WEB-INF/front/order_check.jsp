<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>       
        <link href="${pageContext.request.contextPath }/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
        <script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/typeahead-bs2.min.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/H-ui.js"></script>      	
		<script src="${pageContext.request.contextPath }/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath }/assets/layer/layer.js" type="text/javascript" ></script>          
        <script src="${pageContext.request.contextPath }/assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath }/assets/js/jquery.easy-pie-chart.min.js"></script>
        <script src="${pageContext.request.contextPath }/js/lrtk.js" type="text/javascript" ></script>
<title>订单详细</title>
</head>

<body>
<div class="margin clearfix">
<div class="Order_Details_style">
<div class="Numbering">订单编号:<b>NJHDXJ201509-001</b></div></div>
 <div class="detailed_style">
 <!--收件人信息-->
    <div class="Receiver_style">
     <div class="title_name">收件人信息</div>
     <div class="Info_style clearfix">
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 收件人姓名： </label>
         <div class="o_content">张孝全</div>
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 收件人电话： </label>
         <div class="o_content">16543432343</div>
        </div>
         <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 收件地邮编： </label>
         <div class="o_content">104545</div>
        </div>
         <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 收件地址： </label>
         <div class="o_content">江苏南京市雨花台区郁金香软件大厦3懂3单元302室</div>
        </div>
     </div>
    </div>
    <!--订单信息-->
    <div class="product_style">
    <div class="title_name">产品信息</div>
    <div class="Info_style clearfix">
    		<span id="orderShow"></span>
    </div>
    </div>
    <!--总价-->
    <div class="Total_style">
     <div class="Info_style clearfix">
      <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 支付方式： </label>
         <div class="o_content">在线支付</div>
         		
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 支付状态： </label>
         <div class="o_content">等待付款</div>
        </div>
        <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 订单生成日期： </label>
         <div class="o_content">2016-7-5</div>
        </div>
         <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 快递名称： </label>
         <div class="o_content">中通快递</div>
        </div>
         <div class="col-xs-3">  
         <label class="label_name" for="form-field-2"> 发货日期： </label>
         <div class="o_content">2016-7-19</div>
        </div>
        </div>
      <div class="Total_m_style"><span class="Total" id="num"></span><span class="Total_price" id="total"></span></div>
    </div>   
<div class="Button_operation">
				<a href="${pageContext.request.contextPath }/toproduct.shtml"><button onclick="" class="btn btn-primary radius" type="submit"><i class="icon-save "></i>返回商品列表</button></a>
				<a href="${pageContext.request.contextPath }/adminorder/tosuccess.shtml"><button onclick="order_save()" class="btn btn-primary radius" type="button">&nbsp;&nbsp;提交订单&nbsp;&nbsp;</button></a>
			</div>
            
            
 </div>
</div>
</body>
<script>
window.onload=function(){
	if (location.href.indexOf("?xyz=")<0)
	{
	location.href=location.href+"?xyz="+Math.random();
	}
	}
var price = new Array(1000) ;
var orderMoney = 0;
var goodsNum = 0 ;
var goodsPrice = 0;
var goodsId = 0 ;


/*
 * 购物车单件商品
 */
var stat = 0 ;
$(function(){
	$.post("${pageContext.request.contextPath }/adminorder/ordershowcart.shtml",
			function(data){	
				if(data == null || data=='') {
						stat = 1 ;
						//跳转到多件商品
						return 	showCart() ; 
				}	
				price[0] = data.goodsPrice ;
		 		 var str =
			  		'<div class="product_info clearfix">'+
	      			'<a href="#" class="img_link"><img src="http://127.0.0.1:9999/shopimg/upload/'+data.goodsUrl+'" /></a>'+
	      			'<a href="#" class="name_link"><font size="6">'+data.goodsName+'</font></a><br>' +
	      			'<br>'+
	      			'<br>'+
	     			 '<p><font size="5" color="blue">数量：<input type="text" style="height:30px;width:30px" value="1" id="goodsNum"></font></p>' +
	     			 '<br>'+
	      			 '<br>'+
	     			 '<p>价格：<b class="price"><i>￥</i>'+data.goodsPrice+'</b></p>  ' +
	      			 '</div>'  ;
	      				$("#orderShow").html(str) ;
	      				$("#num").html("总数量：1 包") ;
	      				$("#total").html("总金额：￥<font color='red' size='6'>"+data.goodsPrice+"</font>元") ; 
	      				orderMoney = data.goodsPrice ;
	      				goodsNum = 1 ; 
	      				goodsPrice = data.goodsPrice ;
	      				goodsId = data.goodsId ;
	});
});
setTimeout('test()',2000);
function test(){
	$("input[type='text']").change( function() {
	   	  if(stat == 0) money() ;
	   	  else allMoney() ;
		});
	$("button").blur( function() {
				if(stat == 0) money() ;
	   	  else allMoney() ;
		});
}

function money(){
	  	var allMoney = 0 ;
    	var total = 0 ;
    	 	var num = $("#goodsNum").val(); 	
    	 	total =num;
    	 	allMoney = num*price[0] ;
    	 	orderMoney = allMoney ;
    	 	goodsNum = total ;
	  $("#num").html("总数量："+total+"包") ;
	  $("#total").html("总金额：￥<font color='red' size='6'>"+allMoney+"</font>元") ;                                 	     
}


var goods ;
var priceList = new Array() ;
var goodsNumList = new Array() ;
var goodsIdList = new Array() ;

function showCart(){
	$.post("${pageContext.request.contextPath }/adminorder/orderlist.shtml",
			function(data){
				goods = data.length ;
				var orderStr = "" ;
				if (data.length <= 0){
					return ;
				}else{
					for(var i=0 ;i < data.length ;i++){			
								price[i] = data[i].goods_price ;
								goodsPrice[i] = data[i].goods_price ;
								priceList[i] = data[i].goods_price ;
								goodsNumList[i] = 1 ;
								goodsIdList[i] = data[i].goods_id ;
						     var str = 
						    	 '<div class="product_info clearfix">'+
							      '<a href="#" class="img_link"><img src="http://127.0.0.1:9999/shopimg/upload/'+data[i].goods_url+'" /></a>'+
							      '<a href="#" class="name_link"><font size="6">'+data[i].goods_name+'</font></a><br>' +
							      '<br>'+
							      '<br>'+
							      '<p><font size="5" color="blue">数量：<input type="text" style="height:30px;width:30px" value="1" id="goodsNum'+i+'"/></font></p>' +
							      '<br>'+
							      '<br>'+
							      '<p>价格：<b class="price"><i>￥</i>'+data[i].goods_price+'</b></p>  ' +
							      '</div>'  ; 				  
							  orderStr += str ;	
					     }
				    $("#orderShow").html(orderStr) ;
				    var allMoney = 0 ;
				    var total = 0 ;
				    for(i = 0;i < data.length ;i++){
				    	 	var num = $("#goodsNum"+i).val();
				    	 	var num0 = parseInt(num) ;
				    	 	total = total+num0 ;
				    	 	allMoney = allMoney + num*price[i] ;
				   		 }
			   	  $("#num").html("总数量："+total+"包") ;
			   	  $("#total").html("总金额：￥<font color='red' size='6'>"+allMoney+"</font>元") ;                                    	     
				}									
	 });
}

function allMoney(){
	  var allMoney = 0 ;
    var total = 0 ;
    for(i = 0;i < priceList.length ;i++){
    	 	var num = $("#goodsNum"+i).val();
    	 	goodsNumList[i] = num ;
    	 	var num0 = parseInt(num) ;
    	 	total = total+num0 ;
    	 	allMoney = allMoney + num0*priceList[i] ;
   		 }   
	  $("#num").html("总数量："+total+"包") ;
	  $("#total").html("总金额：￥<font color='red' size='6'>"+allMoney+"</font>元") ;      
}

function order_save(){
		if(stat == 0){
			$.post("${pageContext.request.contextPath }/adminorder/single_order_submit.shtml",
					{
					goodsNum:goodsNum,
					goodsPrice : goodsPrice,
					orderPrice : orderMoney
					},
					function(data){						
			});
		}else{
			$.ajax({
					type : "POST",
					url:"${pageContext.request.contextPath }/adminorder/orderlistsave.shtml",
					data : JSON.stringify({priceList:priceList,goodsNumList:goodsNumList,goodsIdList:goodsIdList}) ,
					contentType : "application/json;charset=UTF-8"
			});
			
		}
}
</script>
</html>
