package com.datapackage.model;

import java.sql.Date;
import java.sql.Time;

public class Booking {
    private int id;
    private String customerName;
    private String address;
    private String phone;
    private String destination;
    private Date date;
    private Time time;
    private String vehicleType;
    private double price;

    public Booking(int id, String customerName, String address, String phone, String destination, Date date, Time time, String vehicleType, double price) {
        this.id = id;
        this.customerName = customerName;
        this.address = address;
        this.phone = phone;
        this.destination = destination;
        this.date = date;
        this.time = time;
        this.vehicleType = vehicleType;
        this.price = price;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

    
}
