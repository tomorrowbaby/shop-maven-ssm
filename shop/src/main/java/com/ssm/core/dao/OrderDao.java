package com.ssm.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	
	/**
	 * 描述：订单列表查询
	 * @param orderManagement
	 * @return
	 */
	public List<OrderManagement> getList(OrderManagement orderManagement) ;
	
	/**
	 * 描述：订单详情查询
	 * @param orderId
	 * @return
	 */
	public List<OrderDetail> getOrderDetail(Integer orderId) ;
	
	/**
	 * 描述：删除订单
	 * @param orderId
	 * @return
	 */
	public int delete(Integer orderId) ;
	
	/**
	 * 描述 ： 更换收货人
	 * @param orderId
	 * @param  consigneeId
	 * @return
	 */
	public int update(@Param("consigneeId") Integer consigneeId ,@Param("orderId") Integer orderId) ; 
}
