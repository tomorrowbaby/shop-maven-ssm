package com.ssm.goods;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.Page;
import com.ssm.core.po.GoodsInfo;
import com.ssm.core.service.GoodsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/*.xml")
public class GoodInfoTest {
	@Autowired
	public GoodsService goodsService ;
	@Test
	public void addTest() {
		GoodsInfo goods = new GoodsInfo() ;
		goods.setGoodsName("大米");
		goods.setGoodsPrice(10.0);
		goods.setGoodsDesc("安全环保可靠");
		goods.setGoodsUrl("123456");
		//默认时区的日历
		Calendar calendar = Calendar.getInstance(); 
		//设置日期
		calendar.set(2019, 1, 14, 4, 28, 36);
		goods.setGoodsTime("2016-12-21");
		goodsService.add(goods) ;		
	}
	@Test
	public void getlistTest() {
		GoodsInfo goods = new GoodsInfo() ;
		List<Map> maps = goodsService.getList(goods) ;
		for(Map map : maps) {
						System.out.println(map.keySet());
						System.out.println(map.values());
		}
	}
	@Test
	public void getPageTest() {		
		GoodsInfo goods = new GoodsInfo() ;
		Page<Map> maps = goodsService.pageGoods(goods, 1, 10) ;
		for(Map map : maps) {
						System.out.println(map.values().toString());
						System.out.println(map);
		}
	}
	@Test
	public void updateTest() {
		GoodsInfo goods = new GoodsInfo() ;
		goods.setGoodsName("老干妈");
		goods.setGoodsId(1);
		goodsService.update(goods) ;
	}
}
