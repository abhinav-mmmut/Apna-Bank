package com.abhinav.bbs;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private float acnt_bal;

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

	public float getAcnt_bal() {
		return acnt_bal;
	}

	public void setAcnt_bal(float acnt_bal) {
		this.acnt_bal = acnt_bal;
	}

	public Customer() {
	}

	public Customer(int id, String name, String email, float acnt_bal) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.acnt_bal = acnt_bal;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", acnt_bal=" + acnt_bal + "]";
	}

}
