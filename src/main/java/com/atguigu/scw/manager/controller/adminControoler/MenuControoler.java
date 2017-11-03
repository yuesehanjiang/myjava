package com.atguigu.scw.manager.controller.adminControoler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.scw.manager.bean.Menu;
import com.atguigu.scw.manager.service.impl.MenuService;
import com.atguigu.scw.manager.service.interface2.MenuInteface;

@Controller
public class MenuControoler {
	
	@Autowired
	MenuInteface  menuService;
	@ResponseBody
	@RequestMapping("/menu/all")
	public List<Menu>  getMenu() {
		List<Menu> listMenus = menuService.getListMenus();
		
		return listMenus;
	}
	
	
	
	@RequestMapping("/menu")
	public String  listMenu() {
	
		return "manager/main";
	}

}
