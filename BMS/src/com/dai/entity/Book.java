package com.dai.entity;

import com.dai.entity.common.Entity;

public class Book extends Entity{
	private String name;
	private double price;
	private String type;
	private int num;
	public Book(Long id, String name, double price, String type,int num) {
		super.setId(id);
		this.name = name;
		this.price = price;
		this.type = type;
		this.num = num;
	}
	public Book() {
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "BookEnity [id=" + getId() + ", name=" + name + ", price=" + price + ", type=" + type + ", num=" + num + "]";
	}

}
