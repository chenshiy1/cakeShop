package com.chenlaoda.cake.cake.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.chenlaoda.cake.entity.Cake;
import com.chenlaoda.cake.entity.Size;
import com.chenlaoda.cake.entity.Type;


@Repository
public class CakeDaoImpl implements CakeDao{

	@Resource
	private JdbcTemplate jdbcTemplate;
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Cake> getAllCake(){
		
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from Cake");
			tran.commit();
			return query.list();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }
		return null;
	}
	
	
	
	
	
	
	public Cake findById(int cakeId) {
		System.out.println(cakeId);
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Cake cake = session.get(Cake.class, cakeId);
			tran.commit();
			return cake;
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    }finally {
	    	session.close();
	    }
		return null;
	}

	
	public List<Cake> findByCakeName(String cakeName){
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.getCurrentSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from Cake where cakeName=?");
			query.setParameter(0, cakeName);
			System.out.println("≤È’“ÕÍ≥…");
			return query.list();		
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } 
		return null;
	}
	
	public List<Cake> findByColor(String color){
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.getCurrentSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from Cake where color=?");
			query.setParameter(0, color);
			return query.list();		
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } 
		return null;
	}
	
	public List<Cake> findByTaste(String taste){
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.getCurrentSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from Cake where taste=?");
			query.setParameter(0, taste);
			return query.list();		
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } 
		return null;
	}
	
	public List<Cake> findBySize(String str){
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.getCurrentSession();
			tran = session.beginTransaction();
			List<Cake> list = new ArrayList<Cake>();
			Query query = session.createQuery("from Size where size=?");
			query.setParameter(0, str);
			List<Size> list1 = query.list();
			for(int i = 0; i < list1.size(); i++) {
				list.add(findById(list.get(i).getCakeId()));
			}
			return list;
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } 
		return null;
	}
	
	public List<Cake> findByType(String str){
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.getCurrentSession();
			tran = session.beginTransaction();
			List<Cake> list = new ArrayList<Cake>();
			Query query = session.createQuery("from Type where type=?");
			query.setParameter(0, str);
			List<Type> list1 = query.list();
			for(int i = 0; i < list1.size(); i++) {
				list.add(findById(list1.get(i).getCakeId()));
			}
			return list;
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } 
		return null;
	}
	
	
	
	public List<Size> getAllSize(){
		Session session = null;
		Transaction tran = null;
		List<Size> list = new ArrayList<Size>();
		session = sessionFactory.getCurrentSession();
		tran = session.beginTransaction();
		
		Query query = session.createQuery("from Size");
		list = query.list();
		
		return list;
		
		
	}
	
	public List<Type> getAllType(){
		Session session = null;
		Transaction tran = null;
		List<Type> list = new ArrayList<Type>();
		session = sessionFactory.getCurrentSession();
		tran = session.beginTransaction();
		
		Query query = session.createQuery("from Type");
		list = query.list();
		
		return list;
	}
	
	
	public void deleteOne(int cakeId) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			session.delete(findById(cakeId));
			System.out.println("delete success");
			tran.commit();
			session.close();
			

		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } 
	}
	public void addOne(Cake cake,Size[] size,Type[] type) {
		Session session = null;
		Transaction tran = null;
		session = sessionFactory.openSession();
		tran = session.beginTransaction();
		
		for(int i = 0; i < type.length; i++) {
			cake.getSet1().add(type[i]);
		}
		
		session.save(cake);
		
		tran.commit();
		session.close();
	}
}
