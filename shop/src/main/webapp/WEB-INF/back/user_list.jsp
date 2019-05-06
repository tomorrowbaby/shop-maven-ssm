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

<title>用户列表</title>
</head>
<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
      <div class="d_Confirm_Order_style">
    <div class="search_style">
      <ul class="search_content clearfix">
       <li><label class="l_f">会员名称</label><input name="username" type="text"  class="text_add" placeholder="输入会员名称"  style=" width:300px" id="inputusername"/></li>
       <li><label class="l_f">会员手机</label><input name="username" type="text"  class="text_add" placeholder="输入会员手机"  style=" width:300px" id="inputuserphone"/></li>
       <li><label class="l_f">会员类型</label><input name="username" type="text"  class="text_add" placeholder="输入会员类型"  style=" width:300px" id="inputusertype"/></li>
       <li><label class="l_f">注册日期</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
             <li style="width:90px;"><button type="button" class="btn_search" onclick="location.reload()">查询</button></li>
      </ul>
    </div>
     <!---->
     <div class="border clearfix">
       <span class="l_f">
        <a href="javascript:ovid()" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="icon-trash"></i>批量删除</a>
         <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">批量导入</button>
        
       </span>
             <span class="r_f" id="rows"></span>
     </div>
     <!---->
     <div class="table_menu_list" >
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="100"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="100">ID</th>
				<th width="150">用户名</th>
				<th width="100">性别</th>
				<th width="200">手机</th>
				<th width="200">密码</th>
				<th width="200">注册日期</th>
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
<!--添加用户图层-->
<div class="add_menber" id="add_menber_style" style="display:none">
    <ul class=" page-content">
     <li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span class="add_name" ><input value="" name="用户名" type="text"  class="text_add" id="username"></span><div class="prompt r_f"></div></li>
     		<li><label class="label_name">密&nbsp;&nbsp;&nbsp;&nbsp;码：</label><span class="add_name" ><input value="12345" name="用户名" type="text"  class="text_add" id="password"></span><div class="prompt r_f"></div></li>
     <li><label class="label_name" id="usersex">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label><span class="add_name">
     <label><input name="form-field-radio01" type="radio" checked="checked" class="ace"  value="男"><span class="lbl">男</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio01" type="radio" class="ace"  value="女" ><span class="lbl" >女</span></label>&nbsp;&nbsp;&nbsp;   	
     </span>
     <div class="prompt r_f"></div>
     </li>
     		<span id="info" style="color:red"></span>
     <li><label class="label_name">移动电话：</label><span class="add_name"><input name="移动电话" type="text"  class="text_add" id="userphone"/></span><div class="prompt r_f"></div></li>
     		<li><label class="label_name" >用户类型：</label><span class="add_name">
     <label><input name="form-field-radio03" type="radio" checked="checked" class="ace"  value="普通用户"><span class="lbl">普通用户</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio03" type="radio" class="ace"  value="管理员" ><span class="lbl" >管理员</span></label>&nbsp;&nbsp;&nbsp;
     <li><label class="label_name">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label><span class="add_name">
     <label><input name="form-field-radio1" type="radio" checked="checked" class="ace"><span class="lbl">上架中</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio1"type="radio" class="ace"><span class="lbl">关闭</span></label></span><div class="prompt r_f"></div></li>
    </ul>
 </div>
 
<form action="uploaduser.action" method="post" enctype="multipart/form-data">						
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">用户信息导入</h4>
      </div>
      <div class="modal-body">
        	<input type="file" name="upfile">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">导入数据</button>
        </div>
    </div>
  </div>
</div>
				</form>			
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
$(function(total) {
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
		var name = $("#inputusername").val();
		var phone = $("#inputuserphone").val();
		var type = $("#inputusertype").val();
		var date = $("#start").val();
		var str = "" ;
		var str0 = "" ;
		$.ajax({
			url : "${pageContext.request.contextPath }/getuserlist.action",
			type : "GET" ,
			data : {userName:name,userPhone:phone,userType:type,userDate:date,pageNo:currPage,pageSize:limit} ,
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
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable( {
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
				"bStateSave": true,//状态保存
				"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		] } );								
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});						
				});			
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();		
					var off2 = $source.offset();
					var w2 = $source.width();			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			})

/*用户-添加*/
 $('#member_add').on('click', function(){
    layer.open({
        type: 1,
        title: '添加用户',
		maxmin: true, 
		shadeClose: true, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_menber_style'),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var sex = $(".add_menber input[name$='form-field-radio01']:checked").val() ;
		 var type =  $(".add_menber input[name$='form-field-radio03']:checked").val() ;
		 var name = $("#username").val() ;
		 var phone = $("#userphone").val() ;
		 var password = $("#password").val() ;  
		 var num=0;
		 var str="";		 		 		 		 		 		 
     $(".add_menber input[type$='text']").each(function(n){
    	 	
          if($(this).val()=="")
          {              
        	  layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
						icon:0,								
          }); 			 
						num++ ;
            return false;            
          } 
		 });  
    if (name != null && name != '' && phone != null && phone != '')
        add(name,sex,phone,password,type) ;	 
 function add(name,sex,phone,password,type){ 	  	
 					 var a = $.ajax({			
							url : "${pageContext.request.contextPath }/adduser.action",
							type : "POST" ,
							data : JSON.stringify({userName:name,userSex:sex,userPhone:phone,userPw:password,userType:type}) ,
							contentType : "application/json;charset=UTF-8",
							dataType : "json" ,
							success : function(data){		
									if(data == 0){
											layer.alert("手机号码不能重复！\r\n",{
					                	title: '提示框',				
											icon:0,								
					          				}); 										
									}									
							          else{
										  layer.alert('添加成功！',{
							               title: '提示框',				
											icon:1,		
										  });
										   layer.close(index);	
									  }		  		     				
							}
    				 });	 					 					
   	}	  
		}
    });
});
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url+'#?='+id,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}
/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*用户-编辑*/
function member_edit(id){
	  layer.open({
        type: 1,
        title: '修改用户信息',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_menber_style'),
		btn:['提交','取消'],
		yes:function(index,layero){	
			 var sex = $(".add_menber input[name$='form-field-radio01']:checked").val() ;
			 var type =  $(".add_menber input[name$='form-field-radio03']:checked").val() ;
			 var name = $("#username").val() ;
			 var phone = $("#userphone").val() ;
			 var password = $("#password").val() ; 
			 var num=0;
		   var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
     if (name != null && name != '' && phone != null && phone != '')
         edit(name,sex,phone,password,type,id) ; 		 
 function edit(name,sex,phone,password,type,id){ 	  	
  					  $.ajax({			
 							url : "${pageContext.request.contextPath }/edituser.action",
 							type : "POST" ,
 							data : JSON.stringify({userId:id,userName:name,userSex:sex,userPhone:phone,userPw:password,userType:type}) ,
 							contentType : "application/json;charset=UTF-8",
 							dataType : "json" ,
 							success : function(data){		
 									if(data == 0){
 											layer.alert("编辑失败，手机号码不能重复！\r\n",{
 					                	title: '提示框',				
 											icon:0,					
 					          				}); 			 
 											return false ;
 									} else{
 										  layer.alert('修改成功！',{
 							               title: '提示框',				
 										icon:1,												
 										  });										 
 										   layer.close(index);										 							
 									  }		  		     				
 							}
     				 });	 					 					
    	}		  
		}
    });
}
/*用户-删除*/
function member_del(id){
	layer.confirm('确认要删除吗？',function(){
		$.ajax({
			url : "${pageContext.request.contextPath }/deleteuser.action",
			type : "GET" ,
			data : {userId:id} ,
			contentType : "application/json;charset=utf-8",
			success:function(data){
				if(data == 0 ){
					layer.msg('删除失败！',{icon:0,time:2000});
				}else{
					layer.msg('已删除!',{icon:1,time:2000});
					location.reload() ;
				}				
			}			
		});
	});	
}
laydate({
    elem: '#start',
    event: 'focus' 
});

</script>