package net.flexonjava.examples.mycrm.domain;

public class Product extends Entity{
	
	private String name;
	private long price;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	
	
}
