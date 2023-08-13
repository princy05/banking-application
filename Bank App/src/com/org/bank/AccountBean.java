package com.org.bank;

import java.util.Date;

public class AccountBean {

	private String name;
	private String password;
	private double balance;
	private Date creationDate;
	
	public AccountBean() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	@Override
	public String toString() {
		return "AccountBean [name=" + name + ", password=" + password + ", balance=" + balance + ", creationDate="
				+ creationDate + "]";
	}
	
	
	
}
