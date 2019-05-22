package com.ssm.core.service;

import java.util.List;

import com.ssm.core.po.ConsigneeManagement;

/**
 * 描述：地址管理Service接口
 * @author wangyu
 * @date  2019/5/10
 */
public interface ConsigneeManagementService {
	
	/**
	 * 描述：地址列表查询
	 * @param consignement
	 * @return
	 */
	public List<ConsigneeManagement> get(ConsigneeManagement consigneement) ;
	
	/**
	 * 描述：用户添加
	 * @param consignee
	 * @return
	 */
	public Integer add(ConsigneeManagement consignee) ;
	
	
	/**
	 * 描述：地址修改
	 * @param consignee
	 * @return
	 */
	public Integer update(ConsigneeManagement consignee) ;
	
	/**
	 * 描述：地址删除
	 * @param consigneeId
	 * @return
	 */
	public Integer delete(Integer consigneeId) ;
}
