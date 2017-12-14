package com.chenlaoda.cake.shopcart.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.chenlaoda.cake.entity.ShopCart;

@Repository
public class ShopcartDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	public List<ShopCart> allShopcart(){
		List<ShopCart> list = new ArrayList<ShopCart>();
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from ShopCart");
			return query.list();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
		return null;
	}
	
	public ShopCart findByCakeId(int cakeId) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from ShopCart where cakeId=?");
			query.setParameter(0, cakeId);
			return (ShopCart) query.list().get(0);
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
		return null;
	}
	
	public void saveShopcart(ShopCart shopcart) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			session.save(shopcart);
			tran.commit();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
	}
	
	public void updateShopcartByCakeId(ShopCart shopcart) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("update ShopCart set number=? where cakeId=?");
			query.setParameter(0, shopcart.getNumber());
			query.setParameter(1, shopcart.getCakeId());
			query.executeUpdate();
			tran.commit();
			session.close();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
	}
	
	public void updateShopcartByShopcartId(int shopcartId,int number) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("update ShopCart set number=? where shopcartId=?");
			query.setParameter(0, number);
			query.setParameter(1, shopcartId);
			query.executeUpdate();
			tran.commit();
			session.close();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
	}
	
	public void deleteAll() {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			session.createQuery("delete from ShopCart").executeUpdate();
			tran.commit();
			session.close();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
	}
	
	public void deleteOne(int shopcartId) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			String hql = "delete from ShopCart where shopcartId=" + shopcartId;
			session.createQuery(hql).executeUpdate();
			tran.commit();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
	}
	
	
	
}
