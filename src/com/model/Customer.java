package com.model;

import java.time.LocalDate;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String password;
	private String addresh;
	private String mobile;
	private String doj;
	private LocalDate validfrom;
	private LocalDate validto;
	private String gender;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddresh() {
		return addresh;
	}
	public void setAddresh(String addresh) {
		this.addresh = addresh;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public LocalDate getValidfrom() {
		return validfrom;
	}
	public void setValidfrom(LocalDate validfrom) {
		this.validfrom = validfrom;
	}
	public LocalDate getValidto() {
		return validto;
	}
	public void setValidto(LocalDate validto) {
		this.validto = validto;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
