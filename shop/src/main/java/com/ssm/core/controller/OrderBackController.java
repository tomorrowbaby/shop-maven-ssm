package com.ssm.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.ssm.core.po.OrderManagement;
import com.ssm.core.po.UserInfo;

/**
 * 描述：订单后台controller层
 * @author wangyu
 * @date 2019/4/29
 */

@Controller
public class OrderBackController {
	
	@RequestMapping("/toorder_management")
	public String toorder_mangement() {		
		return "back/order_management" ;
	}
	
	
	/**
	 *查询用户信息
	 *@param user 查询条件
	 *@return
	 */
	
	/*
	@RequestMapping(value = "/getuserlist.action" ,method = RequestMethod.GET)
	@ResponseBody
	public Page<UserInfo> list(OrderManagement order , int pageNo,int pageSize ) {		
		Page<UserInfo> pagelist = userservice.pageUser(order, pageNo, pageSize);
		return pagelist ;
	}
	*/
}
