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
	@Autowired IUserMapperService services;
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
		System.out.println("****************************");
		services.updateByUsernameSelective(user);
		String result=user.getUsername();
		return result;
	}
}
