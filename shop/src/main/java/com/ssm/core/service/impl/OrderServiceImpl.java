package com.ssm.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.core.dao.OrderDao;
import com.ssm.core.po.OrderDetail;
import com.ssm.core.po.OrderList;
import com.ssm.core.po.OrderManagement;
import com.ssm.core.service.OrderService;

/**
 * 描述：订单service逻辑层实现类
 * @author wangyu
 * @date 2019/4/23
 */

@Service
@Transactional
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDao orderDao ;
	
	public int addOrder(OrderDetail orderDetail,OrderManagement orderManagement) {
		int i = 0 ;		
		double num =(double) orderDetail.getGoodsNum() ;
		Double price = orderDetail.getGoodsPrice() ;
		double total = price * num ; 
		orderManagement.setOrderTotal(total);
		if(orderManagement != null) {
			orderManagement.setOrderTotal(total);
			orderManagement.setOrderState("待支付");
			i = orderDao.addOrderManagement(orderManagement) ;
		}		
		if(orderDetail != null) {
			orderDetail.setOrderId(orderManagement.getOrderId());
			i = orderDao.addOrderDetail(orderDetail) ;
		}
		return i ;
	}
	
	public int addOrderList(OrderList orderList,OrderManagement orderManagement) {
		if (orderList != null) {
			List<Double> priceList = orderList.getPriceList() ;
			List<Integer> goodsNumList = orderList.getGoodsNumList() ;
			double money = 0 ;
			for(int i = 0 ; i < priceList.size() ; i++) {
				double price = priceList.get(i) ;
				double goodsNum = goodsNumList.get(i) ;
				money += price * goodsNum ; 
			}
			orderManagement.setOrderTotal(money);
			orderManagement.setOrderState("待支付");
			orderDao.addOrderManagement(orderManagement) ;
			OrderDetail orderDetail = new OrderDetail() ;
			for(int i = 0 ; i < priceList.size() ; i++) {
				orderDetail.setOrderId(orderManagement.getOrderId());
				orderDetail.setOrderPrice(priceList.get(i));
				orderDetail.setOrderNumber(goodsNumList.get(i));
				orderDao.addOrderDetail(orderDetail);
			}
			return 1 ;
		}else {
			return 0 ;
		}
	}
}
