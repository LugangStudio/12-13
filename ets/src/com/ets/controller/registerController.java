package com.ets.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller
public class registerController {
	@Autowired 
	IUserMapperService iuservices;
	
		/**
		 * 
		 * @param request
		 * @param response
		 * @param username
		 * @param password
		 * @return
		 */
		@RequestMapping("/registercon")

		public String registercon(HttpServletRequest request,HttpServletResponse response,String username,String password){
			System.out.println("*****************************");
			System.out.println(username+"成功注册！");
			System.out.println("*****************************");
			User user=new User();
			Date date=new Date();
			user.setUsername(username);
			user.setPassword(password);
			user.setCreatedtime(date);
			user.setUpdatedtime(date);
		int i=	iuservices.insertSelective(user);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
			return "login";
		}
		@RequestMapping("/jsontest")
		@ResponseBody
		public ModelAndView jsontest(){
			ModelAndView mv=new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
		@RequestMapping("/testusername")
		@ResponseBody
		public String testusername(HttpServletRequest request,HttpServletResponse response,@RequestBody User user){
			String result="用户名未被注册！！！";
			System.out.println("传过来的username:"+user.getUsername());
			List<User> users=iuservices.getall();
			for (User user2 : users) {
				if(user.getUsername().equals(user2.getUsername()))result="用户名已被注册！！";
			}
			System.out.println("****************************");
			System.out.println(result);
			System.out.println("****************************");
			return result;
		}
}
