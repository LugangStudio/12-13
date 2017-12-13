package com.ets.mapper;

import com.ets.pojo.User;

public interface UserMapper {
	public   int deleteByPrimaryKey(Long userId);

	public   int insert(User record);

	public   int insertSelective(User record);

	public  User selectByPrimaryKey(Long userId);

	public  int updateByPrimaryKeySelective(User record);

	public  int updateByPrimaryKey(User record);
}