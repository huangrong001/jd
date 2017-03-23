package com.jd.guest.user.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jd.guest.user.bean.User;
import com.jd.guest.user.service.UserService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userController/loginUser")
	public String loginUser(User user,RedirectAttributes redirectAttributes,HttpSession session){
		logger.debug("用户名："+user.getUserName()+"  密码："+user.getPassword());
		User selectUser = userService.userLogin(user);
	
		if(selectUser != null){
			session.setAttribute("user", selectUser);
			return "redirect:/index";
		}
		redirectAttributes.addFlashAttribute("errMsg", "用户名或密码错误！");

		return "redirect:/login"; 
		
	}
	@RequestMapping("/userController/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "redirect:/index";
	}
	
}
