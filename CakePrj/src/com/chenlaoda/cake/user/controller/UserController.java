package com.chenlaoda.cake.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chenlaoda.cake.entity.User;
import com.chenlaoda.cake.user.service.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping("/regist")
	public String regist(@RequestParam String userName,@RequestParam String email,@RequestParam String password,HttpSession session) {
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setUserName(userName);
		userServiceImpl.regist(user);
		System.out.print(user.getUserId());
		session.setAttribute("user", user);
		return "frontPage/index";
	}
	
	@RequestMapping(value = "/signin",method = RequestMethod.POST)
	public String signup(@RequestParam String email,@RequestParam String password,HttpSession session,HttpServletResponse response,HttpServletRequest request) {
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		boolean b = userServiceImpl.findUser(user);
		if(b) {
			session.setAttribute("user", user);
			System.out.println("sign up success " + user.getUserId());
			if(request.getParameter("check").equals("on")) {
				Cookie cookie1 = new Cookie("email",user.getEmail());
				cookie1.setMaxAge(1*24*60*60*1000);
				Cookie cookie2 = new Cookie("password",user.getPassword());
				cookie2.setMaxAge(1*24*60*60*1000);
				response.addCookie(cookie1);
				response.addCookie(cookie2);
			}
		}
		return "frontPage/index";
	}

	@RequestMapping("/addCookie")
	public void addCookie(HttpServletRequest request,HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("email")) {
				request.getSession().setAttribute("email", cookie.getValue());
			}else if(cookie.getName().equals("password")) {
				request.getSession().setAttribute("password", cookie.getValue());
			}
		}
	}
	
	
	
}
