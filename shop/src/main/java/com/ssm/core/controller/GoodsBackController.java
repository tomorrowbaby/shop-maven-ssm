package com.ssm.core.controller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.ssm.utils.Common;
import com.github.pagehelper.Page;
import com.ssm.core.po.GoodsInfo;
import com.ssm.core.service.GoodsService;
import com.ssm.core.service.impl.GoodsServiceImpl;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
@Controller
public class GoodsBackController {
		@Autowired
		GoodsService goodsService  ;
		
	/**
	 * 跳转到Products_List页
	 */
	@RequestMapping("/toproduct_list.action")
	public String toproduct_list() {
		return "back/product_list" ;
	}
	
	/**
	 * 跳转到picture_add页
	 */
	@RequestMapping("/topicture_add.action")
	public String topicture_add() {
		return "back/picture_add" ;
	}
	
	/**
	 * 跳转到product_show页
	 */
	@RequestMapping("/toproduct_show.action")
	public String toproduct_show() {		
		return "back/product_show" ;
	}
	
	@RequestMapping("toproduct_update.action")
	public String toproduct_update() {
		return "back/product_update" ;
	}
	/**
	 * 图片发送
	 * @param file
	 * @return
	 */
	@RequestMapping(value = "/upload.action" ,method = RequestMethod.POST)
	@ResponseBody
	public Object uploadImg(@RequestParam(required=false)MultipartFile file){	
		//1.图片名称生成策略
		//日期生成格式
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS") ;
		//获取当前日期
		String format = df.format(new Date()) ;
		//防止重复可以产生随机数
		Random rand = new Random() ;				 
		format += rand.nextInt(100) ;
		//路径格式产生 -保存数据库路径
		Common.GOODS_URL =   format +".jpg" ;
		//2.向服务器发送数据
		//另外一台服务器地址（图片保存的服务器，这个服务器是客户端）
		String url = Common.IMG_SERVICE_URL+Common.GOODS_URL;
		//实例化jersey
        Client client = new Client() ;
		//设置请求路径，请求向服务器发送文件
		//读取图片
		try{
				WebResource webresource = client.resource(url) ;
        webresource.put(String.class,file.getBytes());
      
		}catch(Exception e) {
				e.printStackTrace();
				return null ;
		}		
		return true ;
	}
	
	/**
	 * 添加商品
	 * @param goods
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/goods/add.action" ,method = RequestMethod.GET)
	public String add(GoodsInfo goods,Model model) {
		try{
			if(goods != null) goods.setGoodsUrl(Common.GOODS_URL);
			goodsService.add(goods) ;
			model.addAttribute("info", "添加成功") ;
			System.out.println(goods);
		}catch(Exception e) {
			e.printStackTrace();	
			model.addAttribute("info", "添加失败") ;
		}
		return "back/success" ;
	}
	
	/**
	 * 商品信息查询
	 * @param goods
	 * @return
	 */
	@RequestMapping(value="/goods/getlist.action" , method=RequestMethod.GET)
	@ResponseBody
	public Page<Map> getPageList(GoodsInfo goods , int pageNo, int pageSize) {	
		try{			 
				Page<Map> maps = goodsService.pageGoods(goods, pageNo, pageSize) ;
					return maps ;
		}catch(Exception e) {
				e.printStackTrace();
					return null ;
		}		
	}
	
	/**
	 * 获取分页total数
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/goods/gettotal.action" ,method = RequestMethod.GET)
	@ResponseBody
	public long getTotal(GoodsInfo goods) {		
		return goodsService.getTotal(goods) ;
	}
	
	/**
	 * 设置商品状态
	 * @param goods
	 * @return
	 */
	@RequestMapping(value = "/goods/setstate.action" ,method = RequestMethod.POST)
	@ResponseBody
	public int setState(GoodsInfo goods) {	
		return goodsService.setState(goods) ;
	}
	/**
	 * 查询商品详情
	 * @param goods
	 * @return
	 */
	@RequestMapping(value = "/goods/getdesc.action" ,method = RequestMethod.POST)
	public String getDesc(GoodsInfo goods,Model model,HttpSession session) {	
		session.setAttribute("goods",goodsService.getList(goods).get(0));
		model.addAttribute("goodsDesc", goodsService.getList(goods).get(0).get("goods_desc")) ;
		model.addAttribute("goodsUrl", goodsService.getList(goods).get(0).get("goods_url")) ;
		return "product_show" ;
	}
	
	/**
	 * 修改商品信息
	 * @param goods
	 * @return
	 */
	@RequestMapping(value = "/goods/update.action" ,method = RequestMethod.GET)
	public String updateGoodsInfo(GoodsInfo goods,Model model) {
		goods.setGoodsUrl(Common.GOODS_URL);
		System.out.println(goods);
		try {
			goodsService.update(goods) ;
			model.addAttribute("info", "操作成功") ;
			return "back/success" ;
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("info", "失败") ;
		}
		  return "back/success" ;	
	 }
}
