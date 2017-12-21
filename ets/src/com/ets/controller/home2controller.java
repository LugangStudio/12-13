package com.ets.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ets.pojo.Item;
import com.ets.pojo.User;
import com.ets.services.IItemmapperService;
import com.ets.services.IUserMapperService;
import com.ets.services.impl.ItemMapperServiceImp;

@Controller

public class home2controller {
	@Autowired
	private IItemmapperService itemservices;
	@Autowired
	private IUserMapperService userservices;
	
	@RequestMapping("/hreftointroduction")
 public ModelAndView hreftointroduction(HttpServletRequest request,HttpServletResponse response,int userID,int item_id)throws Exception{
	Item item=itemservices.selectByPrimaryKey(Long.valueOf(item_id));
	User user=userservices.selectByPrimaryKey(Long.valueOf(userID));
	ModelAndView mv=new ModelAndView();
	mv.addObject("item", item);
	mv.addObject("user",user);
	mv.setViewName("introduction");
	 return mv; 
 }
}
