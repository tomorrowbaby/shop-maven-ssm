package com.ssm.core.dao;

import java.util.List;

import com.ssm.core.po.ConsigneeManagement;

/**
 * 收货人数据访问层借口
 * @author centos01
 * @date 2019/5/10
 */
public interface ConsigneeManagementDao {
	
	/**
	 * 描述：获取地址列表
	 * @param id
	 * @return
	 */
	public List<ConsigneeManagement> get(ConsigneeManagement consignee) ;
	
	/**
	 * 描述：添加地址
	 * @param consignee
	 * @return
	 */
	public int add(ConsigneeManagement consignee) ;
	
	/**
	 * 描述：修改地址信息
	 * @param consignee
	 * @return
	 */
	public int update(ConsigneeManagement consignee) ;
	
	/**
	 * 描述：删除地址
	 * @param consigneeId
	 * @return
	 */
	public int delete(Integer consigneeId) ;
}
