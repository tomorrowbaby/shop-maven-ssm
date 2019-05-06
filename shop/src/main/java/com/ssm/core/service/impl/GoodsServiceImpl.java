package com.ssm.core.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.ssm.core.dao.GoodsInfoDao;
import com.ssm.core.po.GoodsInfo;
import com.ssm.core.service.GoodsService;
@Service
@Transactional
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	public GoodsInfoDao goodsdao ; 
	/**
	 * 商品添加
	 * @param good
	 * @return
	 */
	public int add(GoodsInfo goods) {		
			return goodsdao.add(goods) ;
	}
	
	/**
	  * 商品查询
	 * @param good
	 * @return
	 */
	public List<Map> getList(GoodsInfo goods){
		return goodsdao.getList(goods) ;
	}
	/**
	 * 分页获取总数
	 * @param user
	 * @return long
	 */
	public long getTotal(GoodsInfo goods) {
		Page page= PageHelper.startPage(0, 1) ;
		List<Map> list =  goodsdao.getList(goods) ;
		return page.getTotal();
	}
	/**
	 * 分页查询商品
	 * @param user
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	public Page<Map> pageGoods(GoodsInfo goods,int pageNo,int pageSize){	
		if(goods != null) {
					if(goods.getGoodsName() != null && goods.getGoodsName().equals("")){
							goods.setGoodsName("%" + goods.getGoodsName() + "%");
					}
			}	
			PageHelper.startPage(pageNo, pageSize) ;
	 		List<Map> map = goodsdao.getList(goods) ;
			Page<Map> pageInfo = new Page<Map>() ;
			pageInfo.addAll( map ) ;
			return pageInfo ;
	}
	
	/**
	 * 设置商品状态
	 * @param goods
	 */
	public int setState(GoodsInfo goods) {
		return goodsdao.setState(goods);		
	}
	
	/**
	 * 修改商品信息
	 * @param goods
	 * @return
	 */
	public int update(GoodsInfo goods) {
		return goodsdao.update(goods) ;
	}
}
