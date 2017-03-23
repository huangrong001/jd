package com.jd.guest.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jd.guest.baseapi.user.UserMapper;
import com.jd.guest.user.bean.User;
import com.jd.guest.user.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper; 
	
	@Override
	public User userLogin(User user) {
		User selectUser = userMapper.selectUsernamePassword(user.getUserName());
		if(selectUser != null && user.getPassword().equals(selectUser.getPassword())){
			return selectUser;
		}
	
		return null;
	}

	
}
