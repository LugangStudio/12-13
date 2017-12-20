package com.ets.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ets.mapper.ItemMapper;
import com.ets.pojo.Item;
import com.ets.services.IItemmapperService;

@Service("itemService")
public class ItemMapperServiceImp implements IItemmapperService {
	@Autowired 
	private	ItemMapper ItemMapper;

	@Override
	public int deleteByPrimaryKey(Long itemId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Item record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Item record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Item selectByPrimaryKey(Long itemId) {
		// TODO Auto-generated method stub
		return ItemMapper.selectByPrimaryKey(itemId);
	}

	@Override
	public int updateByPrimaryKeySelective(Item record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Item record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
