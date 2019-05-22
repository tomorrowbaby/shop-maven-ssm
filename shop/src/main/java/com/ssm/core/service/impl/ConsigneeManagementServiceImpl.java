package com.ssm.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.core.dao.ConsigneeManagementDao;
import com.ssm.core.po.ConsigneeManagement;
import com.ssm.core.service.ConsigneeManagementService;

/**
 * 描述 ： 地址管理Service实现类
 * @author wangyu
 * @date 2019/5/10
 */
@Transactional
@Service
public class ConsigneeManagementServiceImpl implements ConsigneeManagementService{
	
	@Autowired
	ConsigneeManagementDao cmDao ;
	
	/**
	 * 描述：地址列表查询
	 * @param consignement
	 * @return
	 */
	public List<ConsigneeManagement> get(ConsigneeManagement consignee) {
		List<ConsigneeManagement> consigneeList = null ;
		if(consignee != null) {
			consigneeList = cmDao.get(consignee) ;
		}
		return consigneeList ;
	}
	
	/**
	 * 描述：用户添加
	 * @param consignee
	 * @return
	 */
	public Integer add(ConsigneeManagement consignee) {
		Integer flag = 0 ;
		if(consignee != null) flag = cmDao.add(consignee) ;
		return flag ;
	}
	
	/**
	 * 描述：地址修改
	 * @param consignee
	 * @return
	 */
	public Integer update(ConsigneeManagement consignee) {
		int flag = 0 ;
		flag = cmDao.update(consignee);
		return flag ;
	}
	
	/**
	 * 描述：地址删除
	 * @param consigneeId
	 * @return
	 */
	public Integer delete(Integer consigneeId) {	
		return cmDao.delete(consigneeId) ;
	}
}
