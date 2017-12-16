package com.ets.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller
public class informationController {
	public User validate(User user){
		if(user.getEmail()==""){user.setEmail(null);}
		if(user.getUsername()==""){user.setUsername(null);}
		if(user.getRealname()==""){user.setRealname(null);}
		if(user.getPhone()==""){user.setPhone(null);}
		return user;
	}
	@Autowired 
	IUserMapperService services;
	/**
	 * information.jsp保存修改，将相关数据保存！，
	 * 一开始想用updatebyprimarykeyselective..获取不了数据库user_id..so   暂时未能解决
	 * @return
	 */
	@RequestMapping("/updatetb_user")
	@ResponseBody
	public String updatetb_user(@RequestBody User user){
		System.out.println("****************************");
		System.out.println(user.getSex());
		System.out.println(user.getUsername());
		System.out.println(user.getBirthday());
		System.out.println(user.getUserId());
		System.out.println("*****"+user.getEmail());
		System.out.println("****************************");
	user=validate(user);
		services.updateByPrimaryKeySelective(user);
		//String result=user.getUsername();
		return "修改成功！";
	}
}
