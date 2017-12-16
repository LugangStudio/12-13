package com.ets.mapper;

import java.util.List;

import com.ets.pojo.User;

public interface UserMapper {
	public   int deleteByPrimaryKey(Long userId);

	public   int insert(User record);

	public   int insertSelective(User record);

	public  User selectByPrimaryKey(Long userId);

	public  int updateByPrimaryKeySelective(User record);

	public  int updateByPrimaryKey(User record);
	
	public List<User> getall();
	
	public int updateByUsernameSelective(User record);
	
	public long getid(String username);
}