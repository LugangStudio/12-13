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

import com.ets.pojo.Item;
import com.ets.pojo.Shipping;
import com.ets.pojo.User;
import com.ets.services.IItemmapperService;
import com.ets.services.IUserMapperService;
import com.ets.services.IshippingmapperServices;
@Controller
public class introductionController {
	@Autowired
	private IUserMapperService userservices;
	@Autowired
	private IItemmapperService itemservices;
	@Autowired
	private IshippingmapperServices shippingservices;
	
	@RequestMapping("topay")
		public ModelAndView topay(HttpServletRequest request,HttpServletResponse response,int userId,int item_id,int num){
			Item item=itemservices.selectByPrimaryKey(Long.valueOf(item_id));
			User user=userservices.selectByPrimaryKey(Long.valueOf(userId));
			List<Shipping> shippings=shippingservices.selectByuserId(Long.valueOf(userId));
			ModelAndView mv=new ModelAndView();
			mv.addObject("shippings",shippings);
			mv.addObject("item", item);
			mv.addObject("user",user);
			mv.addObject("num",num);
			mv.setViewName("pay");
			 return mv; 
		}

}
