package com.tech.model.pojo;

import javax.validation.constraints.NotBlank;

public class Login {
	@NotBlank(message = "Required")
	private String id;
	@NotBlank(message = "Required")
	private String pwd;
	@NotBlank(message="required")
	private String Contact;
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Login(String id, String pwd,String Contact) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.Contact=Contact;
	}
	public Login() {
		super();
	}
	
}
