<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>       
        <link href="${pageContext.request.contextPath }/assets/css/codemirror.css" rel="stylesheet"/>
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
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body>
<div class="margin clearfix">
<div class="Order_Details_style"></div>
 <div class="detailed_style">
 <!--收件人信息-->
    <div class="Receiver_style">
     <div class="title_name">选择收件人信息</div>
    <table class="table table-striped">
		<tr tr class="info">
			<th>选择</th>
			<th>收货人编号</th>
			<th>收货人姓名</th>
			<th>收货人地址</th>
			<th>邮编</th>
			<th>电话号码</th>
		</tr>
		<tbody id = "consignee">
		</tbody>
	</table>
    </div>
    <!--订单信息-->
    <div class="product_style">
    <div class="title_name">产品信息</div>
    <div class="Info_style clearfix">
    		<span id="orderShow"></span>
   
    </div>
    </div>
   		 <span id="num"></span>
   	<span id="total"></span>
<div class="Button_operation">
				<a href="${pageContext.request.contextPath }/toproduct.shtml"><button onclick="" class="btn btn-primary radius" type="submit"><i class="icon-save "></i>返回商品列表</button></a>
				<a href="${pageContext.request.contextPath }/adminorder/tosuccess.shtml"><button onclick="order_save()" class="btn btn-primary radius" type="button">&nbsp;&nbsp;提交订单&nbsp;&nbsp;</button></a>
			</div>
            
            
 </div>
</div>
</body>
<script>
var price = new Array(1000) ;
var orderMoney = 0;
var goodsNum = 0 ;
var goodsPrice = 0;
var goodsId = 0 ;
var consigneeId = 0 ;
var defaultConsigneeId = 0 ;
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
				goodsId = data.goodsId ;
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
	      				$("#num").html("<font size='5'>总数量：1 包</font>") ;
	      				$("#total").html("<font size='5'>总金额：￥</font><font color='red' size='6'>"+data.goodsPrice+"</font>元") ; 
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
	  $("#num").html("<font size='5'>总数量："+total+"包</font>") ;
	  $("#total").html("<font size='5'>总金额：￥</font><font color='red' size='6'>"+allMoney+"</font>元") ;                                 	     
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
			   	  $("#num").html("<font size='5'>总数量："+total+"包</font>") ;
			   	  $("#total").html("<font size='5'>总金额：￥</font><font color='red' size='6'>"+allMoney+"</font>元") ;                                    	     
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
	  $("#num").html("<font size='5'>总数量："+total+"包</font>") ;
	  $("#total").html("<font size='5'>总金额：￥</font><font color='red' size='6'>"+allMoney+"</font>元") ;      
}

function order_save(){
		if(stat == 0){
			$.post("${pageContext.request.contextPath }/adminorder/single_order_submit.shtml",
					{
					goodsNum:goodsNum,
					goodsPrice : goodsPrice,
					orderPrice : orderMoney,
					consigneeId : consigneeId,
					goodsId : goodsId
					},
					function(data){						
			});
		}else{
			$.ajax({
					type : "POST",
					url:"${pageContext.request.contextPath }/adminorder/orderlistsave.shtml",
					data : JSON.stringify({priceList:priceList,goodsNumList:goodsNumList,goodsIdList:goodsIdList,consigneeId:consigneeId}) ,
					contentType : "application/json;charset=UTF-8"
			});
			
		}
}
var ci = 0 ;
$(function(){
	var str = "" ;
	$.post("${pageContext.request.contextPath }/adminconsignee/getconsignee.shtml",function(data){
		ci = data.length ;
		for(var i = 0 ; i < data.length ;i++){
			defaultConsigneeId = data[0].consigneeId ;
			consigneeId = defaultConsigneeId ;
			var str0 = 
				"<tr>"+
				'<td class="warning"><span id ="state'+i+'"><button onclick="choose('+data[i].consigneeId+','+i+')" type="button" class="btn btn-primary btn-lg active">选择此收货人</button></span></td>'+
				"<td class='success'>"+data[i].consigneeId +"</td>"+
				"<td class='success'>"+data[i].consigneeName +"</td>"+
				"<td class='success'>"+data[i].consigneeAddress +"</td>"+
				"<td class='success'>"+data[i].consigneeCode +"</td>"+
				"<td class='success'>"+data[i].consigneePhone +"</td>"+
				"</tr>" ;
				str += str0 ;
		}
		if(data == null || data ==''){
			str = 
				'<p><font size="5" color="red">您没有添加收货地址</font></p>'+
				'<a class="btn btn-primary btn-sm active" href="${pageContext.request.contextPath }/adminconsignee/consigneelist.shtml" ><font size="+2">去添加</font></a>' ;
		}
		$("#consignee").html(str);
	});
});

function choose(id,i){
	consigneeId = id ;
	$("#state"+i).html('<button onclick="clean('+id+','+i+')" type="button" class="btn btn-success" id ="state">已选择</button>') ;
	cleanAll(id,i);
}
function cleanAll(id,j){
	for(var i = 0 ;i < ci ; i++){
		if (j != i){
			$("#state"+i).html('<button onclick="choose('+id+','+i+')" type="button" class="btn btn-primary btn-lg active">选择此收货人</button>') ;
		}
	}
}

function clean(id,i){
	$("#state"+i).html('<button onclick="choose('+id+','+i+')" type="button" class="btn btn-primary btn-lg active">选择此收货人</button>') ;
	consigneeId = defaultConsigneeId ;
}
</script>
</html>
