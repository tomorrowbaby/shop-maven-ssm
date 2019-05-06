package com.ssm.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.ssm.core.dao.UserInfoDao;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.UserInfoService;
@Service
@Transactional
public class UserInfoServiceImpl implements UserInfoService{
		
		@Autowired
		private UserInfoDao userdao ;
		private UserInfo userinfo ;
		/**
		 * 分页查询用户
		 * @param user
		 * @param pageNo
		 * @param pageSize
		 * @return
		 */
		public Page<UserInfo> pageUser(UserInfo user,int pageNo,int pageSize){			
			if(user != null) {
						if(user.getUserName() != null && !user.getUserName().equals("")){
								user.setUserName("%" + user.getUserName() + "%");
						}
				}
				if(user != null) {
					if(user.getUserDate() != null && !user.getUserDate().equals("")){
							user.setUserName("%" + user.getUserName() + "%");
					}
				}
				PageHelper.startPage(pageNo, pageSize) ;
				List<UserInfo> list =  userdao.getUserInfo(user) ;			
				Page<UserInfo> pageInfo = new Page<>() ;
				pageInfo.addAll(list) ;
				return pageInfo ;
		}
		
		/**
		 * 分页获取总数
		 * @param user
		 * @return long
		 */
		public long getTotal(UserInfo user) {
			Page page= PageHelper.startPage(0, 1) ;
			List<UserInfo> list =  userdao.getUserInfo(user) ;
			return page.getTotal() ;
		}
		
		/**
		 * 添加用户
		 * @param user
		 * @return
		 */
		public int add(UserInfo user) {
			if (user != null)
				try {
					return userdao.add(user) ;
				}catch(Exception e) {
					e.printStackTrace();
					return 0 ;
				}
			return 0 ;			
		}
		/**
		 * 修改用户
		 * @param user
		 * @return 
		 */
		public int update(UserInfo user) {
			if (user != null)
				try {
					return userdao.update(user) ;
				}catch(Exception e) {
					e.printStackTrace() ;
					return 0;
				}			
				return 0 ;
		}
		/**
		 * 删除用户
		 * @param id
		 * @return
		 */
		public int delete(Integer userId) {
			if (userId != null ) 
				try {
					return userdao.delete(userId) ;
				}catch(Exception e) {
					e.printStackTrace();
					return 0 ;
				}
			return 0 ;
		}
}
