package com.ssm.core.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ssm.core.po.GoodsInfo;
import com.ssm.core.po.OrderDetail;
import com.ssm.core.po.OrderList;
import com.ssm.core.po.OrderManagement;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.GoodsService;
import com.ssm.core.service.OrderService;

/**
 * 订单控制器
 * @author centos01
 *
 */
@Controller
@RequestMapping("/adminorder")
public class OrderFrontController {
	 
   @Autowired
   private GoodsService goodsService ;
   
   @Autowired
   private OrderService orderService ;
   
   /**
    * 跳转到order_check页面,并清空单件订单的session
    * @return
    */
   @RequestMapping("/toorder_check.shtml")
   public String toordercheck(HttpSession session) {
	   session.removeAttribute("Order");
	   return "front/order_check" ;
   }
   
   /**
    * 跳转到order_check页面,并清空单件订单的session
    * @return
    */
   @RequestMapping("/tosingleorder_check.shtml")
   public String toosinglerdercheck() {
	   return "front/order_check" ;
   }
   
   @RequestMapping("/tosuccess.shtml")
   public String toSuccess() {
	   return "success" ;
   }
   
	/**
	 * 订单生成
	 * @param id
	 * @param session
	 * @return
	 */
	 @RequestMapping(value="/ordercheck/{goodsId}.shtml",method=RequestMethod.POST)
	 public void orderCheck(@PathVariable Integer goodsId,HttpSession session) {
		 	OrderDetail order = new OrderDetail() ;
			GoodsInfo goods = new GoodsInfo() ;
	 		goods.setGoodsId(goodsId) ;
	 		List<Map> list = goodsService.getList(goods) ;
	 		String goodsName = (String) list.get(0).get("goods_name") ;
	 		Double goodsPrice = (Double) list.get(0).get("goods_price") ;
	 		String goodsUrl = (String) list.get(0).get("goods_url") ;
	 		order.setGoodsName(goodsName);
	 		order.setGoodsPrice(goodsPrice);
	 		order.setGoodsUrl(goodsUrl);
	 		session.setAttribute("Order",order);
	 }
	 
	 /**
	  * 购物车单件商品结算
	  * @param session
	  * @return
	  */
	 @RequestMapping(value = "/ordercart.shtml",method = RequestMethod.POST)
	 public void orderShowCart(OrderDetail order, HttpSession session){
		 		GoodsInfo goods = new GoodsInfo() ;
		 		goods.setGoodsId(order.getGoodsId());
		 		List<Map> list = goodsService.getList(goods) ;
		 		String goodsName = (String) list.get(0).get("goods_name") ;
		 		Double goodsPrice = (Double) list.get(0).get("goods_price") ;
		 		String goodsUrl = (String) list.get(0).get("goods_url") ;
		 		order.setGoodsName(goodsName);
		 		order.setGoodsPrice(goodsPrice);
		 		order.setGoodsUrl(goodsUrl);
		   	    session.setAttribute("Order",order);
	 }
	 
	 /**
	  * 单件商品订单展示
	  * @param session
	  * @return
	  */
	 @RequestMapping(value="/ordershowcart.shtml",method = RequestMethod.POST)
	 @ResponseBody
	 public OrderDetail singlecartShow(HttpSession session) {
		 OrderDetail order = new OrderDetail();
		 order = (OrderDetail) session.getAttribute("Order") ;
		 return order ;
	 }
	 
	 /**
	  * 购物车所有商品订单展示
	  * @param session
	  * @return
	  */
	@RequestMapping(value="/orderlist.shtml",method=RequestMethod.POST)
	@ResponseBody
	public List orderShowList(HttpSession session){
		Map<Integer,Map> shoppingcart = (Map<Integer,Map>)session.getAttribute("shoppingcart") ;
		session.removeAttribute("Order");
		Set<Integer> sets	= shoppingcart.keySet() ;
		List<Map> orderList = new ArrayList<Map>() ;
		for(Integer key : sets ) {
			Map map = shoppingcart.get(key) ;
			orderList.add(map) ;
		}
		return orderList ;
	 }
	
	/**
	 * 单个商品订单存储
	 * @return
	 */
	@RequestMapping(value = "/single_order_submit.shtml",method = RequestMethod.POST)
	public String singleOrderSave(OrderDetail orderDetail,HttpSession session) {
		UserInfo user = (UserInfo)session.getAttribute("USER") ;
		OrderManagement orderManagement = new OrderManagement() ;
		orderManagement.setUserId(user.getUserId());
		try{
			orderService.addOrder(orderDetail, orderManagement) ;
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return "success" ;
	}
	
	/**
	 * 订单列表保存
	 * @return
	 */
	@RequestMapping(value="/orderlistsave.shtml",method=RequestMethod.POST)
	public String orderListSave(@RequestBody OrderList orderList,HttpSession session) {
		OrderManagement orderManagement = new OrderManagement() ;
		UserInfo user = (UserInfo)session.getAttribute("USER") ;
		orderManagement.setConsigneeId(1);
		orderManagement.setUserId(user.getUserId());
		try {
			orderService.addOrderList(orderList, orderManagement) ;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "success" ;
	}
}
