package com.itwillbs.chaca.db;

import java.sql.Date;

public class CarReservationDTO {
	private int rsvt_number;
	private Date rsvt_date;
	private String rsvt_place;
	private String rsvt_car_number;	
	private String rsvt_car_brand;
	private String rsvt_car_name;
	private String rsvt_id;
	private String rsvt_name;
	private int price;
	private int babyseat;
	private int childrenseat;
	private int wifi;
	private String navigation;
	private String image;
	private String useinfo;
	
	public int getRsvt_number() {
		return rsvt_number;
	}
	public void setRsvt_number(int rsvt_number) {
		this.rsvt_number = rsvt_number;
	}
	public Date getRsvt_date() {
		return rsvt_date;
	}
	public void setRsvt_date(Date rsvt_date) {
		this.rsvt_date = rsvt_date;
	}
	public String getRsvt_place() {
		return rsvt_place;
	}
	public void setRsvt_place(String rsvt_place) {
		this.rsvt_place = rsvt_place;
	}
	public String getRsvt_car_number() {
		return rsvt_car_number;
	}
	public void setRsvt_car_number(String rsvt_car_number) {
		this.rsvt_car_number = rsvt_car_number;
	}
	public String getRsvt_car_brand() {
		return rsvt_car_brand;
	}
	public void setRsvt_car_brand(String rsvt_car_brand) {
		this.rsvt_car_brand = rsvt_car_brand;
	}
	public String getRsvt_car_name() {
		return rsvt_car_name;
	}
	public void setRsvt_car_name(String rsvt_car_name) {
		this.rsvt_car_name = rsvt_car_name;
	}
	public String getRsvt_id() {
		return rsvt_id;
	}
	public void setRsvt_id(String rsvt_id) {
		this.rsvt_id = rsvt_id;
	}
	public String getRsvt_name() {
		return rsvt_name;
	}
	public void setRsvt_name(String rsvt_name) {
		this.rsvt_name = rsvt_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBabyseat() {
		return babyseat;
	}
	public void setBabyseat(int babyseat) {
		this.babyseat = babyseat;
	}
	public int getChildrenseat() {
		return childrenseat;
	}
	public void setChildrenseat(int childrenseat) {
		this.childrenseat = childrenseat;
	}
	public int getWifi() {
		return wifi;
	}
	public void setWifi(int wifi) {
		this.wifi = wifi;
	}
	public String getNavigation() {
		return navigation;
	}
	public void setNavigation(String navigation) {
		this.navigation = navigation;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUseinfo() {
		return useinfo;
	}
	public void setUseinfo(String useinfo) {
		this.useinfo = useinfo;
	}
	@Override
	public String toString() {
		return "CarReservationDTO [rsvt_number=" + rsvt_number + ", rsvt_date=" + rsvt_date + ", rsvt_place="
				+ rsvt_place + ", rsvt_car_number=" + rsvt_car_number + ", rsvt_car_brand=" + rsvt_car_brand
				+ ", rsvt_car_name=" + rsvt_car_name + ", rsvt_id=" + rsvt_id + ", rsvt_name=" + rsvt_name + ", price="
				+ price + ", babyseat=" + babyseat + ", childrenseat=" + childrenseat + ", wifi=" + wifi
				+ ", navigation=" + navigation + ", image=" + image + ", useinfo=" + useinfo + "]";
	}
	
	
}
