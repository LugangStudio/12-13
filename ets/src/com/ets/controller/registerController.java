package com.ets.controller;

import java.util.Date;

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
		@ResponseBody
		public String registercon(HttpServletRequest request,HttpServletResponse response,@RequestBody User user){
			User users=user;
			Date date=new Date();
			users.setCreatedtime(date);
			users.setUpdatedtime(date);
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
}
