package com.ssm.userinfo;

import java.util.Calendar;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ssm.core.po.GoodsInfo;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.UserInfoService;
import com.ssm.core.service.impl.GoodsServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/*.xml")
public class UserInfoTest {
		
		@Autowired
		private UserInfoService service ;
		@Test
		public void addTest() {
				UserInfo user = new UserInfo() ;			
				user.setUserName("小姐姐");
				user.setUserSex("女");
				user.setUserPhone("1566156156");
				//默认时区的日历
				Calendar calendar = Calendar.getInstance(); 
				//设置日期
				calendar.set(2019, 1, 14, 4, 28, 36);
				//将Date类型数据注入到PO层
				user.setUserTime(calendar.getTime());
				service.add(user) ;						
		}
		@Test
		public void getUserInfoTest() {
				UserInfo user = new UserInfo() ;
				user.setPageTotal(50);
				System.out.println();				
		}
		@Test
		public void updateTest() {
			UserInfo user = new UserInfo() ;
			user.setUserName("华山");
			user.setUserId(3);
			user.setUserPhone("3657548");
			service.add(user);
		}
		@Test
		public void deleteTest() {
			Integer id = 2 ;
			//service.delete(3) ;
		}
		/**
		 * 由mysql插入日期
		 */
		@Test
		public void dataTest() {
			UserInfo user = new UserInfo() ;
			user.setUserName("华安");
			user.setUserPhone("156356486");		
		}
		
	
}
