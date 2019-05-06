package com.ssm.core.po;


import java.util.Date;
public class UserInfo {
	private Integer userId ;     		//用户ID
	private String userName ;				//用户姓名
	private String userSex ;				//用户性别
	private String userPw ;					//用户密码
	private String userPhone ;			//用户手机
	private String userType ;				//用户类型
	private String userDate ;					//注册日期
	private Date userTime ;					//注册时间	
	private long pageTotal ;
	

	public long getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(long pageTotal) {
		this.pageTotal = pageTotal;
	}
	public Date getUserTime() {
		return userTime;
	}
	public void setUserTime(Date userTime) {
		this.userTime = userTime;
	}
	public String getUserDate() {
		return userDate;
	}
	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", userName=" + userName + ", userSex=" + userSex + ", userPw=" + userPw
				+ ", userPhone=" + userPhone + ", userType=" + userType + ", userDate=" + userDate + ", userTime="
				+ userTime + ", pageTotal=" + pageTotal + "]";
	}

	
}
