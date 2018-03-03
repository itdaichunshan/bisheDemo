package com.dai.entity;

import com.dai.entity.common.Entity;

public class Reader extends Entity{

	private String readername;
	private String password;
	private String readertype;
	public Reader(Long id, String readername,String password, String readertype) {
	    super.setId(id);
		this.readername = readername;
		this.password = password;
		this.readertype = readertype;
		
	}
	
	public  Reader() {
	}
	
	
	public String getReadername() {
		return readername;
	}
	public void setUsername(String readername) {
		this.readername = readername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReadertype() {
		return readertype;
	}
	public void setReadertype(String readertype) {
		this.readertype = readertype;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "ReaderEntity [id=" + getId() + ",readername=" +readername + ", password=" + password + ",readertype=" + readertype + " ]";
	}
}
