package edu.mum.rentalHouse.model;

import java.util.List;

public class User {

	private String email;
	
	private String name;
	
	private String password;
	
	private List<Role> roles;
	
	public User() {
	}
	public User(String email, String name, String password) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
	}

	public User(String email, String name, String password, List<Role> roles) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.roles = roles;
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
	
	public List<Role> getRoles() {
		return roles;
	}
	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}




}
