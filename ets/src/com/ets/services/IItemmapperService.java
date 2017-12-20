package com.ets.services;

import com.ets.pojo.Item;

public interface IItemmapperService {
	   int deleteByPrimaryKey(Long itemId);

	    int insert(Item record);

	    int insertSelective(Item record);

	    Item selectByPrimaryKey(Long itemId);

	    int updateByPrimaryKeySelective(Item record);

	    int updateByPrimaryKey(Item record);
}
