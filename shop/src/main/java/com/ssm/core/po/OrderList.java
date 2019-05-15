package com.ssm.core.po;

import java.util.List;

/**
 * 描述：订单列表类
 * @author wangyu
 *
 */

public class OrderList {
	private List<Double> priceList;
	private List<Integer> goodsNumList ;
	private List<Integer> order_id ;
	private List<Integer> goodsIdList ;
	private Integer consigneeId ;
	
	
	public Integer getConsigneeId() {
		return consigneeId;
	}
	public void setConsigneeId(Integer consigneeId) {
		this.consigneeId = consigneeId;
	}
	public List<Integer> getGoodsIdList() {
		return goodsIdList;
	}
	public void setGoodsIdList(List<Integer> goodsIdList) {
		this.goodsIdList = goodsIdList;
	}
	public List<Integer> getOrder_id() {
		return order_id;
	}
	public void setOrder_id(List<Integer> order_id) {
		this.order_id = order_id;
	}
	public List<Double> getPriceList() {
		return priceList;
	}
	public void setPriceList(List<Double> priceList) {
		this.priceList = priceList;
	}
	public List<Integer> getGoodsNumList() {
		return goodsNumList;
	}
	public void setGoodsNumList(List<Integer> goodsNumList) {
		this.goodsNumList = goodsNumList;
	}
	
	@Override
	public String toString() {
		return "OrderList [priceList=" + priceList + ", goodsNumList=" + goodsNumList + ", order_id=" + order_id
				+ ", goodsIdList=" + goodsIdList + "]";
	}
	
	
	
	
}
