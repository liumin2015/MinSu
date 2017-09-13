package com.cqut.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class PropertiesTool{
	static Properties systemPram;
	static Map<String, String> propMap = new HashMap<String, String>();
	static Map<String, String> propMapByBaseUrl = new HashMap<String, String>();
	
	public PropertiesTool() {
//		System.out.println("读取sys配置信息");
		
		systemPram = new Properties();
		InputStream inStream = PropertiesTool.class.getClassLoader()
				.getResourceAsStream("config/systemParameters.properties");
		
		if(inStream != null) {
			try{
				systemPram.load(inStream);
				
				Set<Object> Setkeyset = systemPram.keySet(); 
				for (Object object : Setkeyset) { 
					String propValue= systemPram.getProperty(object.toString()).toString(); 
					propMap.put(object.toString(), propValue); 
				} 
			} catch(IOException e){
				System.out.println("读取系统配置出错");
				e.printStackTrace();
			}
		} else {
			System.err.println("系统配置路径出错");
		}
	}

	public static  String getSystemPram(String key) {
		if(propMap.containsKey(key))
			return propMap.get(key);
		else {
			Object o = systemPram.getProperty(key);
			if(o != null){
				propMap.put(key, o.toString());
				return o.toString();
			} else {
				System.err.println("读取" + key + "出错");
				return null;
			}
		}
	}

	public static  String getBaseUrl(String key) {
		if(propMapByBaseUrl.containsKey(key))
			return propMapByBaseUrl.get(key);
		else {
			Object o = systemPram.getProperty(key);
			Object baseUrl = systemPram.getProperty("BASEURL");
			if( (o != null) && (baseUrl != null) ){
				StringBuffer sb = new StringBuffer();
				sb.append(baseUrl.toString());
				sb.append(o.toString());
				propMapByBaseUrl.put(key, sb.toString());
				return sb.toString();
			} else if( o == null ){
				System.err.println("读取" + key + "出错");
				return null;
			} else {
				System.err.println("读取BASEURL出错");
				return null;
			}
		}
	}

}
