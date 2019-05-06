package com.ssm.core.dao;

import java.util.List;
import java.util.Map;
import com.ssm.core.po.GoodsInfo;

/**
 * 数据访问层接口
 * @author 王玉
 *
 */
public interface GoodsInfoDao {
	/**
	 * 增加商品信息
	 * @param goods
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
	 * 修改商品状态
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
