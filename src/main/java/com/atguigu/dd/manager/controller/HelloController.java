package com.atguigu.dd.manager.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.atguigu.dd.bean.Person;
import com.atguigu.dd.manager.bean.TUser;
import com.atguigu.dd.manager.service.UserService;

@Controller
public class HelloController {
    
    @Autowired
    UserService userService;

    @RequestMapping("/hello")
    public String hello(@RequestParam(value = "id", defaultValue = "2") Integer id, Model model) {
        Person person = new Person();
         TUser tUser = userService.getUserById(id);
         model.addAttribute("user", tUser);

        Map<String, String> map = new HashMap<String, String>();
        map.put("key01", "val01...");
        map.put("key02", "val02...");
        map.put("key03", "val03...");
        map.put("key04", "val04...");
        map.put("key05", "val05...");
        map.put("key06", "val06...");
        System.out.println(map);

        return "forward:/success.jsp";
    }

}
