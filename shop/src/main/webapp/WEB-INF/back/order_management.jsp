<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  
        <link rel="stylesheet" href="css/style.css"/>       
        <link href="assets/css/codemirror.css" rel="stylesheet"/>
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
				<link href="bootStrapPager/css/bootstrap.min.css" rel="stylesheet" />
    	 <script src="bootStrapPager/js/jquery-1.11.1.min.js"></script>
    	 <script src="bootStrapPager/js/bootstrap.js"></script>
    	 <script src="bootStrapPager/js/extendPagination.js"></script>
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
			<script src="assets/js/jquery.min.js"></script>
			<link href=" bootStrapPager/css/bootstrap.min.css" rel="stylesheet" />
    	 <script src="bootStrapPager/js/jquery-1.11.1.min.js"></script>
    	 <script src="bootStrapPager/js/bootstrap.js"></script>
    	 <script src="bootStrapPager/js/extendPagination.js"></script>
		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
	
		<!-- page specific plugin scripts -->
        <script type="text/javascript" src="js/H-ui.js"></script> 
        <script type="text/javascript" src="js/H-ui.admin.js"></script> 
        <script src="assets/layer/layer.js" type="text/javascript" ></script>
        <script src="assets/laydate/laydate.js" type="text/javascript"></script>

<title>订单列表</title>
</head>
<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
      <div class="d_Confirm_Order_style">
    <div class="search_style">
      <ul class="search_content clearfix">
       <li><label class="l_f">订单编号</label><input name="username" type="text"  class="text_add" placeholder="输入订单编号"  style=" width:300px" id="inputOrderId"/></li>
       <li><label class="l_f">注册日期</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
             <li style="width:90px;"><button type="button" class="btn_search" onclick="location.reload()">查询</button></li>
      </ul>
    </div>
   
     <!---->
     <div class="table_menu_list" >
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="100"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="100">订单编号</th>
				<th width="150">订单价格</th>
				<th width="100">产品数量</th>
				<th width="200">单价</th>
				<th width="200">总价</th>
				<th width="200">生成日期</th>
        <th width="200">类型</th>         
        <th wideth="150">状态</th>          
				<th width="250">操作</th>
			</tr>
		</thead>
	   	<tbody id = "tb">
	   	</tbody>
	</table>
<div id="callBackPager"></div>
   </div>
  </div>
 </div>
</div>

 	
</body>
</html>
<script type="text/javascript">
$(function(){
	 $("#userphone").blur(function(){
		 //ajax
		 $.post('${pageContext.request.contextPath }/selectphone.action',{userPhone:$(this).val()},function(json){
			 $("#info").html(json.info);
		 },"json");
	 });
});
var total=100 ;
$(function(total) {userName:name,userPhone:phone,userType:type,userDate:date
	var name = $("#inputusername").val();
	var phone = $("#inputuserphone").val();
	var type = $("#inputusertype").val();
	var date = $("#start").val();
	var str = "" ;
	var str0 = "" ;
	$.ajax({
		url : "${pageContext.request.contextPath }/gettotal.action",
		type : "GET" ,
		data : {userName:name,userPhone:phone,userType:type,userDate:date} ,
		contentType : "application/json;charest=utf-8",
		dataType : "json" ,
		success:function(data){
                total = data ; 
                rows.innerHTML = "共：<b>"+total+"</b>条" ;
                				//进入页面的时候需要调用callBackPagination这个函数，传入当前页，页大小，总页数
                callBackPagination(1, 15, total+1);                 
            },error:function(data){
                alert(系统错误);
            }
	});
})
  
//这段代码不需要动
function callBackPagination(showCount, limit, totalCount) {
    createTable(1, limit, totalCount); //第一次调用(加载第一页数据)
    page(showCount, limit, totalCount) ;
   
}
function page(showCount, limit, totalCount){
	$('#callBackPager').extendPagination({  //根据传入的参数生成分页控件
		totalCount: totalCount,
    showCount: showCount,
    limit: limit,           
    callback: function (curr, limit, totalCount) {//当点击分页控件页码时会触发此回调函数
        createTable(curr, limit, totalCount);
    }
});
}

//用的时候只需要写下面这段ajax代码就可以
function createTable(currPage, limit, total) {
		var name = $("#inputOrderId").val();
		var date = $("#start").val();
		var str = "" ;
		var str0 = "" ;
		$.ajax({
			url : "${pageContext.request.contextPath }/getorderlist.action",
			type : "GET" ,
			data : {,pageNo:currPage,pageSize:limit} ,
			contentType : "application/json;charest=utf-8",
			dataType : "json" ,
			success:function(data){
	                 for(var i = 0 ;i < data.length; i++){
	                   var id = data[i].userId ;
						var name = data[i].userName ;
	                    var sex = data[i].userSex ;
	                    var phone = data[i].userPhone ;
	                    var password = data[i].userPw ;
	                    var type = data[i].userType ;
	                    var date = data[i].userDate ;
	                    var str0 =
	                    "<tr>"+
	                    '<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>'+
	                    "<td>"+ id +"</td>"+
	                    "<td>"+ name +"</td>"+
	                    "<td>"+ sex +"</td>"+
	                    "<td>"+ phone +"</td>"+
	                    "<td>"+ password +"</td>"+
	                    "<td>"+ date +"</td>"+
	                    "<td>"+ type +"</td>"+
	                    '<td class="td-status"><span class="label label-success radius">已启用</span></td>'+
	                    '<td class="td-manage">  '+
	                    '<a onClick="member_stop(this,'+id+')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>' +
	                    '<a title="编辑" onclick="member_edit('+id+')" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> '+
	                    '<a title="删除" href="javascript:;"  onclick="member_del('+id+')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a>'+
	                    '</td>'+
	                  	"</tr>" ;
	                  	str = str + str0 ;
	                 }					     
									  tb.innerHTML = str ;	                 
	            },error:function(data){
	                alert(系统错误);
	           }
	});
}


</script>