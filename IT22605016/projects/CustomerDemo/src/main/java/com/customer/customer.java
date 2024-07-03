package com.customer;

public class customer {

	private String tourType;
	private String name;
	private String email;
	private String phone;
	private String date1;
	private String date2;
	private int adults;
	private int children;
	private String roomType;
	
	
	public customer(String tourType, String name, String email, String phone, String date1, String date2, int adults,
			int children, String roomType) {
		
		this.tourType = tourType;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.date1 = date1;
		this.date2 = date2;
		this.adults = adults;
		this.children = children;
		this.roomType = roomType;
	}


	public String getTourType() {
		return tourType;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}


	public String getDate1() {
		return date1;
	}


	public String getDate2() {
		return date2;
	}


	public int getAdults() {
		return adults;
	}

	public int getChildren() {
		return children;
	}


	public String getRoomType() {
		return roomType;
	}


	
	
	
	
	
	
	
	
	
	
}
