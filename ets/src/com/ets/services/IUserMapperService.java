package com.ets.services;

import java.util.List;

import com.ets.pojo.User;

public interface IUserMapperService {
	int deleteByPrimaryKey(Long userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
   
    List<User> getall();
    
	public int updateByUsernameSelective(User record);
	
	public long getid(String username);
}
