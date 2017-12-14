package com.chenlaoda.cake.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chenlaoda.cake.entity.User;
import com.chenlaoda.cake.user.dao.UserDaoImpl;

@Service
public class UserServiceImpl implements UserService{

	@Resource
	private UserDaoImpl userDaoImpl;
	
	public void regist(User user) {
		System.out.print(user.getEmail() + user.getPassword() + user.getUserName());
		userDaoImpl.regist(user);
	}
	
	public boolean findUser(User user) {
		return userDaoImpl.findUser(user);
	}

	
}
