package com.datapackage.model;

public class Vehicle {
    private int id;
    private String type;
    private double price;
    private String image;
    private String numberPlate;

    // Constructor
    public Vehicle(int id, String type, double price, String image, String numberPlate) {
        this.id = id;
        this.type = type;
        this.price = price;
        this.image = image;
        this.numberPlate = numberPlate;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNumberPlate() {
        return numberPlate;
    }

    public void setNumberPlate(String numberPlate) {
        this.numberPlate = numberPlate;
    }
}
