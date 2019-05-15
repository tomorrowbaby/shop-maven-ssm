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
	
	/**
	 * 描述：单个订单的增加
	 * @param orderDetail
	 * @param orderManagement
	 * @return
	 */
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
	
	/**
	 * 描述 多个订单增加
	 * @param orderList
	 * @param orderManagement
	 * @return
	 */
	public int addOrderList(OrderList orderList,OrderManagement orderManagement) {
		if (orderList != null) {
			List<Double> priceList = orderList.getPriceList() ;
			List<Integer> goodsNumList = orderList.getGoodsNumList() ;
			List<Integer> goodsIdList = orderList.getGoodsIdList() ;
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
				orderDetail.setGoodsId(goodsIdList.get(i));
				orderDao.addOrderDetail(orderDetail);
			}
			return 1 ;
		}else {
			return 0 ;
		}
	}
	
	/**
	 * 描述:订单列表获取
	 * @param orderManagement
	 * @return
	 */
	public List<OrderManagement> getList(OrderManagement orderManagement) {			
		return orderDao.getList(orderManagement) ;
	}
	
	/**
	 * 描述：订单详情
	 * @param orderId
	 * @return
	 */
	public List<OrderDetail> getOrderDetail(Integer orderId){
		List<OrderDetail> orderDetail = null ;
		if (orderId != null) {
			orderDetail = orderDao.getOrderDetail(orderId) ;
		}
		return orderDetail ;
	}
	
	/**
	 * 描述：删除订单
	 * @param orderId
	 * @return
	 */
	public Integer delete(Integer orderId) {	
		return orderDao.delete(orderId) ;
	}
	
	/**
	 * 描述：更换订单收货人
	 * @param consigneeId
	 * @param orderId
	 * @return
	 */
	public Integer update(Integer consigneeId, Integer orderId) {
		return orderDao.update(consigneeId,orderId);
	}
}
