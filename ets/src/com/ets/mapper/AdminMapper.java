package com.ets.mapper;

import com.ets.pojo.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer adId);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adId);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}