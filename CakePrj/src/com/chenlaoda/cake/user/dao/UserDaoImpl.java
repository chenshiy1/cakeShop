package com.chenlaoda.cake.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.chenlaoda.cake.entity.User;


@Repository
public class UserDaoImpl implements UserDao{

	@Resource
	private JdbcTemplate jdbcTemplate;
	@Resource
	private SessionFactory sessionFactory;
	
	public void regist(User user) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			session.save(user);
			tran.commit();
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } finally {
	        if (null != session) {
	            session.close();
	        }
	    }
	}
	
	public boolean findUser(User user) {
		Session session = null;
		Transaction tran = null;
		try {
			session = sessionFactory.openSession();
			tran = session.beginTransaction();
			Query query = session.createQuery("from User where email=? and password=?");
			query.setParameter(0, user.getEmail());
			query.setParameter(1, user.getPassword());
			List<User> list = query.list();
			if(list.size() == 0) {
				
				return false;
			}
			user.setUserId(list.get(0).getUserId());
			System.out.println(user.getUserId());
			return true;
		} catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	    } finally {
	        if (null != session) {
	            session.close();
	        }
	    }
		return false;
		
	}
	
	
	
	
	
}
