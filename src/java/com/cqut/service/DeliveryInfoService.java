/**
 * @author : tanxiaokang
 * @date : 2017上午10:52:12
 */
package com.cqut.service;


import java.util.List;
import java.util.Map;

import com.cqut.entity.DeliveryInfo;
//import com.cqut.entity.DeliveryOrder;

/**
 *@author:tanxiaokang
 * 
 */
public interface DeliveryInfoService {
//		public List<DeliveryOrder> getDelivery();
		public Map<String, Object> getDeliveryInfo(	int limit, int offset,String order,String sort,String condition,String userName) ;
		public int insert(DeliveryInfo deliveryInfo);
		public int deleteByID(String IDS);
		public int updateByID(DeliveryInfo deliveryInfo,String ID);
		public List<DeliveryInfo> getalldata();
}
