package com.chenlaoda.cake.shopcart.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chenlaoda.cake.entity.ShopCart;
import com.chenlaoda.cake.entity.User;
import com.chenlaoda.cake.shopcart.service.ShopcartServiceImpl;

@Controller
@RequestMapping("/shopcart")
public class ShopcartControllerImpl {

	
	@Resource
	private ShopcartServiceImpl shopcartServiceImpl;
	
	/*
	 * 如果购物车有此商品，count更新，如果没有，add,   ajax
	 * */
	@RequestMapping(value="/addShopcart",method=RequestMethod.POST)
	public void addShopcart(HttpServletRequest request) {
		int cakeId =Integer.parseInt(request.getParameter("cakeId"));
		String cakeName = request.getParameter("cakeName");
		double price = Double.parseDouble(request.getParameter("price"));
		String img = request.getParameter("img");
		int count = Integer.parseInt(request.getParameter("number"));
		User user = (User)request.getSession().getAttribute("user");
		int userId = user.getUserId();
		System.out.println("userId shi"+userId);
		ShopCart shopcart = new ShopCart();
		shopcart.setCakeId(cakeId);
		shopcart.setNumber(count);
		shopcart.setPrice(price);
		shopcart.setImg(img);
		shopcart.setUserId(userId);
		shopcart.setCakeName(cakeName);
		shopcart.setDate(new Date());
		shopcartServiceImpl.addShopcart(shopcart);
	}
	
	@RequestMapping(value="/checkShopcart")
	public String checkShopcart(HttpServletRequest request) {
		request.getSession().setAttribute("shopcartList", shopcartServiceImpl.allShopcart());
		return "frontPage/checkout";
	}
	
	/*
	 * 购物车 - + 按钮 ，ajax进入，update
	 * */
	@RequestMapping(value = "/updateNumber",method = RequestMethod.GET)
	public void updateNumber(HttpServletRequest request) {
		System.out.println(request.getParameter("shopcartId"));
		int shopcartId = Integer.parseInt(request.getParameter("shopcartId"));
		int number = Integer.parseInt(request.getParameter("number"));
		if(number <= 0) {
			System.out.println("number shi ling");
			shopcartServiceImpl.deleteOne(shopcartId);
			return;
		}
		System.out.println(number);
		shopcartServiceImpl.updateNumber(shopcartId, number);
		List<ShopCart> list = (List<ShopCart>) request.getSession().getAttribute("shopcartList");
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getShopcartId() == shopcartId) {
				list.get(i).setNumber(number);
			}
		}
	}
	
	
	/*
	 * shopcart页面结账按钮
	 * */
	@RequestMapping("/settlement")
	public String settlement(HttpSession session) {
		List<ShopCart> list = (List<ShopCart>) session.getAttribute("shopcartList");
		double pay = 0;
		for(int i = 0; i < list.size();i++) {
			pay = pay + list.get(i).getPrice() * list.get(i).getNumber();
		}
		System.out.println(pay);
		session.setAttribute("shopcartList", null);
		shopcartServiceImpl.clear();
		return "frontPage/products";
	}
	
	
	@RequestMapping(value="/deleteOne",method=RequestMethod.POST)
	public void deleteOne(String shopcartId) {
		shopcartServiceImpl.deleteOne(Integer.parseInt(shopcartId));
		
	}
	
}
