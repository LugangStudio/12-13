package com.ets.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller
public class loginController {
	@Autowired
	private IUserMapperService services;
	@RequestMapping("/yanzheng")
	@ResponseBody
		public String yanzheng(HttpServletRequest request,HttpServletResponse response,@RequestBody User user){
			String result="�˺Ż����벻��ȷ��";
			System.out.println("*****************************");
			System.out.println("��ʼ��֤��¼��"+user.getUsername()+"*******"+user.getPassword());
			System.out.println("*****************************");
			List<User> users=services.getall();
			for (User user2 : users) {
				if(user.getUsername().equals(user2.getUsername())&&
						user.getPassword().equals(user2.getPassword())){
					result="�˺�������֤��ȷ��";
				}
			}
			System.out.println("*****************************");
			System.out.println("��֤�����"+result);
			System.out.println("*****************************");
			return result;
		}

	@RequestMapping("/tohome2")
	public ModelAndView tohome2(HttpServletRequest request,HttpServletResponse response,String username){
		System.out.println("****************************");
		System.out.println(username+"�ɹ���¼��");
		System.out.println("****************************");
		List<User> users=services.getall();
		long userId=services.getid(username);
		User user2=new User();
		for (User user : users) {
			if(user.getUsername().equals(username)){user2=user;}
			
		}
		ModelAndView mv=new ModelAndView();
		mv.addObject("userId",userId);
		mv.addObject("user", user2);
		mv.setViewName("home2");
		return mv;
}
}
