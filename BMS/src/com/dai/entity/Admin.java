package com.dai.entity;

import java.util.Date;

import com.dai.entity.common.Entity;

public class Admin extends Entity{
	private String adminname;
	private String password;
	public Admin(Long id,String amdinname, String password, String adminname) {
		super.setId(id);;
		this.adminname = adminname;
		this.password = password;
		
	}
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "AdminEntity [id="+ getId()+",adminname=" + adminname + ", password=" + password + "]";
	}
	
	

}
