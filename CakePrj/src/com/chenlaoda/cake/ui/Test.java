package com.chenlaoda.cake.ui;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.chenlaoda.cake.entity.Cake;
import com.chenlaoda.cake.entity.Comment;
import com.chenlaoda.cake.entity.Log;
import com.chenlaoda.cake.entity.User;
import com.chenlaoda.cake.util.HibernateUtil;


public class Test {

	private static Session session = null;
	private static Transaction tran = null;
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		delete(6);
		
	}
	public static void save() {
	    session = HibernateUtil.openSession();
        tran = session.beginTransaction(); 
        User user = new User();
        user.setEmail("jdkjk");
		user.setPassword("df");
		user.setUserName("chenhsiyi");
		Log log = new Log();
		log.setDate(new Date());
		user.getLogSet().add(log);
		session.save(user);
		tran.commit();
		session.close();
	}
	public static void find(int i) {
		session = HibernateUtil.openSession();
        tran = session.beginTransaction();    
        User user = session.get(User.class, 2);
        System.out.print(user.getEmail());
        tran.commit();
        session.close();
	}
	public static void delete(int i) {
		session = HibernateUtil.openSession();
		tran = session.beginTransaction();
		User user = session.get(User.class, i);
		session.delete(user);
		tran.commit();
		session.close();
	}

}
