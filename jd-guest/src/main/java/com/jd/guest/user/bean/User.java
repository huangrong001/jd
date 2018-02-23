package com.jd.guest.user.bean;

public class User {
	private Integer id;
	private String userName;
	private String password;
	private String name;
	private String telphone;
	private String email;
	private String sex;
	public User() {
	    
	}

	public User(Integer id, String userName, String password, String name,
			String telphone, String email) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.telphone = telphone;
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password="
				+ password + ", name=" + name + ", telphone=" + telphone
				+ ", email=" + email + "]";
	}
	
	
	
	
	
}
