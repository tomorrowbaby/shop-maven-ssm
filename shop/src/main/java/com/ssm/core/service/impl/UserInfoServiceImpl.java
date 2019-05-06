package com.ssm.core.service.impl;

import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.ssm.core.dao.UserInfoDao;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.UserInfoService;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
@Service
@Transactional
public class UserInfoServiceImpl implements UserInfoService{
		
		@Autowired
		private UserInfoDao userdao ;
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
				Page<UserInfo> pageInfo = new Page<UserInfo>() ;
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
		/**
		 * 上传exceljxl.jar
		 * @return
		 */
		public String upload(InputStream in)throws Exception{
			try{
				//1.将part获取到的文件转成二进制流由workbook获取到了excel文件
				Workbook book = Workbook.getWorkbook(in) ;
				//2.获取文件的sheet从0开始为sheet1
				Sheet sheet = book.getSheet(0) ;
				//3.获取文件的cell表格通过坐标（x,y）获取
				// Cell cell = sheet.getCell(0, 0) ;
				UserInfo user = new UserInfo() ;
				//由循环获取表格的所有坐标
				//行数不固定
				for(int i = 0 ;i < sheet.getRows(); i++) {
						//姓名
						Cell nameCell = sheet.getCell(0, i) ;	
						user.setUserName(nameCell.getContents());
						//性别
						Cell sexCell = sheet.getCell(1, i) ;
						user.setUserSex(sexCell.getContents());
						//手机
						Cell phoneCell = sheet.getCell(2, i) ;
						user.setUserPhone(phoneCell.getContents());
						//密码
						Cell passwdCell = sheet.getCell(3, i) ;
						user.setUserPw(passwdCell.getContents());
						//注册日期
						Cell timeCell = sheet.getCell(4, i) ;
						
						//类型
						Cell typeCell = sheet.getCell(5, i) ;
						user.setUserType(typeCell.getContents());
						//添加用户
						userdao.add(user) ;
				}
				book.close();
				return "success" ;
			}catch(Exception e){
				e.printStackTrace();
				return "fail" ;
			}
			
		}
		/**
		 * 判断手机号码是否存在
		 * @param userinfo 
		 * @return Integer
		 */
		public Object selectPhone(UserInfo userinfo) {
						
				if(userdao.getUserInfo(userinfo).isEmpty()) return  true;					
				return false ;
		}
		
		/**
		 * 用户登录验证
		 * @param user
		 * @return
		 */
		public UserInfo getAccount(UserInfo user) {
			
			if(user.getUserName().equals("")&&user.getUserPhone().equals("")
					&&user.getUserName().equals(null)&&user.getUserPhone().equals(null)) {
				return null ;
			}else {
				return userdao.getAccount(user) ;	
			}
		}
}
