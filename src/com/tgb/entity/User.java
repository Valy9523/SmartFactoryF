package com.tgb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="USER")
public class User {

	@Id
	@GeneratedValue(generator="system-increment")
	@GenericGenerator(name ="system-increment",strategy="increment")
	@Column(name="userId")
	private int id;
	
	private String userName;
	
	private String password;
	
	private String email;

	private String companyName;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public User() {
		super();
	}

	public User(String userName, String password, String email, String companyName) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.companyName = companyName;
	}

	

	

	
	
}
