package com.ssm.order;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ssm.core.po.OrderDetail;
import com.ssm.core.po.OrderList;
import com.ssm.core.po.OrderManagement;
import com.ssm.core.service.OrderService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/*.xml")
public class OrderTest {
	@Autowired
	private OrderService orderService ;
	
	@Test
	public void addTest() {
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setGoodsNum(5);
		orderDetail.setGoodsPrice(10.0);
		double num =(double) orderDetail.getGoodsNum() ;
		Double price = orderDetail.getGoodsPrice() ;
		double total = price * num ; 
		OrderManagement orderManagement = new OrderManagement() ;
		orderManagement.setOrderTotal(total);
		orderManagement.setOrderState("待支付");
		orderManagement.setUserId(1);
		orderService.addOrder(orderDetail, orderManagement) ;
	}
	
	@Test
	public void addListTest() {
		OrderList orderList = new OrderList() ;
		OrderManagement order = new OrderManagement() ;
		List<Double> priceList = new ArrayList() ;
		List<Integer> goodsNumList = new ArrayList() ;
		priceList.add(10.0) ;
		priceList.add(11.0) ;
		priceList.add(8.0) ;
		goodsNumList.add(1) ;
		goodsNumList.add(3) ;
		goodsNumList.add(2) ;
		orderList.setGoodsNumList(goodsNumList);
		orderList.setPriceList(priceList);
		order.setConsigneeId(1);
		order.setOrderState("待支付");
		order.setUserId(2);
		orderService.addOrderList(orderList, order) ;
	}
}
