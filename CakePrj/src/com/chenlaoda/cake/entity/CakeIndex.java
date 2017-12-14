package com.chenlaoda.cake.entity;

public class CakeIndex {

	private int CakeId;
	private String cakeName;
	private double price;
	private double discount;
	private String img;
	public int getCakeId() {
		return CakeId;
	}
	public void setCakeId(int cakeId) {
		CakeId = cakeId;
	}
	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
}
