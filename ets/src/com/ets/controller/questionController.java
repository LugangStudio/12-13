package com.ets.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller
public class questionController {
@Autowired private IUserMapperService services;
	
@RequestMapping("/setquestion")
	@ResponseBody
	public String setquestion(HttpServletRequest request,HttpServletResponse response,@RequestBody User user){
		services.updateByPrimaryKeySelective(user);
		return "ÐÞ¸Ä³É¹¦£¡";
	}
}
