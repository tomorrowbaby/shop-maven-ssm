package com.ssm.core.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.core.po.ConsigneeManagement;
import com.ssm.core.po.OrderManagement;
import com.ssm.core.service.ConsigneeManagementService;
import com.ssm.core.service.OrderService;

/**
 * 描述：订单后台控制
 * @author wangyu
 * @date 2019/5/10
 */

@Controller
public class OrderBackController {
	
	@Autowired
	private OrderService orderService ;
	
	@Autowired
	private ConsigneeManagementService consigneeService;
	
	/**
	 * 描述：订单查询
	 * @param order
	 * @param model
	 * @return
	 */
	@RequestMapping("/list")
	public String getOrderList(OrderManagement order,Model model) {
		List<OrderManagement> list = orderService.getList(order);
		 model.addAttribute("list", list) ;
		return "back/order_list" ;
	}
	
	/**
	 * 描述：删除订单
	 * @param order
	 * @param model
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Integer orderId,Model model) {
		try {
			OrderManagement order = new OrderManagement() ;
			orderService.delete(orderId) ;
			model.addAttribute("info", "删除成功") ;
			List<OrderManagement> list = orderService.getList(order);
			 model.addAttribute("list", list) ;
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("info", "删除失败") ;
		}
		return "back/order_list" ;
	}
	
	/**
	 * 描述：收货人信息获取
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping("/getconsignee")
	public String getConsignee(Integer userId ,Integer orderId,Model model) {
		ConsigneeManagement consignee = new ConsigneeManagement() ;
		consignee.setUserId(userId);
		List<ConsigneeManagement> list = consigneeService.get(consignee) ;
		model.addAttribute("list", list) ;
		model.addAttribute("orderId", orderId) ;
		return "back/consignee_info" ;
	}
	
	/**
	 * 描述：更改收货人
	 * @param consigneeId
	 * @param orderId
	 * @param model
	 * @return
	 */
	@RequestMapping("/update")
	public String update(Integer consigneeId,Integer orderId,Model model) {
		try {
			OrderManagement order = new OrderManagement() ;
			orderService.update(consigneeId, orderId);
			model.addAttribute("info", "修改成功") ;
			List<OrderManagement> list = orderService.getList(order);
			 model.addAttribute("list", list) ;
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("info", "修改失败") ;
		}
		return "back/order_list" ;
	}
	
}
