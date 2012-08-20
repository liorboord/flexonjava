package net.flexonjava.examples.mycrm.domain;

public class Customer extends Entity{
	private String name;
	private String lastname;
	private String phoneNmuber;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPhoneNmuber() {
		return phoneNmuber;
	}
	public void setPhoneNmuber(String phoneNmuber) {
		this.phoneNmuber = phoneNmuber;
	}
}
