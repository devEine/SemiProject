package com.itwillbs.chaca.db;

import java.sql.Date;

public class UserDTO {
	private String id_email;		// 아이디(이메일)
	private String password;		// 비밀번호
	private String name;			// 이름
	private Date birth;				// 생년월일
	private String phone;			// 전화번호
	private String address;			// 주소
	private String license_type;    // 운전면허 종류
	private String license_number;  // 운전면허 번호
	private int point;				// 포인트
	
	public String getId_email() {
		return id_email;
	}
	public void setId_email(String id_email) {
		this.id_email = id_email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLicense_type() {
		return license_type;
	}
	public void setLicense_type(String license_type) {
		this.license_type = license_type;
	}
	public String getLicense_number() {
		return license_number;
	}
	public void setLicense_number(String license_number) {
		this.license_number = license_number;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	@Override
	public String toString() {
		return "userDTO [id_email=" + id_email + ", password=" + password + ", name=" + name + ", birth=" + birth
				+ ", phone=" + phone + ", address=" + address + ", license_type=" + license_type + ", license_number="
				+ license_number + ", point=" + point + "]";
	}
	
}
