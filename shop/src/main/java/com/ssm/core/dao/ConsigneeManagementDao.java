package com.ssm.core.dao;

import java.util.List;
import java.util.Map;

import com.ssm.core.po.ConsigneeManagement;

/**
 * 收货人数据访问层借口
 * @author centos01
 *
 */
public interface ConsigneeManagementDao {
	
	/**
	 * 获取地址列表
	 * @param id
	 * @return
	 */
	public List<Map> getConsigneeManagement(ConsigneeManagement consignee) ;
}
