package com.cqut.controller.Orders;
import java.util.Map;

import javassist.bytecode.Descriptor.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import oracle.jdbc.Const;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.demo.trade.config.Configs;
import com.cqut.entity.Orders;
import com.cqut.service.Orders.IOrdersService;
import com.google.common.collect.Maps;

@Controller
@RequestMapping("/ordersController")
public class OrdersController{
	
	@Resource(name="ordersService")
	IOrdersService service;
	
	
	 //新增订单
	 @RequestMapping("/addOrders")
	 @ResponseBody
	 public void addOrders(Orders orders,String pathName,  
	            HttpServletRequest request, HttpServletResponse response){
		 String result=service.addOrders(orders);
	 }
	 
	//获取订单
			@RequestMapping("/getOrder")
			@ResponseBody
			public String getOrder(String userID,String orderID){
				
				Map<String, Object> result = service.getOrder(userID,orderID);
				JSONObject s = JSONObject.fromObject(result);
				System.out.println(s);
				return s.toString();
			}
		
			
			//修改订单状态	
			@RequestMapping("/UpdateOrders")
			@ResponseBody
			public String UpdateOrders(String ordersID,String orderState,String price){
				
				return service.UpdateOrders(ordersID,orderState,price);
			}
			
			//付款
			@RequestMapping("/pay")
			@ResponseBody
			public String pay(String orderID,String price,String houseName,
					HttpServletRequest request, HttpServletResponse response) {
				
				String path = request.getSession().getServletContext().getRealPath("bookimg");
				System.out.println("yige dizhi "+path);
				return service.pay(orderID, price, houseName,path);
				
			}
			
			@RequestMapping("/alipayCallback")
			@ResponseBody
			public Object alipayCallback(HttpServletRequest request){
				 
				  return true;
				/*   Map<String,String> params = Maps.newHashMap();

			        Map requestParams = request.getParameterMap();
			        
			        
			        for(Iterator iter = (Iterator) requestParams.keySet().iterator();iter.hasNext();){
			            String name = (String)iter.next();
			            String[] values = (String[]) requestParams.get(name);
			            String valueStr = "";
			            for(int i = 0 ; i <values.length;i++){

			                valueStr = (i == values.length -1)?valueStr + values[i]:valueStr + values[i]+",";
			            }
			            params.put(name,valueStr);
			        }
			      //非常重要,验证回调的正确性,是不是支付宝发的.并且呢还要避免重复通知.

			        params.remove("sign_type");
			        try {
			            boolean alipayRSACheckedV2 = AlipaySignature.rsaCheckV2(params, Configs.getAlipayPublicKey(),"utf-8",Configs.getSignType());

			            if(!alipayRSACheckedV2){
			                return ServerResponse.createByErrorMessage("非法请求,验证不通过,再恶意请求我就报警找网警了");
			            }
			        } catch (AlipayApiException e) {
			            logger.error("支付宝验证回调异常",e);
			        }

			        //todo 验证各种数据


			        //
			        ServerResponse serverResponse = iOrderService.aliCallback(params);
			        if(serverResponse.isSuccess()){
			            return Const.AlipayCallback.RESPONSE_SUCCESS;
			        }
			        return Const.AlipayCallback.RESPONSE_FAILED;*/
			    }
		
		
}
