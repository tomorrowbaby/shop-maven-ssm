package com.ssm.core.po;
/**
 * 订单管理
 * @author centos01
 *
 */
public class OrderManagement {
	private Integer orderId ;
	private String orderTime ;
	private String orderDate ;
	private double orderTotal ;
	private String orderState ;
	
	private Integer userId ;
	private String userName ;
	private Integer orderDetailId ;
	private Integer consigneeId ;
	private String consigneeName ;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	public Integer getOrderDetailId() {
		return orderDetailId;
	}
	public Integer getConsigneeId() {
		return consigneeId;
	}
	public void setConsigneeId(Integer consigneeId) {
		this.consigneeId = consigneeId;
	}
	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public double getOrderTotal() {
		return orderTotal;
	}
	public void setOrderTotal(double orderTotal) {
		this.orderTotal = orderTotal;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
	public String getConsigneeName() {
		return consigneeName;
	}
	public void setConsigneeName(String consigneeName) {
		this.consigneeName = consigneeName;
	}
	@Override
	public String toString() {
		return "OrderManagement [orderId=" + orderId + ", orderTime=" + orderTime + ", orderDate=" + orderDate
				+ ", orderTotal=" + orderTotal + ", orderState=" + orderState + ", userId=" + userId + ", userName="
				+ userName + ", orderDetailId=" + orderDetailId + ", consigneeId=" + consigneeId + ", consigneeName="
				+ consigneeName + "]";
	}
	
	
}
