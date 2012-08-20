package net.flexonjava.examples.mycrm.domain;

public class Purchase extends Entity{
	
	private long timestamp;
	private long ammount;
	private String notes;
	
	public long getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}
	public long getAmmount() {
		return ammount;
	}
	public void setAmmount(long ammount) {
		this.ammount = ammount;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
}
