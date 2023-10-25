package com.patient;

public class patient {
	
	private int id;
	private String name;
	private String phone;
	private String email;
	private String userName;
	private String pwd;
	
	
	public patient(int id, String name, String phone, String email, String uname, String pw) {
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		userName = uname;
		pwd = pw;
	}


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String getuserName() {
		return userName;
	}


	public String getPwd() {
		return pwd;
	}

}
