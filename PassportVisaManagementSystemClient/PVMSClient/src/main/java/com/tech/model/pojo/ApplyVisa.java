package com.tech.model.pojo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

public class ApplyVisa {
	private String visaId;
	private Registration registrationId;
	//@NotNull(message = "Required")
	private Integer country;
	//@NotNull(message = "Required")
	private Integer occupation;
	@NotNull(message = "Required")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dateOfApplication;
	private ApplyPassport passId;
	private LocalDate dateOfExpiry;
	public LocalDate getDateOfExpiry() {
		return dateOfExpiry;
	}
	public void setDateOfExpiry(LocalDate dateOfExpiry) {
		this.dateOfExpiry = dateOfExpiry;
	}
	@NotBlank(message = "Required")
	private String regId;
	@NotBlank(message = "Required")
	private String passid;
	private String status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getVisaId() {
		return visaId;
	}
	public void setVisaId(String visaId) {
		this.visaId = visaId;
	}
	public Registration getRegistrationId() {
		return registrationId;
	}
	public void setRegistrationId(Registration registrationId) {
		this.registrationId = registrationId;
	}
	public Integer getCountry() {
		return country;
	}
	public void setCountry(Integer country) {
		this.country = country;
	}
	public Integer getOccupation() {
		return occupation;
	}
	public void setOccupation(Integer occupation) {
		this.occupation = occupation;
	}
	public LocalDate getDateOfApplication() {
		return dateOfApplication;
	}
	public void setDateOfApplication(LocalDate dateOfApplication) {
		this.dateOfApplication = dateOfApplication;
	}
	public ApplyPassport getPassId() {
		return passId;
	}
	public void setPassId(ApplyPassport passId) {
		this.passId = passId;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public String getPassid() {
		return passid;
	}
	public void setPassid(String passid) {
		this.passid = passid;
	}
	public ApplyVisa(String visaId, Registration registrationId, Integer country, Integer occupation,LocalDate dateOfExpiry,
			LocalDate dateOfApplication, ApplyPassport passId, String regId, String passid2,String status) {
		super();
		this.visaId = visaId;
		this.registrationId = registrationId;
		this.country = country;
		this.occupation = occupation;
		this.dateOfApplication = dateOfApplication;
		this.passId = passId;
		this.regId = regId;
		passid = passid2;
		this.status= status;
		this.dateOfExpiry=dateOfExpiry;
	}
	public ApplyVisa() {
		super();
	}
	@Override
	public String toString() {
		return "ApplyVisa [visaId=" + visaId + ", registrationId=" + registrationId + ", country=" + country
				+ ", occupation=" + occupation + ", dateOfApplication=" + dateOfApplication + ", passId=" + passId
				+ ", regId=" + regId + ", passid=" + passid + "]";
	}
	
	
}
