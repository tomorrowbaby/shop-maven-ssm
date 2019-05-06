package com.ssm.core.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.Page;
import com.ssm.core.po.Json;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.UserInfoService;

@Controller
public class UserInfoController {
		@Autowired
		private UserInfoService userservice ;
		/**
		 * 后台管理员身份验证
		 */
		@RequestMapping(value = "/login.action",method = RequestMethod.GET)
		@ResponseBody
		public UserInfo login(UserInfo userinfo) {
			System.out.println(userinfo);
			return userinfo ;
		}
		
		/**
		 * 跳转到登录页面
		 */
		@RequestMapping("/tologin.action")
		public String toLogin() {
			return "back/login" ;
		}
		
		/**
		 * 跳转到主页
		 */
		@RequestMapping("/toindex.action")
		public String toIndex() {
			return "back/index" ;
		}
		
		/**
		 * 跳转到home页
		 */
		@RequestMapping(value = "/tohome.action")
		public String toHome() {
			return "back/home" ;
		}
		/**
		 * 跳转到user_list页
		 */
		@RequestMapping("/touser_list.action")
		public String touser_list() {
			return "back/user_list" ;
		}		
		
		/**
		 *查询用户信息
		 *@param user 查询条件
		 *@return
		 */
		@RequestMapping(value = "/getuserlist.action" ,method = RequestMethod.GET)
		@ResponseBody
		public Page<UserInfo> list(UserInfo user , int pageNo,int pageSize ) {		
			Page<UserInfo> pagelist = userservice.pageUser(user, pageNo, pageSize);
			return pagelist ;
		}
		
		/**
		 * 获取分页total数
		 * @param user
		 * @return
		 */
		@RequestMapping(value = "/gettotal.action" ,method = RequestMethod.GET)
		@ResponseBody
		public long getTotal(UserInfo user) {		
			return userservice.getTotal(user) ;
		}
		
		/**
		 * 添加用户
		 * @param user
		 * @return
		 */
		@RequestMapping(value = "/adduser.action" ,method = RequestMethod.POST)
		@ResponseBody
		public int addUser(@RequestBody UserInfo user) {	
			return userservice.add(user) ;
		}
		
		/**
		 * 修改信息
		 * @param user
		 * @return
		 */
		@RequestMapping(value = "/edituser.action" ,method = RequestMethod.POST)
		@ResponseBody
		public int editUser(@RequestBody UserInfo user) {		
			return userservice.update(user) ;
		}
		
		/**
		 * 删除信息
		 * @param user
		 * @return
		 */
		@RequestMapping(value = "/deleteuser.action" ,method = RequestMethod.GET)
		@ResponseBody
		public int deleteUser(Integer userId) {			
			return userservice.delete(userId) ;
		}
		
		/**
		 * 上传excel
		 * @return
		 */
		@RequestMapping(value = "/uploaduser.action" ,method = RequestMethod.POST)
		public String upload(@RequestParam(value="upfile" ,
													required = false) MultipartFile part ,
													Model model) {		
			String result = "操作失败";
			try{
				String info = userservice.upload(part.getInputStream());
				 if(info == "success") result = "操作成功";
			}catch(Exception e) {
				e.printStackTrace();			
			}
			model.addAttribute("result", result) ;
			return "success";
		}
		/**
		 * 判断手机号码重复
		 * @param user
		 * @return
		 */
		@RequestMapping(value = "/selectphone.action" ,method = RequestMethod.POST)
		@ResponseBody
		public Json selectPhone(UserInfo user) {	
			Json json = new Json() ;
			if(userservice.selectPhone(user).equals(true)) {
					json.setInfo("手机号码可以使用");
			}else {
					json.setInfo("手机号码重复，请重新输入");
			} 					
			return json ;
		}
		
}
