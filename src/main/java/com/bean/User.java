package com.bean;

public class User {
	private int id;
	private String name;
	private String email;
	private String mobile;
	private String password;
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}
