package com.ssm.core.service;

import java.util.List;
import java.util.Map;
import com.github.pagehelper.Page;
import com.ssm.core.po.GoodsInfo;


/**
 * 商品管理service逻辑层接口
 * @author Centos01
 *
 */
public interface GoodsService {
	/**
	 * 商品信息添加
	 * @param good
	 * @return
	 */
	public int add(GoodsInfo goods) ;
	
	/**
	 * 商品信息查询
	 * @param goods
	 * @return
	 */
	public List<Map> getList(GoodsInfo goods) ;
	 
	/**
	 * 分页获取总数
	 * @param user
	 * @return 
	 */
public long getTotal(GoodsInfo goods) ;
/**
 * 分页查询数据
 * @param goods
 * @param pageNo
 * @param pageSize
 * @return
 */
public Page<Map> pageGoods(GoodsInfo goods,int pageNo,int pageSize) ;
/**
 * 设置商品状态
 * @param goods
 * @return 
 */
public int setState(GoodsInfo goods) ;

/**
 * 修改商品信息
 * @param goods
 * @return
 */
public int update(GoodsInfo goods) ; 
}
