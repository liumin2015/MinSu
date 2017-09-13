/**
 * @author : tanxiaokang
 * @date : 2017上午10:53:50
 */
package com.cqut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqut.dao.DeliveryInfoDao;
import com.cqut.dao.SearchDao;
import com.cqut.entity.DeliveryInfo;
import com.cqut.util.EntityIDFactory;

/**
 *@author:tanxiaokang
 * 
 */
@Service
public class DeliveryInfoServiceImpl implements DeliveryInfoService {

	@Resource(name="deliveryInfoDao")
	private DeliveryInfoDao dao;
	//这种情况是分页才用的到，自己动态拼接sql语句，对于多表查询有用，比如你有外键连接表
	@Resource(name="searchDao")
	SearchDao searchDao;
	/**
	 * @author：tanxiaokang
	 *	@date:2017上午11:00:55
	 * @function：
	 * @return	
	 */
	//int limit, int offset,String order,String sort,String condition,String userName
	//这里的参数由于是因为前台使用bootstrap,导致四个内置参数必须是int limit, int offset,String order,String sort  其他自己定义
	//而使用easyui的话，相比与bootsrap只有两个整型参数需要变化int limit, int offset   换成rows和page 
	@Override
	public Map<String, Object> getDeliveryInfo(	int limit, int offset,String order,String sort,String condition,String userName) {
		int index = limit;
		int pageNum = offset/limit;
		String conditions=" 1=1 ";
		if(condition!=null){
			conditions+=" and deliveryinfo.dId LIKE '%"+condition+"%' ";
		}
		if(userName!=null&&!(userName.isEmpty())){
			conditions+=" and (deliveryorder.consigneeName ='"+userName+"' or deliveryorder.shipperName ='"+userName+"') ";
		}
		String [] properties=new String[]{
						" deliveryinfo.diId ",
						" deliveryinfo.dId ",
						" DATE_FORMAT(deliveryinfo.diTime,'%Y-%m-%d') AS diTime ",//时间转换（mysql）sql server不一样
						" deliveryinfo.diType ",
						" deliveryinfo.diAdd ",
						" deliveryorder.consigneeName",
						" deliveryorder.consigneeTel ",
						" deliveryorder.shipperName ",
						" deliveryorder.consigneeAdd "
					};
		String baseEntity=" deliveryinfo ";//biao
		String joinEntity="  LEFT JOIN deliveryorder ON deliveryorder.dId = deliveryinfo.dId ";//waijian
		List<Map<String, Object>> list=searchDao.searchWithpagingInMysql(properties, //这里有很多方法，看具体情况自己使用
				baseEntity, joinEntity, null, null, conditions, null, sort, order,pageNum , index);
		int account=list.size();
		Map<String,Object> map=new HashMap<String ,Object>();
		map.put("total", account);
		map.put("rows", list);
		return map;
		//如果不懂怎么使用参照例子多看看
	}
	/**
	 * @author：tanxiaokang
	 *	@date:2017下午3:42:28
	 * @function：
	 * @param DeliveryInfo
	 * @return	
	 */
	@Override
	public int insert(DeliveryInfo deliveryInfo) {
		deliveryInfo.setDiId(EntityIDFactory.createId());
		return dao.insert(deliveryInfo);
	}
	/**
	 * @author：tanxiaokang
	 *	@date:2017下午3:04:50
	 * @function：
	 * @param ID
	 * @return	
	 */
	@Override
	public int deleteByID(String IDS) {
		int i=0;
		String []array=IDS.split(","); 
		for (String ID : array) {
			i=dao.deleteByID(ID);
		}
		return i;
	}
	/**
	 * @author：tanxiaokang
	 *	@date:2017下午3:41:00
	 * @function：
	 * @param DeliveryInfo
	 * @param ID
	 * @return	
	 */
	@Override
	public int updateByID(DeliveryInfo deliveryInfo, String ID) {
		// TODO Auto-generated method stub
		return dao.updateByID(deliveryInfo, ID);
	}
	/**
	 * @author：tanxiaokang
	 *	@date:2017下午1:28:08
	 * @function：
	 * @return	
	 */
	@Override
	public List<DeliveryInfo> getalldata() {
		// TODO Auto-generated method stub
		return dao.getcount();
	}

}
