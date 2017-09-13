/**
 * @author : tanxiaokang
 * @date : 2017上午11:01:50
 */
package com.cqut.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cqut.entity.DeliveryInfo;

/**
 *@author:tanxiaokang
 * 
 */
@Repository
public interface DeliveryInfoDao {

		public int insert(@Param("entity")DeliveryInfo DeliveryInfo);
		public int deleteByID(@Param("ID")String ID);
		public int updateByID(@Param("entity")DeliveryInfo DeliveryInfo,@Param("id")String ID);
		public List<DeliveryInfo> getcount();
}
