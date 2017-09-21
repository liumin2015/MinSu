package com.cqut.controller.Story;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.cqut.entity.House;
import com.cqut.entity.Story;
import com.cqut.service.Story.IStoryService;
import com.cqut.util.PropertiesTool;

@Controller
@RequestMapping("/storyController")
public class StoryController{
	
	@Resource(name="storyService")
	IStoryService service;
	
	//根据条件查询房源信息
		@RequestMapping("/getStory")
		@ResponseBody
		public String getStory(String storyID,String location){
			
			Map<String, Object> result = service.getStory(storyID,location);
			JSONObject s = JSONObject.fromObject(result);
			System.out.println(s);
			return s.toString();
		}
		
		//发布房源
		 @RequestMapping("/addStory")
		 @ResponseBody
		 public void addHouse(Story story,String pathName,  
		            HttpServletRequest request, HttpServletResponse response){
			 String result=service.addStory(story);
			 try {
				uploadFile(pathName,request,response);
				response.sendRedirect("index.jsp"); //发布成功跳转至首页
				}
			 catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
}
		 
		//文件保存到服务器（图片）
		 @RequestMapping("/uploadFile"  )
		 @ResponseBody
		 public String uploadFile(String pathName, 
		            HttpServletRequest request, HttpServletResponse response)  
		            throws Exception {  
		      
			 CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
		        //判断 request 是否有文件上传,即多部分请求  
		       // String StaffID=request.getSession().getAttribute("USERID").toString();
		       // List<Map<String, Object>> list= new ArrayList<Map<String,Object>>();
		        if(multipartResolver.isMultipart(request)){  
		            //转换成多部分request    
		        	
		            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request; 
		            List<MultipartFile> files = multiRequest.getFiles("file");
		            System.out.println("files:"+files.size());
		            //取得request中的所有文件名  
		            int index=0;
		            while(files.size()>index){  
		                //记录上传过程起始时的时间，用来计算上传时间  
		                int pre = (int) System.currentTimeMillis();  
		                //取得上传文件  
		                MultipartFile file1 = files.get(index);  
		                if(file1 != null){  
		                    //取得当前上传文件的文件名称  
		                    String myFileName = file1.getOriginalFilename();  
		                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
		                    if(!myFileName.trim().equals("")){  
		                        System.out.println(myFileName);  
		                        //重命名上传后的文件名  
		                        String fileName =myFileName;  
		                        //定义上传路径  
		                        String path ;
		                        String separator=System.getProperty("file.separator");
		                        if(pathName!=null&&!pathName.equals("")){
		                        	path= PropertiesTool.getSystemPram("filePath")+separator +pathName+separator + fileName; 
		                        }else
		                        	path = PropertiesTool.getSystemPram("filePath")+separator + fileName;
		                        System.out.println("path "+path);
		                        File parent ;
		                        if(pathName!=null&&!pathName.equals("")){
		                        	parent =new File(PropertiesTool.getSystemPram("filePath")+separator +pathName);
		                        }else
		                        	parent =new File(PropertiesTool.getSystemPram("filePath"));
		                        if( !parent.exists()){
		                        	parent.mkdirs();
		                        }
		                        File localFile = new File(path);  
		                        try {
									file1.transferTo(localFile);
								} catch (IllegalStateException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (IOException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}  
		         
		                }else{
		                	 System.out.println(index+" is null");  
		                }  
		                //记录上传该文件后的时间  
		                int finaltime = (int) System.currentTimeMillis();  
		                System.out.println(finaltime - pre);
		                index++;
		            }  
		        }  
		      

		    }
		        return "1";

		 }
}
