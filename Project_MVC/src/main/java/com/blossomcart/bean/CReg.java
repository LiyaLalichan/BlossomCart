package com.blossomcart.bean;

public class CReg {
	
	private String fname;
	private String lname;
	private String email;
	private String pword;
	private String pnum;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPword() {
		return pword;
	}
	public void setPword(String pword) {
		this.pword = pword;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	
	public CReg() {
		super();
	}
	public CReg(String fname,String lname,String email,String pword,String pnum) {
		super();
		this.fname=fname;
		this.lname=lname;
		this.email=email;
		this.pword=pword;
		this.pnum=pnum;
	}

}
