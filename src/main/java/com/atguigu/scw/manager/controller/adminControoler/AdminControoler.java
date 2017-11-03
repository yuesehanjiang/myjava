package com.atguigu.scw.manager.controller.adminControoler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.atguigu.scw.manager.bean.Admin;
import com.atguigu.scw.manager.service.interface2.AdminInteface;

@Controller
public class AdminControoler {
	
	@Autowired
	
	AdminInteface  adminInteface;
     //登陆功能的实现
	@RequestMapping("/permission/user/login")
	   public String getController(Admin admin){
		   
		   Admin login = adminInteface.getLogin(admin);
		   
		   System.out.println(login);
		   return null;
	   }
	
	
	
}
