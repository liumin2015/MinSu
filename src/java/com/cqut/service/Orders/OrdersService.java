package com.cqut.service.Orders;


import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.validator.util.LoggerFactory;
import org.springframework.stereotype.Service;

import com.alipay.api.AlipayResponse;
import com.alipay.api.response.AlipayTradePrecreateResponse;
import com.alipay.demo.trade.config.Configs;
import com.alipay.demo.trade.model.ExtendParams;
import com.alipay.demo.trade.model.GoodsDetail;
import com.alipay.demo.trade.model.builder.AlipayTradePrecreateRequestBuilder;
import com.alipay.demo.trade.model.result.AlipayF2FPrecreateResult;
import com.alipay.demo.trade.service.AlipayTradeService;
import com.alipay.demo.trade.service.impl.AlipayTradeServiceImpl;
import com.alipay.demo.trade.utils.ZxingUtils;
import com.cqut.dao.SearchDao;
import  com.cqut.dao.Orders.OrdersDao;
import com.cqut.entity.House;
import  com.cqut.entity.Orders;
import com.cqut.util.EntityIDFactory;
import com.google.common.collect.Lists;

import common.Logger;

@Service
public class OrdersService implements IOrdersService{
	
	@Resource(name="ordersDao")
	OrdersDao dao ;

	@Resource(name="searchDao")
	SearchDao searchDao;
	
	// 支付宝当面付2.0服务
	private static  AlipayTradeService tradeService;
    static {

        /** 一定要在创建AlipayTradeService之前调用Configs.init()设置默认参数
         *  Configs会读取classpath下的zfbinfo.properties文件配置信息，如果找不到该文件则确认该文件是否在classpath目录
         */
    	 Configs.init("zfbinfo.properties");

        /** 使用Configs提供的默认参数
         *  AlipayTradeService可以使用单例或者为静态成员对象，不需要反复new
         */
        tradeService = new AlipayTradeServiceImpl.ClientBuilder().build();
    }
    private static Log    log = LogFactory.getLog(OrdersService.class);
    // 简单打印应答
    private void dumpResponse(AlipayResponse response) {
        if (response != null) {
            log.info(String.format("code:%s, msg:%s", response.getCode(), response.getMsg()));
            if (StringUtils.isNotEmpty(response.getSubCode())) {
                log.info(String.format("subCode:%s, subMsg:%s", response.getSubCode(),
                    response.getSubMsg()));
            }
            log.info("body:" + response.getBody());
        }
    }
    
    
    
    //支付
  	@Override
  	public String pay(String orderID,String price,String houseName,String path) {
  		
  	// (必填) 商户网站订单系统中唯一订单号，64个字符以内，只能包含字母、数字、下划线，
        // 需保证商户系统端不能重复，建议通过数据库sequence生成，
        String outTradeNo = orderID;

        // (必填) 订单标题，粗略描述用户的支付目的。如“xxx品牌xxx门店当面付扫码消费”
        String subject = "MIN民宿网站扫码消费";

        // (必填) 订单总金额，单位为元，不能超过1亿元
        // 如果同时传入了【打折金额】,【不可打折金额】,【订单总金额】三者,则必须满足如下条件:【订单总金额】=【打折金额】+【不可打折金额】
        String totalAmount = price;
        
        // (可选) 订单不可打折金额，可以配合商家平台配置折扣活动，如果酒水不参与打折，则将对应金额填写至此字段
        // 如果该值未传入,但传入了【订单总金额】,【打折金额】,则该值默认为【订单总金额】-【打折金额】
        String undiscountableAmount = "0";

        // 卖家支付宝账号ID，用于支持一个签约账号下支持打款到不同的收款账号，(打款到sellerId对应的支付宝账号)
        // 如果该字段为空，则默认为与支付宝签约的商户的PID，也就是appid对应的PID
        String sellerId = "";

        // 订单描述，可以对交易或商品进行一个详细地描述，比如填写"购买商品2件共15.00元"
        String body = "预定房源"+houseName+"消费"+price+"元";

        // 商户操作员编号，添加此参数可以为商户操作员做销售统计
        String operatorId = "test_operator_id";

        // (必填) 商户门店编号，通过门店号和商家后台可以配置精准到门店的折扣信息，详询支付宝技术支持
        String storeId = "test_store_id";
        
     // 业务扩展参数，目前可添加由支付宝分配的系统商编号(通过setSysServiceProviderId方法)，详情请咨询支付宝技术支持
        ExtendParams extendParams = new ExtendParams();
        extendParams.setSysServiceProviderId("2088100200300400500");

        // 支付超时，定义为120分钟
        String timeoutExpress = "120m";
        
     // 商品明细列表，需填写购买商品详细信息，
        List<GoodsDetail> goodsDetailList = new ArrayList<GoodsDetail>();
     // 创建一个商品信息，参数含义分别为商品id（使用国标）、名称、单价（单位为分）、数量，如果需要添加商品类别，详见GoodsDetail
        GoodsDetail goods1 = GoodsDetail.newInstance(orderID, houseName, Integer.parseInt(price), 1);
        // 创建好一个商品后添加至商品明细列表
        goodsDetailList.add(goods1);
        // 创建扫码支付请求builder，设置请求参数
        AlipayTradePrecreateRequestBuilder builder = new AlipayTradePrecreateRequestBuilder()
            .setSubject(subject).setTotalAmount(totalAmount).setOutTradeNo(outTradeNo)
            .setUndiscountableAmount(undiscountableAmount).setSellerId(sellerId).setBody(body)
            .setOperatorId(operatorId).setStoreId(storeId).setExtendParams(extendParams)
            .setTimeoutExpress(timeoutExpress)
            .setNotifyUrl("http://minmin.s1.natapp.cc/MinMinSu/ordersController/alipayCallback.do")//支付宝服务器主动通知商户服务器里指定的页面http路径,根据需要设置
            .setGoodsDetailList(goodsDetailList);

        AlipayF2FPrecreateResult result = tradeService.tradePrecreate(builder);
        switch (result.getTradeStatus()) {
            case SUCCESS:
                log.info("支付宝预下单成功: )");
                              
                AlipayTradePrecreateResponse response = result.getResponse();
                dumpResponse(response);
                
                File folder = new File(path);
                if(!folder.exists()){
                    folder.setWritable(true);
                    folder.mkdirs();
                }
                // 需要修改为运行机器上的路径
                String filePath = String.format(path+"/qr-%s.png",response.getOutTradeNo());
                String qrFileName = String.format("qr-%s.png",response.getOutTradeNo());
                log.info("filePath:" + filePath);
                ZxingUtils.getQRCodeImge(response.getQrCode(), 256, filePath);
              /*  String qrUrl = PropertiesUtil.getProperty("ftp.server.http.prefix")+targetFile.getName();*/
            	Map<String,Object> map = new HashMap<>();
        		map.put("state", "2");
        		dao.updatePropByID(map.entrySet(), orderID);
                
                Map<String,Object> map2=new HashMap<String,Object>();
    			map2.put("type", "1");
    			map2.put("path", filePath);
    			map2.put("name", qrFileName);
    			/*map2.put("qrcode", response.getQrCode());*/
                return JSONObject.fromObject(map2).toString();

            case FAILED:
                log.error("支付宝预下单失败!!!");
                return "2";

            case UNKNOWN:
                log.error("系统异常，预下单状态未知!!!");
                return "3";

            default:
                log.error("不支持的交易状态，交易返回异常!!!");
                return "4";
        }
  		
  	}
    
    
    
    
	//新增订单
	@Override
	public String addOrders(Orders orders) {
		// TODO Auto-generated method stub
		String id=EntityIDFactory.createId();
		orders.setID(id);
		orders.setState("2");
		int result = dao.save(orders);
		return result==1?"true":"false";
	}
	
	//修改订单状态
		@Override
	public String UpdateOrders(String ordersID,String orderState,String price){
				
		Orders orders = new Orders();
		orders.setState(orderState);
		Map<String,Object> map = new HashMap<>();
		map.put("state", orderState);
		String result = dao.updatePropByID(map.entrySet(), ordersID)== 1 ? "true": "false";
		return result;
	}
	
	
	        //获取订单信息
			@Override
			public Map<String, Object> getOrder(String userID,String orderID) {
				
				String condition = " 1 = 1 "+" GROUP BY orders.ID";
				String condition1 = " 1 = 1 ";
				if(userID != null && userID !=""){
					condition = " 1 = 1 and  orders.userID =" + userID+" GROUP BY orders.ID";
				}else if(orderID != null && orderID !=""){
					condition = " 1 = 1 and  orders.ID =" + orderID;
				}
				
				String joinEntity = " LEFT JOIN `user` ON orders.userID = `user`.ID"+
	                                " LEFT JOIN house ON orders.houseID = house.ID"+
						            " LEFT JOIN image ON orders.houseID = image.houseID";
				
				int count = getTotalByCondition(condition1);
				String[] properties = new String[]{"image.`name` as houseimg",
	            "`user`.photo as userimg",
	            "house.address as houseads",
	            "house.houseName",
	            "orders.endTime as bookendTime",
	            "orders.starTime as bookstaTime",
	            "orders.ID as ordersid",
	            "orders.state as orderstate",
	            "orders.price",
	            "`user`.userName"};
				List<Map<String, Object>> result = searchDao.searchForeign(properties, "orders", joinEntity, null, null, condition);
			
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("total", count);
				map.put("rows", result);
				return map;
				
			}
			
			@Override
			public int getTotalByCondition(String condition) {
				return dao.getCountByCondition(condition);
			}
			
			//下面都是引用支付宝API
			
	
}
