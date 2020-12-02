package org.test.project1.domain;

import java.util.Date;

public class CustomerVo {
	
	private int cusSeq;
	private String name;
	private String phone;
	private String email;
	private String cusId;
	private String password;
	private Date joinDate;
	
	public CustomerVo() {}
	
	public CustomerVo(String cudId) {
		super();
		this.cusId=cusId;
	}

	public int getCusSeq() {
		return cusSeq;
	}

	public void setCusSeq(int cusSeq) {
		this.cusSeq = cusSeq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCusId() {
		return cusId;
	}

	public void setCusId(String cusId) {
		this.cusId = cusId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	

}
