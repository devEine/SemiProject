package com.itwillbs.chaca.db;

import java.sql.Date;

public class CarDTO {
	private String car_number;
	private String car_brand;
	private String car_name;
	private int car_year;
	private String fuel;
	private int hp;
	private String turnover;
	private int seat;
	private String place;
	private String image;
	private int price;
	
	public String getCar_number() {
		return car_number;
	}
	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}
	public String getCar_brand() {
		return car_brand;
	}
	public void setCar_brand(String car_brand) {
		this.car_brand = car_brand;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getCar_year() {
		return car_year;
	}
	public void setCar_year(int car_year) {
		this.car_year = car_year;
	}
	public String getFuel() {
		return fuel;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	public int getHp() {
		return hp;
	}
	public void setHp(int hp) {
		this.hp = hp;
	}
	public String getTurnover() {
		return turnover;
	}
	public void setTurnover(String turnover) {
		this.turnover = turnover;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "CarDTO [car_number=" + car_number + ", car_brand=" + car_brand + ", car_name=" + car_name
				+ ", car_year=" + car_year + ", fuel=" + fuel + ", hp=" + hp + ", turnover=" + turnover + ", seat="
				+ seat + ", place=" + place + ", image=" + image + ", price=" + price + "]";
	}
	
	
}
