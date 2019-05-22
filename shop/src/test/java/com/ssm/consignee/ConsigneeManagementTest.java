package com.ssm.consignee;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ssm.core.po.ConsigneeManagement;
import com.ssm.core.service.ConsigneeManagementService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/*.xml")
public class ConsigneeManagementTest {
	
	@Autowired
	ConsigneeManagementService cmService ;
	
	@Test
	public void addTest() {
		ConsigneeManagement cm = new ConsigneeManagement() ;
		cm.setConsigneeName("唐伯虎");
		cm.setConsigneeAddress("北京市");
		cm.setConsigneePhone("100");
		cm.setUserId(2);
		cm.setConsigneeCode("0100");
		cmService.add(cm) ;
	}
	
	@Test
	public void getTest() {
		ConsigneeManagement cm = new ConsigneeManagement() ;
		cm.setUserId(2);
		List<ConsigneeManagement> cList = cmService.get(cm) ;
		for(ConsigneeManagement c : cList) {
			System.out.println(c);
		}
	}
}
