package com.ssm.core.service;

import java.io.InputStream;

import com.github.pagehelper.Page;
import com.ssm.core.po.UserInfo;

public interface UserInfoService {

	/**
	 * 分页查询用户
	 * @param user
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Page<UserInfo> pageUser(UserInfo user,int pageNo,int pageSize) ;
		/**
		 * 分页获取总数
		 * @param user
		 * @return 
		 */
	public long getTotal(UserInfo user) ;
	
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	public int add(UserInfo user) ;
	/**
	 * 修改用户信息
	 * @param user
	 * @return
	 */
	public int update(UserInfo user) ;
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	public int delete(Integer userId) ;
	/**
	 * 上传文件
	 * @throws Exception
	 */
	public String upload(InputStream in)throws Exception ;
	
	/**
	 * 判断手机号码是否存在
	 * @param userinfo 
	 * @return Object
	 */
	public Object selectPhone(UserInfo userinfo);
	
	/**
	 * 用户登录验证
	 * @param user
	 * @return
	 */
	public UserInfo getAccount(UserInfo user) ;
	
}
