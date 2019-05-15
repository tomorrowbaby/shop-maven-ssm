package com.ssm.core.po;

/**
 * 订单详情
 * @author centos01
 *
 */
public class OrderDetail {
  private Integer orderDetailId ;
  private Integer orderNumber ;
  private Double orderPrice ;
  private Integer orderId ;
  /**
   * 商品价格，名称
   */
  private Integer goodsId ;
  private Double goodsPrice ;
  private Integer goodsNum ;
  private String goodsName ;
  private String goodsUrl ;
  private String consigneeAddress ;
  private Integer consigneeId ;
  
    
	public Integer getConsigneeId() {
	return consigneeId;
}
public void setConsigneeId(Integer consigneeId) {
	this.consigneeId = consigneeId;
}
	public String getConsigneeAddress() {
	return consigneeAddress;
}
public void setConsigneeAddress(String consigneeAddress) {
	this.consigneeAddress = consigneeAddress;
}
	public Integer getOrderId() {
	return orderId;
}
public void setOrderId(Integer orderId) {
	this.orderId = orderId;
}
	public Integer getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(Integer goodsNum) {
		this.goodsNum = goodsNum;
	}
	public Integer getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}
	public Double getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsUrl() {
		return goodsUrl;
	}
	public void setGoodsUrl(String goodsUrl) {
		this.goodsUrl = goodsUrl;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(Integer orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public Integer getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(Integer orderNumber) {
		this.orderNumber = orderNumber;
	}
	public Double getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(Double orderPrice) {
		this.orderPrice = orderPrice;
	}
	@Override
	public String toString() {
		return "OrderDetail [orderDetailId=" + orderDetailId + ", orderNumber=" + orderNumber + ", orderPrice="
				+ orderPrice + ", orderId=" + orderId + ", goodsId=" + goodsId + ", goodsPrice=" + goodsPrice
				+ ", goodsNum=" + goodsNum + ", goodsName=" + goodsName + ", goodsUrl=" + goodsUrl
				+ ", consigneeAddress=" + consigneeAddress + "]";
	}
     
}
