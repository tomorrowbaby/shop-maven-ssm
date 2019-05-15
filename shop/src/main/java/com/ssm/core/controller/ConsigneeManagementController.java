package com.ssm.core.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.core.po.ConsigneeManagement;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.ConsigneeManagementService;
/**
 * 用户收货地址
 * @author centos01
 *
 */
@Controller
@RequestMapping("/adminconsignee")
public class ConsigneeManagementController {
	
	@Autowired
	ConsigneeManagementService cmService ;
	
	/**
	 * 描述：查询地址列表
	 * @return
	 */
	@RequestMapping("/consigneelist")
	public String consigneeList(ConsigneeManagement cm,HttpSession session,Model model) {
		UserInfo user = (UserInfo)session.getAttribute("USER") ;
		cm.setUserId(user.getUserId());
		try {
			List<ConsigneeManagement> cmList = cmService.get(cm) ;
			model.addAttribute("list",cmList) ;
		}catch(Exception e){
			e.printStackTrace();
		}
		return "front/consignee_list" ;
	}
	
	/**
	 * 描述：添加地址
	 * @param consignee
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/add")
	public String addConsignee(ConsigneeManagement consignee,
			Model model ,HttpSession session) {
		UserInfo user = (UserInfo)session.getAttribute("USER");
		if( user != null) {
			consignee.setUserId(user.getUserId());
		}
		try {
			cmService.add(consignee) ;
			model.addAttribute("info","添加成功") ;
		}catch(Exception e){
			e.printStackTrace();
			model.addAttribute("info","添加失败") ;
		}
		return "front/consignee_list" ;
	}
	
	
	@RequestMapping("/update")
	public String updateConsignee(ConsigneeManagement consignee,
			Model model, HttpSession session) {
			try {
				cmService.update(consignee) ;
				model.addAttribute("info", "修改成功") ;
			}catch(Exception e) {
				e.printStackTrace();
				model.addAttribute("info", "修改失败") ;
			}
		return "front/consignee_list" ;
	}
	
	@RequestMapping("/delete")
	public String deleteConsignee(Integer consigneeId,Model model) {
		try {
			cmService.delete(consigneeId) ;
			model.addAttribute("info", "删除成功") ;
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("info", "删除失败") ;
		}
		return "front/consignee_list" ;
	}
	
	@RequestMapping(value="/getconsignee" , method=RequestMethod.POST)
	@ResponseBody
	public List<ConsigneeManagement> consigneeOrder(HttpSession session){
		ConsigneeManagement cm = new ConsigneeManagement() ;
		UserInfo user = (UserInfo)session.getAttribute("USER") ;
		cm.setUserId(user.getUserId());
		List<ConsigneeManagement> cmList = null ;
		try {
			cmList = cmService.get(cm) ;
		}catch(Exception e){
			e.printStackTrace();
		}
		return cmList ;
	}
}
