package com.ets.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ets.mapper.ShippingMapper;
import com.ets.pojo.Shipping;
import com.ets.services.IshippingmapperServices;
@Service("shippingservices")
public class shippingmapperimp implements IshippingmapperServices{
@Autowired
private ShippingMapper shippingMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer receiverId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Shipping record) {
		// TODO Auto-generated method stub
		return shippingMapper.insert(record);
	}

	@Override
	public int insertSelective(Shipping record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Shipping selectByPrimaryKey(Integer receiverId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Shipping record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Shipping record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Shipping> selectByuserId(long userId) {
		// TODO Auto-generated method stub
		return shippingMapper.selectByuserId(userId);
	}

}
