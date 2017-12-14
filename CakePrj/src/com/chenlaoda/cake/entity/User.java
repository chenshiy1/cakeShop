package com.chenlaoda.cake.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;



import javax.persistence.CascadeType;



@Entity
@Table(name="user")
public class User {

	private int userId;
	private String userName;
	private String password;
	private String email;
	private Set<Log> logSet = new HashSet<Log>();
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	@OneToMany(targetEntity=Log.class, 
            cascade=CascadeType.REMOVE)
	 @JoinColumn(name="userId")
	 public Set<Log> getLogSet() {
	        return logSet;
	 }

	 public void setLogSet(Set<Log> logSet) {
	        this.logSet = logSet;
	 }
	
   
	
	
	
}
