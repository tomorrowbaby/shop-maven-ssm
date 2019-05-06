<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" /> 

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>       
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="Widget/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css" />
        <link href="Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />   
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
	    <script src="js/jquery-1.9.1.min.js"></script>   
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/typeahead-bs2.min.js"></script>
		<!-- page specific plugin scripts -->

        <script type="text/javascript" src="js/H-ui.js"></script> 
        <script type="text/javascript" src="js/H-ui.admin.js"></script> 
        <script src="assets/layer/layer.js" type="text/javascript" ></script>
        <script src="assets/laydate/laydate.js" type="text/javascript"></script>
        <script type="text/javascript" src="Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script> 
        <script src="js/lrtk.js" type="text/javascript" ></script>
		<script src="assets/js/jquery.min.js"></script><script src="assets/js/jquery.min.js"></script> 
		<link href=" bootStrapPager/css/bootstrap.min.css" rel="stylesheet" />    
		<script src="bootStrapPager/js/jquery-1.11.1.min.js"></script>    
		<script src="bootStrapPager/js/bootstrap.js"></script>    
		<script src="bootStrapPager/js/extendPagination.js"></script>
<title>产品列表</title>
</head>
<body>
<div class=" page-content clearfix">
 <div id="products_style">
    <div class="search_style">
     
      <ul class="search_content clearfix">
       <li><label class="l_f">产品名称</label><input name="goodsName" type="text"  class="text_add" placeholder="输入品牌名称"  style=" width:250px" id="goodsName"/></li>      
       <li><label class="l_f">添加时间</label><input class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
       <li><label class="label_name" >商品状态：</label>
       <label><input name="form-field-radio03" type="radio" checked="checked" value="" /><span class="lbl">全部</span></label>&nbsp;&nbsp;&nbsp;
    	 <label><input name="form-field-radio03" type="radio" checked="checked" class="ace"  value="1" /><span class="lbl">上架中</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio03" type="radio" class="ace"  value="0"  /><span class="lbl" >以下架</span></label>&nbsp;&nbsp;&nbsp;   	</li>
       <li style="width:180px;"><button type="button"  onclick="location.reload()"><i class="icon-search"></i>查询</button></li>
      </ul>
    </div>
     <div class="border clearfix">
       <span class="l_f">
        <a href="${pageContext.request.contextPath }/topicture_add.action" title="添加商品" class="btn btn-warning Order_form"><i class="icon-plus"></i>添加商品</a>
        <a href="javascript:ovid()" class="btn btn-danger"><i class="icon-trash"></i>批量删除</a>
       </span>
       <span class="r_f" id="rows"></span>
     </div>
     <!--产品列表展示-->
     <div class="h_products_list clearfix" id="products_list">
       <div id="scrollsidebar" class="left_Treeview">
        <div class="show_btn" id="rightArrow"><span></span></div>
        <div class="widget-box side_content" >
         <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
         <div class="side_list"><div class="widget-header header-color-green2"><h4 class="lighter smaller">产品类型列表</h4></div>
         <div class="widget-body">
          <div class="widget-main padding-8"><div id="treeDemo" class="ztree"></div></div>
        </div>
       </div>
      </div>  
     </div>
         <div class="table_menu_list" id="testIframe">
       <table class="table table-striped table-bordered table-hover" id="sample-table">
		<thead>
		 <tr>
				<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80px">产品编号</th>
				<th width="250px">产品名称</th>
				<th width="100px">现价</th>
        <th width="250px">产品图片</th>				
				<th width="180px">加入时间</th>
				<th width="70px">状态</th>                
				<th width="200px">操作</th>
			</tr>
		</thead>
	<tbody id="tb">
        
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

function Todate(num)  
{       //Fri Oct 31 18:00:00 UTC+0800 2008  
        num=num+"";
        var date="";
        var month=new Array();
        month["Jan"]=1;month["Feb"]=2;month["Mar"]=3;month["Apr"]=4;month["May"]=5;month["Jan"]=6;
        month["Jul"]=7;month["Aug"]=8;month["Sep"]=9;month["Oct"]=10;month["Nov"]=11;month["Dec"]=12;
       			//时间       			
        str=num.split(" ");
         // date=str[5]+"-";
        		//显示到时间，如果显示到日期，去掉str[4]
        date=date+str[3]+"-"+month[str[1]]+"-"+str[2]+" "+" "+str[4];      		
        return date;
}
var total=100 ;
$(function(total) {	
	var goodsName = $("#goodsName").val();
	var goodsState = $("input[name$='form-field-radio03']:checked").val();
	var date = $("#start").val();
	var str = "" ;
	var str0 = "" ;
	$.ajax({
		url : "${pageContext.request.contextPath }/goods/gettotal.action",
		type : "GET" ,
		data : {goodsName:goodsName,goodsState:goodsState,goodsTime:date} ,
		contentType : "application/json;charest=utf-8",
		dataType : "json" ,
		success:function(data){
                total = data ; 
                rows.innerHTML = "共：<b>"+total+"</b>条" ;
                				//进入页面的时候需要调用callBackPagination这个函数，传入当前页，页大小，总页数
                callBackPagination(1, 10, total+1);                 
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

function createTable(currPage, limit, total) {
	var goodsName = $("#goodsName").val();
	var goodsState = $("input[name$='form-field-radio03']:checked").val();
	var date = $("#start").val();
	var str = "" ;
	var str0 = "" ;	
	$.ajax({
		url : "${pageContext.request.contextPath }/goods/getlist.action",
		type : "GET" ,
		data : {goodsName:goodsName,goodsState:goodsState,goodsTime:date,pageNo:currPage,pageSize:limit} ,
		contentType : "application/json;charest=utf-8",
		dataType : "json" ,
		success:function(data){
                 for(var i = 0 ;i < data.length; i++){
                   	var id = data[i].goods_id ;
										var name = data[i].goods_name ;
                    var price = data[i].goods_price ;
                    var url = data[i].goods_url ; 
	  			          var desc = data[i].goods_desc ; 
                    var state = data[i].goods_state ;
                    if (state ==1) state = "上架中" 
                    else state ="以下架" ;
                    var jsonTime = data[i].goods_time ;
										var jsTime = new Date(data[i].goods_time) ;
										var time = Todate(jsTime) ;
										if (state == "上架中") {
                    var str0 =
                    "<tr>"+
                    '<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>'+
                    "<td>"+ id +"</td>"+
                    '<td><a onClick="show('+id+')"  href="${pageContext.request.contextPath }/toproduct_show.action" >'+name+'</a></td>' +
                    "<td>"+ price +"</td>"+
                    "<td> <img src=http://127.0.0.1:9999/shopimg/upload/"+url+" width='100' height='100'/></td>"+
                    "<td>"+ time +"</td>"+
                    '<td class="td-status"><span class="label label-success radius">'+state+'</span></td>'+
                    '<td class="td-manage">  '+
                    '<a onClick="member_stop(this,'+id+')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>' +
                    '<a title="编辑" onclick="show('+id+')" href="${pageContext.request.contextPath }/toproduct_update.action"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> '+
                    '<a title="删除" href="javascript:;"  onclick="member_del('+id+')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a>'+
                    '</td>'+
                  	"</tr>" ;
										}else{
											  var str0 =
								                    "<tr>"+
								                    '<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>'+
								                    "<td>"+ id +"</td>"+
								                    '<td><a onClick="show('+id+')"  href="${pageContext.request.contextPath }/toproduct_show.action" >'+name+'</a></td>' +
								                    "<td>"+ price +"</td>"+
								                    "<td> <img src=http://127.0.0.1:9999/shopimg/upload/"+url+" width='100' height='100'/></td>"+
								                    "<td>"+ time +"</td>"+
								                    '<td class="td-status"><span class="label label-fail radius">'+state+'</span></td>'+
								                    '<td class="td-manage">  '+
								                    '<a onClick="member_start(this,'+id+')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>' +
								                    '<a title="编辑" onclick="show('+id+')" href="${pageContext.request.contextPath }/toproduct_update.action"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a> '+
								                    '<a title="删除" href="javascript:;"  onclick="member_del('+id+')" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a>'+
								                    '</td>'+
								                  	"</tr>" ;
										}
                  	str = str + str0 ;               	
                 }					     
								  tb.innerHTML = str ;	                 
            },error:function(data){
                alert(系统错误);
            }
	});
}
</script>

<script>
//获取商品详情
function show(id){
	$.post("${pageContext.request.contextPath }/goods/getdesc.action", { goodsId: id },
	          function(data){		         
	});
} 

var info = "${info}" ;
if (info.length > 0) alert(info) ;
jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable( {
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,2,3,4,5,8,9]}// 制定列不参与排序
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
			});
 laydate({
    elem: '#start',
    event: 'focus' 
});
$(function() { 
	$("#products_style").fix({
		float : 'left',
		//minStatue : true,
		skin : 'green',	
		durationTime :false,
		spacingw:30,//设置隐藏时的距离
	    spacingh:260,//设置显示时间距
	});
});
</script>
<script type="text/javascript">
//初始化宽度、高度  
 $(".widget-box").height($(window).height()-215); 
$(".table_menu_list").width($(window).width()-260);
 $(".table_menu_list").height($(window).height()-215);
  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
	$(".widget-box").height($(window).height()-215);
	 $(".table_menu_list").width($(window).width()-260);
	  $(".table_menu_list").height($(window).height()-215);
	})
 
/*******树状图*******/
var setting = {
	view: {
		dblClickExpand: false,
		showLine: false,
		selectedMulti: false
	},
	data: {
		simpleData: {
			enable:true,
			idKey: "id",
			pIdKey: "pId",
			rootPId: ""
		}
	},
	callback: {
		beforeClick: function(treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("tree");
			if (treeNode.isParent) {
				zTree.expandNode(treeNode);
				return false;
			} else {
				demoIframe.attr("src",treeNode.file + ".html");
				return true;
			}
		}
	}
};

var zNodes =[
	{ id:1, pId:0, name:"商城分类列表", open:true},
	{ id:11, pId:1, name:"蔬菜水果"},
	{ id:111, pId:11, name:"蔬菜"},
	{ id:112, pId:11, name:"苹果"},
	{ id:113, pId:11, name:"大蒜"},
	{ id:114, pId:11, name:"白菜"},
	{ id:115, pId:11, name:"青菜"},
	{ id:12, pId:1, name:"手机数码"},
	{ id:121, pId:12, name:"手机 "},
	{ id:122, pId:12, name:"照相机 "},
	{ id:13, pId:1, name:"电脑配件"},
	{ id:131, pId:13, name:"手机 "},
	{ id:122, pId:13, name:"照相机 "},
	{ id:14, pId:1, name:"服装鞋帽"},
	{ id:141, pId:14, name:"手机 "},
	{ id:42, pId:14, name:"照相机 "},
];
		
var code;
		
function showCode(str) {
	if (!code) code = $("#code");
	code.empty();
	code.append("<li>"+str+"</li>");
}
		
$(document).ready(function(){
	var t = $("#treeDemo");
	t = $.fn.zTree.init(t, setting, zNodes);
	demoIframe = $("#testIframe");
	demoIframe.bind("load", loadReady);
	var zTree = $.fn.zTree.getZTreeObj("tree");
	zTree.selectNode(zTree.getNodeByParam("id",'11'));
});	
/*商品详情展示*/
 
 
/*产品-停用*/
function member_stop(obj,id){
	var goodsId = id ;
	layer.confirm('确认要停用吗？',function(index){
		

		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
	$.post("${pageContext.request.contextPath }/goods/setstate.action", { goodsId: id ,goodsState: "0" },
	          function(data){		         
 });
}

/*产品-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
	$.post("${pageContext.request.contextPath }/goods/setstate.action", { goodsId : id ,goodsState: "1" },
	          function(data){	         
	   });
}
/*产品-编辑*/
function update(id,name,price,url,desc){
	alert(id);
}

/*产品-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}

//面包屑返回值
var index = parent.layer.getFrameIndex(window.name);
parent.layer.iframeAuto(index);
$('.Order_form').on('click', function(){
	var cname = $(this).attr("title");
	var chref = $(this).attr("href");
	var cnames = parent.$('.Current_page').html();
	var herf = parent.$("#iframe").attr("src");
    parent.$('#parentIframe').html(cname);
    parent.$('#iframe').attr("src",chref).ready();;
	parent.$('#parentIframe').css("display","inline-block");
	parent.$('.Current_page').attr({"name":herf,"href":"javascript:void(0)"}).css({"color":"#4c8fbd","cursor":"pointer"});
	//parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
    parent.layer.close(index);
	
});
</script>
