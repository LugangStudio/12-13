package com.ets.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ets.pojo.Items;

import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
/**
 * 简单参数的传递
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/itemControllerJson")
public class ItemControllerJson {
	


	/**
	 *
	 * 请求参数为POJO类型
	 * http://localhost:8080/springmvc_day2/itemController/add.action
	 * @param request
	 * @param response
	 * @param model
	 * @throws Exception
	 */
	
	@RequestMapping(value="/add",method={RequestMethod.POST})
	@ResponseBody
	public Items add(HttpServletRequest request, HttpServletResponse response,Model model,@RequestBody Items items) throws Exception {
		System.out.println("itemName: "+items.getT1());
		
		return items;
		
	}

	
	
		
}
