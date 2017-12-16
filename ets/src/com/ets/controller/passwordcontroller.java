package com.ets.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller
public class passwordcontroller {
	@Autowired private IUserMapperService services;
	
		@RequestMapping("/testpassword")
		@ResponseBody
	public String testpassword(HttpServletRequest request,HttpServletResponse reponse,@RequestBody User user){
			String result="";
			if(!user.getPassword().equals(services.selectByPrimaryKey(user.getUserId()).getPassword())){
				result="密码不正确，请重新输入！！！";
			}
			return result;
	}
		
		@RequestMapping("/updatepassword")
		@ResponseBody
	public String updatepassword(HttpServletRequest request,HttpServletResponse reponse,@RequestBody User user){
			services.updateByPrimaryKeySelective(user);
			
			return "修改成功！！！";
	}
	
}
