package com.chenlaoda.cake.cake.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chenlaoda.cake.cake.service.CakeServiceImpl;
import com.chenlaoda.cake.entity.Cake;
import com.chenlaoda.cake.entity.CakeIndex;
import com.chenlaoda.cake.entity.Type;



@Controller
@RequestMapping("/cake")
public class CakeController {

	private List<Cake> list = null;
	

	@Resource
	private CakeServiceImpl cakeServiceImpl;
	
	
	
	
	
	/*
	 * 查看single页面
	 * 
	 * */
	@RequestMapping("/single")
	public String single(HttpServletRequest request) {
		String cakeId = request.getParameter("cakeId");
		cakeServiceImpl.loadSingleCake(cakeId, request.getSession());
		List<Type> list = (List<Type>)request.getSession().getAttribute("type");
		String type = list.get(0).getType();
		request.getSession().setAttribute("partCakeList", cakeServiceImpl.searchCake("type,"+type));
		return "frontPage/single";
	}
	
	
	/*
	 * 查看product页面
	 * */
	@RequestMapping("/products")
	public String product(HttpSession session) {
		
		session.setAttribute("partCakeList", session.getAttribute("allCakeList"));
		
		return "frontPage/products";
		
	}
	
	/*
	 * 通过检索框检索cake
	 * */
	@RequestMapping("/searchCake")
	public String searchCake(@RequestParam String str,HttpSession session) {
		
		List<CakeIndex> list = cakeServiceImpl.searchCake(str);
		session.setAttribute("partCakeList",list);
		session.setAttribute("partCount", list.size());
		return "frontPage/products";
	}
	
	/*
	 * 通过超链接检索cake
	 * */
	@RequestMapping("/findCake")
	public String findCake(HttpServletRequest request) {
		String str1 = request.getParameter("str1");
		String str2 = request.getParameter("str2");
		List<CakeIndex> list = cakeServiceImpl.searchCake(str1+","+str2);
		request.getSession().setAttribute("partCakeList",list);
		request.getSession().setAttribute("partCount", list.size());
		return "frontPage/products";
		
	}
	
	
	@RequestMapping("/changePageIndex")
	public String changePageIndex(@RequestParam String pageIndex,HttpSession session) {
		System.out.println("pageIndex");
		session.setAttribute("pageIndex", pageIndex);
		return "frontPage/products";
	}

	
	
	/*
	 * 在后台查看所有cake信息
	 * */
	
	@RequestMapping("/check")
	public String check(HttpSession session) {
		
		if(session.getAttribute("back_allCakeList") == null) {
			session.setAttribute("back_allCakeList", cakeServiceImpl.checkCake());
		}
		if(session.getAttribute("back_allSize") == null) {
			session.setAttribute("back_allSize", cakeServiceImpl.checkSize());
		}
		if(session.getAttribute("back_allType") == null) {
			session.setAttribute("back_allType", cakeServiceImpl.checkType());
		}
		return "backPage/check";
	}
	
	@RequestMapping(value="/deleteOne",method = RequestMethod.POST)
	public void deleteOne(String cakeId) {
		cakeServiceImpl.deleteOne(cakeId);
	}
	
	
	
	@RequestMapping(value="/addOne",method = RequestMethod.POST)
	public String addOne(HttpServletRequest request) {
		String cakeName = request.getParameter("cakeName");
		String color = request.getParameter("color");
		String taste = request.getParameter("taste");
		String discount = request.getParameter("discount");
		String discription = request.getParameter("discription");
		String img = request.getParameter("img");
		String img1 = request.getParameter("img2");
		String img2 = request.getParameter("img3");
		String img3 = request.getParameter("img3");
		String size = request.getParameter("size");
		String price = request.getParameter("price");
		String type = request.getParameter("type");
		System.out.println("controller " + taste);
		cakeServiceImpl.addOne(cakeName,color,taste,discount,discription,img,img1,img2,img3,size,price,type);
		return "backPage/add";
	}
	
	@RequestMapping("/fun")
	public String fun(HttpServletRequest request) {

		request.getSession().setAttribute("chenshiyi", 1);
		System.out.println("我的妈呀");
		return "/frontPage/first";
	}
	
	
	
}
