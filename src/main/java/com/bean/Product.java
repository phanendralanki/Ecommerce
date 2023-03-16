package com.bean;

public class Product {
	private int id;
	private String name;
	private String category;
	private String price;
	private String image;
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	
	public String getCategory() {
		return category;
	}
	
	public String getPrice() {
		return price;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
}
