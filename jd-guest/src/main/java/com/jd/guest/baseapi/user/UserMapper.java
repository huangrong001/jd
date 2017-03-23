package com.jd.guest.baseapi.user;

import org.apache.ibatis.annotations.Param;

import com.jd.guest.user.bean.User;


public interface UserMapper{

	User selectUsernamePassword(String username);

}
