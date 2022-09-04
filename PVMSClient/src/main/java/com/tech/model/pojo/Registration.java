package com.tech.model.pojo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

public class Registration {
	private String id;
	@NotBlank(message="Required")
	private String fName;
	@NotBlank(message="Required")
    private String surName;
	@NotNull(message="Required")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private LocalDate dob;
	@NotBlank(message="Required")
    private String address;
	@NotBlank(message="Required")
    private String contactNo;
	@NotBlank(message="Required")
    private String email; 
	@NotBlank(message="Required")
    private String qualification; 
	@NotBlank(message="Required")
    private String gender;  
	@NotNull(message="Required")
    private Integer applyType; 
	@NotBlank(message="Required")
    private String hintQuestion; 
	@NotBlank(message="Required")
    private String hintAnswer;
	private String password;
    private String citizenType;
	public Registration(String id, String fName, String surName, LocalDate dob, String address, String contactNo,
			String email, String qualification, String gender, Integer applyType, String hintQuestion,
			String hintAnswer, String password, String citizenType) {
		super();
		this.id = id;
		this.fName = fName;
		this.surName = surName;
		this.dob = dob;
		this.address = address;
		this.contactNo = contactNo;
		this.email = email;
		this.qualification = qualification;
		this.gender = gender;
		this.applyType = applyType;
		this.hintQuestion = hintQuestion;
		this.hintAnswer = hintAnswer;
		this.password = password;
		this.citizenType = citizenType;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getSurName() {
		return surName;
	}
	public void setSurName(String surName) {
		this.surName = surName;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Integer getApplyType() {
		return applyType;
	}
	public void setApplyType(Integer applyType) {
		this.applyType = applyType;
	}
	public String getHintQuestion() {
		return hintQuestion;
	}
	public void setHintQuestion(String hintQuestion) {
		this.hintQuestion = hintQuestion;
	}
	public String getHintAnswer() {
		return hintAnswer;
	}
	public void setHintAnswer(String hintAnswer) {
		this.hintAnswer = hintAnswer;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCitizenType() {
		return citizenType;
	}
	public void setCitizenType(String citizenType) {
		this.citizenType = citizenType;
	}
	public Registration() {
		super();
	}
	@Override
	public String toString() {
		return "Registration [id=" + id + ", fName=" + fName + ", surName=" + surName + ", dob=" + dob + ", address="
				+ address + ", contactNo=" + contactNo + ", email=" + email + ", qualification=" + qualification
				+ ", gender=" + gender + ", applyType=" + applyType + ", hintQuestion=" + hintQuestion + ", hintAnswer="
				+ hintAnswer + ", password=" + password + ", citizenType=" + citizenType + "]";
	}
	
	
    
}
