package com.jd.guest.user.service;

import org.springframework.stereotype.Service;

import com.jd.guest.user.bean.User;

public interface UserService {

	public User userLogin(User user);

}
