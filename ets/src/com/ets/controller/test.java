/*package com.ets.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Controller
public class test {
	
	@Autowired
	private IUserMapperService userService;
	
	@RequestMapping("/hhd")
	public void hhd(HttpServletRequest request,
			HttpServletResponse response) throws IOException{
		User user = userService.selectByPrimaryKey(1l);
		System.out.println(user.getRealname());
	}
}
*/