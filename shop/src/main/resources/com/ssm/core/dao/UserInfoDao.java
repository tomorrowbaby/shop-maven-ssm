package com.ssm.core.dao;

import java.util.List;

import com.ssm.core.po.UserInfo;

/**
 * 用户管理的数据访问的接口
 * @author 管理员
 */
public interface UserInfoDao {
		/**
		 * 添加用户
		 * @param user
		 * @return
		 */
		public int add(UserInfo user) ;
		/**
		 * 根据条件查询用户
		 * @param user 查询条件
		 * @return
		 */
		public List<UserInfo> getUserInfo(UserInfo user) ; 
		/**
		 * 修改用户
		 * @param user
		 * @return
		 */
		public int update(UserInfo user) ;
		/**
		 * 删除用户
		 * @param userId
		 * @return
		 */
		public int delete(Integer userId) ;
}
