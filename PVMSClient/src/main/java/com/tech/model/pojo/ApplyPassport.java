package com.tech.model.pojo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

public class ApplyPassport {
	private String passId;
	private Registration registrationId;
	@NotBlank(message="Required")
	private String country;
	private State stateId;
	private City cityId;
	//@Pattern(regexp = "[0-9]{6}",message = "Exactly 6 digits")
	@NotNull(message = "Required")
	private Integer pin;
	@NotNull(message = "Required")
	private int typeOfService;
	@NotNull(message = "Required")
	private int bookletType;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate issueDate;
	private LocalDate expiryDate;
	@NotBlank(message="Required")
	private String registrationIdt;
	@NotBlank(message="Required")
	private String stateIdt;
	@NotBlank(message="Required")
	private String cityIdt;
	private Integer reason;
	public Integer getReason() {
		return reason;
	}
	public void setReason(Integer reason) {
		this.reason = reason;
	}
	public String getPassId() {
		return passId;
	}
	public void setPassId(String passId) {
		this.passId = passId;
	}
	public Registration getRegistrationId() {
		return registrationId;
	}
	public void setRegistrationId(Registration registrationId) {
		this.registrationId = registrationId;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public State getStateId() {
		return stateId;
	}
	public void setStateId(State stateId) {
		this.stateId = stateId;
	}
	public City getCityId() {
		return cityId;
	}
	public void setCityId(City cityId) {
		this.cityId = cityId;
	}
	public Integer getPin() {
		return pin;
	}
	public void setPin(Integer pin) {
		this.pin = pin;
	}
	public int getTypeOfService() {
		return typeOfService;
	}
	public void setTypeOfService(int typeOfService) {
		this.typeOfService = typeOfService;
	}
	public int getBookletType() {
		return bookletType;
	}
	public void setBookletType(int bookletType) {
		this.bookletType = bookletType;
	}
	public LocalDate getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(LocalDate issueDate) {
		this.issueDate = issueDate;
	}
	public LocalDate getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(LocalDate expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getRegistrationIdt() {
		return registrationIdt;
	}
	public void setRegistrationIdt(String registrationIdt) {
		this.registrationIdt = registrationIdt;
	}
	public String getStateIdt() {
		return stateIdt;
	}
	public void setStateIdt(String stateIdt) {
		this.stateIdt = stateIdt;
	}
	public String getCityIdt() {
		return cityIdt;
	}
	public void setCityIdt(String cityIdt) {
		this.cityIdt = cityIdt;
	}
	public ApplyPassport(String passId, Registration registrationId, String country, State stateId, City cityId,
			Integer pin, int typeOfService, int bookletType, LocalDate issueDate, LocalDate expiryDate,
			String registrationIdt, String stateIdt, String cityIdt,Integer reason) {
		super();
		this.passId = passId;
		this.registrationId = registrationId;
		this.country = country;
		this.stateId = stateId;
		this.cityId = cityId;
		this.pin = pin;
		this.typeOfService = typeOfService;
		this.bookletType = bookletType;
		this.issueDate = issueDate;
		this.expiryDate = expiryDate;
		this.registrationIdt = registrationIdt;
		this.stateIdt = stateIdt;
		this.cityIdt = cityIdt;
		this.reason= reason;
	}
	public ApplyPassport() {
		super();
	}
	@Override
	public String toString() {
		return "ApplyPassport [passId=" + passId + ", registrationId=" + registrationId + ", country=" + country
				+ ", stateId=" + stateId + ", cityId=" + cityId + ", pin=" + pin + ", typeOfService=" + typeOfService
				+ ", bookletType=" + bookletType + ", issueDate=" + issueDate + ", expiryDate=" + expiryDate
				+ ", registrationIdt=" + registrationIdt + ", stateIdt=" + stateIdt + ", cityIdt=" + cityIdt
				+ ", reason=" + reason + "]";
	}
	
}
