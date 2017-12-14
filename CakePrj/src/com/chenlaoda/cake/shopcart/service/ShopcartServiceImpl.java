package com.chenlaoda.cake.shopcart.service;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.chenlaoda.cake.entity.ShopCart;
import com.chenlaoda.cake.shopcart.dao.ShopcartDaoImpl;

@Service
public class ShopcartServiceImpl {

	@Resource
	private ShopcartDaoImpl shopcartDaoImpl;
	
	/*
	 * saveOrUpdate
	 * */
	public void addShopcart(ShopCart shopcart) {
		ShopCart s = shopcartDaoImpl.findByCakeId(shopcart.getCakeId());
		if(s == null) {
			shopcartDaoImpl.saveShopcart(shopcart);
		}else {
			shopcart.setNumber(shopcart.getNumber() + s.getNumber());
			shopcartDaoImpl.updateShopcartByCakeId(shopcart);
		}
	}
	
	public void updateNumber(int shopcartId,int number) {
		shopcartDaoImpl.updateShopcartByShopcartId(shopcartId, number);
	}
	
	
	public List<ShopCart> allShopcart(){
		return shopcartDaoImpl.allShopcart();
	}
	
	public void clear() {
		shopcartDaoImpl.deleteAll();
	}
	
	
	public void deleteOne(int shopcartId) {
		shopcartDaoImpl.deleteOne(shopcartId);
	}
}
