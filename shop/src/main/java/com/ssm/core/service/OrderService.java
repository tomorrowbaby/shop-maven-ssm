package com.ssm.core.service;

import com.ssm.core.po.OrderDetail;
import com.ssm.core.po.OrderList;
import com.ssm.core.po.OrderManagement;

/**
 * 描述：　订单service层接口
 * @author wangyu
 * @date　2019/4/23 
 */
public interface OrderService {
	
	/**
	 * 描述：单个订单的增加
	 * @param orderDetail
	 * @param orderManagement
	 * @return
	 */
	public int addOrder(OrderDetail orderDetail,OrderManagement orderManagement)  ;
	
	/**
	 * 描述 多个订单增加
	 * @param orderList
	 * @param orderManagement
	 * @return
	 */
	public int addOrderList(OrderList orderList, OrderManagement orderManagement) ;
}
