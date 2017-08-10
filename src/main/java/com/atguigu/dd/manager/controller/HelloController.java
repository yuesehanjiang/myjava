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
         System.out.println(123);
        return "forward:/success.jsp";
    }

}
