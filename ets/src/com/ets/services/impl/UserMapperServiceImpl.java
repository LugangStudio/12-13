package com.ets.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ets.mapper.UserMapper;
import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

@Service("userService")
public class UserMapperServiceImpl implements IUserMapperService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int deleteByPrimaryKey(Long userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Long userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<User> getall() {
		// TODO Auto-generated method stub
		return userMapper.getall();
	}

	@Override
	public int updateByUsernameSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.updateByUsernameSelective(record);
	}

	@Override
	public long getid(String username) {
		// TODO Auto-generated method stub
		return userMapper.getid(username);
	}

}
