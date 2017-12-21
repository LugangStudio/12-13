package com.ets.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller

public class personindexcontroller {
	@Autowired
	private IUserMapperService services;
	
	
	@RequestMapping("/personindexcon")
	public ModelAndView personindexcon(HttpServletRequest request,HttpServletResponse response,String username){	
	ModelAndView mv=new ModelAndView();	
	
	mv.addObject("username",username);
	mv.setViewName("personindex");
	return mv;
	}
	
	/**
	 * Ìø×ªµ½infomation.jsp´«username,id
	 * @param request
	 * @param response
	 * @param username
	 * @return
	 */
	@RequestMapping("/hreftoinformation")
	public ModelAndView hreftoinformation(HttpServletRequest request,HttpServletResponse response,String username){
		String id=String.valueOf(services.getid(username));
		ModelAndView mv=new ModelAndView();
		mv.addObject("id", id);
		mv.addObject("username",username);
		mv.setViewName("information");
		return mv;
	}
}
