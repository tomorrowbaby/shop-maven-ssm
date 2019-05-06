package com.ssm.core.dao;

import com.ssm.core.po.OrderDetail;
import com.ssm.core.po.OrderManagement;

/**
 * 描述：订单数据访问层
 * @author wangyu
 * @date 2019/4/23
 */
public interface OrderDao {
	
	/**
	 * 描述：添加订单详情
	 * @param orderDetail
	 * @return
	 */
	public int addOrderDetail(OrderDetail orderDetail) ;
	
	/**
	 * 描述：添加订单管理
	 * @param orderManagement
	 * @return
	 */
	public int addOrderManagement(OrderManagement orderManagement) ;
	
	//public List<OrderList> getOrder
}
