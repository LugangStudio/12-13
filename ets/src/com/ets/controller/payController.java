package com.ets.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ets.pojo.Order;
import com.ets.pojo.Shipping;
import com.ets.services.IOrdermapperservice;
import com.ets.services.IshippingmapperServices;

@Controller
public class payController {
	@Autowired 
	private IshippingmapperServices shippingservices;
	
	@Autowired
	private IOrdermapperservice orderservices;
	
	@RequestMapping("/insertshipping")
	@ResponseBody
	/**
	 * 
	 * @param request
	 * @param response
	 * @param shipping
	 * @return
	 * @throws Exception
	 */
	public String insertshipping(HttpServletRequest request,HttpServletResponse response,@RequestBody Shipping shipping)throws Exception{
		Date date=new Date();
		shipping.setCreated(date);
		shippingservices.insert(shipping);
		return "success insert";
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @param order
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insertOrder")
	@ResponseBody
	public String insertOrder(HttpServletRequest request,HttpServletResponse response,@RequestBody Order order)throws Exception{
		Date date=new Date();
		order.setCreateTime(date);
		order.setStatus(10);
		orderservices.insert(order);
		
		return "success insert";
	}
	
	@RequestMapping("/selectid")
	@ResponseBody
	public Shipping selectid(HttpServletRequest request,HttpServletResponse response,@RequestBody Shipping shipping)throws Exception{
		Shipping shipping2= shippingservices.selectByPrimaryKey(shipping.getReceiverId());
		return shipping2;
	}
/**
 * 
 * @param request
 * @param response
 * @param shipping
 * @return
 * @throws Exception
 */
	@RequestMapping("/deleteshipping")
	@ResponseBody
	public String deleteshipping(HttpServletRequest request,HttpServletResponse response,@RequestBody Shipping shipping)throws Exception{
		shippingservices.deleteByPrimaryKey(shipping.getReceiverId());
		return"success";
	}
}
