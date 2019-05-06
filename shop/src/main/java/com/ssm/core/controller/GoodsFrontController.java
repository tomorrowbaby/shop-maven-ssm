package com.ssm.core.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ssm.core.po.GoodsInfo;
import com.ssm.core.po.Json;
import com.ssm.core.po.UserInfo;
import com.ssm.core.service.GoodsService;
import com.ssm.core.service.UserInfoService;

/**
 * 商品前台控制器
 * @author centos01
 *
 */
@Controller
public class GoodsFrontController {
	public static int ID ;
	@Autowired
	private GoodsService goodsService ;
	@Autowired
	private UserInfoService userService ;
	
	/**
	 * 跳转到前台主页
	 * @return
	 */
	@RequestMapping("/toindex.shtml")
   public String toindex() {
	   return "front/index" ;
   }
	
	/**
	 * 跳转到前台商品详情页面
	 * @return
	 */
	@RequestMapping("/tosingle.shtml")
   public String tosingle() {
	   return "front/single" ;
   }
	
	/**
	 * 跳到购物车页面
	 * @return
	 */
	@RequestMapping("/tocheckout.shtml")
	   public String tocheckout() {
		   return "front/checkout" ;
	   }
	
	/**
	 * 跳转到前台商品列表页面
	 * @return
	 */
	@RequestMapping("/toproduct.shtml")
	public String toproduct() {
		return "front/product" ;
	}
	
	/**
	 * 跳转到注册页面
	 * @return
	 */
	@RequestMapping("/toregister.shtml")
	public String toregister() {
		return "front/register" ;
	}
	
	/**
	 * 跳转到登录页面
	 * @return
	 */
	@RequestMapping("/tologin.shtml")
	public String tologin() {
		return "front/login" ;
	}
	
	/**
	 * 查询商品
	 * @param goods
	 * @return
	 */
	@RequestMapping(value="/goods/getgoods.shtml" ,method=RequestMethod.GET)
	@ResponseBody
	public List<Map> getList(GoodsInfo goods){
		try{
			return goodsService.getList(goods) ;
		}catch ( Exception e ){
			e.printStackTrace();
		}
		return null ;
	}
	
	/**
	 * 保存前台id
	 * @param id
	 * @param model
	 * @param session
	 */
	@RequestMapping(value="/goods/{id}.shtml",method=RequestMethod.GET)
	public void saveId(@PathVariable("id") Integer id ,HttpSession session){
	     ID = id ;
	}

	/**
	 * 查询商品详情
	 * @return
	 */
	@RequestMapping(value="/get/goods.shtml",method=RequestMethod.POST)
	@ResponseBody
	public List<Map> getGoodsInfo(){
		GoodsInfo goods = new GoodsInfo() ;
		goods.setGoodsId(ID);   
		try {
			return  goodsService.getList(goods) ;
		}catch(Exception e) {
			e.printStackTrace();
		}
		  return null ;
	}
	
	/**
	 * 用户注册
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/register.shtml",method=RequestMethod.POST)
	@ResponseBody
	public Json register(UserInfo user,HttpSession session) {
		System.out.println(user);
		Json json = new Json() ;
		try {
			userService.add(user) ;
			json.setInfo("注册成功");
			session.setAttribute("USER", user);
		}catch(Exception e) {
			e.printStackTrace();
			json.setInfo("注册成功");
		}			
		return json ;
	}
	
	/**
	 * 用户登录
	 * @param userInfo
	 * @param userPw
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("/login.shtml")
	public String login(String userInfo,String userPw,HttpSession session,Model model) {
		UserInfo user = new UserInfo();
		UserInfo user2 = new UserInfo();
		user.setUserPhone(userInfo);
		user.setUserName(userInfo);
		user.setUserPw(userPw);
		Integer total = null ;
		try {
			total = userService.getAccount(user).getUserId() ;
		}catch(Exception e) {
			e.printStackTrace();			
		}
		if(total != null) {
			System.out.println(userService.getAccount(user));
			session.setAttribute("USER", userService.getAccount(user));
			return "front/index" ;
		}
			model.addAttribute("info", "账号密码错误,请重新输入") ;
    	return "front/login" ;
	}
	
	/**
	 * 购物车存储到Session
	 * @param goodsId
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/shoppingcart/{goodsId}.shtml",method=RequestMethod.GET)
   public void setShoppindcart(@PathVariable("goodsId") Integer goodsId ,HttpSession session){	
		Map<Integer,Map> shoppingcart = (Map<Integer,Map>)session.getAttribute("shoppingcart") ;
		if(shoppingcart == null ) {
			shoppingcart = new HashMap<Integer,Map>() ;
		}		
		GoodsInfo goods = new GoodsInfo() ;
    goods.setGoodsId(goodsId);
    Map map = goodsService.getList(goods).get(0) ;    	
    shoppingcart.put(goodsId,map) ;		
    session.setAttribute("shoppingcart", shoppingcart);
    
   }
	/**
	 * 购物车显示
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/showcart.shtml" ,method=RequestMethod.GET)
	@ResponseBody
	public List<Map> showCart(HttpSession session){
		Map<Integer,Map> shoppingcart = (Map<Integer,Map>)session.getAttribute("shoppingcart") ;
		if(shoppingcart == null ) {
			return null ;
		}	
	Set<Integer> sets	= shoppingcart.keySet() ;
	List<Map> mapcart = new ArrayList<Map>() ;
	for(Integer key : sets ) {
		Map map = shoppingcart.get(key) ;
		mapcart.add(map) ;
	}
		return mapcart ;
	}
	
	/**
	 * 从购物车删除
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/removecart/{id}.shtml", method= RequestMethod.GET)
	public String removecart(@PathVariable Integer id,HttpSession session) {
		Map<Integer,Map> shoppingcart = (Map<Integer,Map>)session.getAttribute("shoppingcart") ;
		shoppingcart.remove(id) ;
		return "front/checkout" ;
	}
}
