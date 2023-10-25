package com.doctor;

public class doctor {
	private int id;
	private String name;
	private String speciality;
	private String phone;
	private String hospital;
	
	public doctor(int id, String name, String speciality, String phone, String hospital) {
		
		this.id = id;
		this.name = name;
		this.speciality = speciality;
		this.phone = phone;
		this.hospital = hospital;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getSpeciality() {
		return speciality;
	}

	public String getPhone() {
		return phone;
	}

	public String getHospital() {
		return hospital;
	}

}
