package com.chenlaoda.cake.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="cake")
public class Cake {

	private int cakeId;
	private String cakeName;
	private String color;
	private String taste;
	private double discount;
	private Date date;
	private String discription;
	private String img;
	private String img1;
	private String img2;
	private String img3;
	private Set<Type> set1 = new HashSet<Type>();
	private Set<Size> set2 = new HashSet<Size>();
	
	@Id()
	@GeneratedValue(strategy = GenerationType.IDENTITY)  
	public int getCakeId() {
		return cakeId;
	}

	public void setCakeId(int cakeId) {
		this.cakeId = cakeId;
	}
	@Column(name="cakeName")
	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTaste() {
		return taste;
	}
	public void setTaste(String taste) {
		this.taste = taste;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}


	@OneToMany
	@Cascade(value={CascadeType.ALL})
	@JoinColumn(name="cakeId")
	public Set<Type> getSet1() {
		return set1;
	}

	public void setSet1(Set<Type> set1) {
		this.set1 = set1;
	}

	@OneToMany
	@Cascade(value={CascadeType.ALL})
	@JoinColumn(name="cakeId")
	public Set<Size> getSet2() {
		return set2;
	}

	public void setSet2(Set<Size> set2) {
		this.set2 = set2;
	}
	
}
