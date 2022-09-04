package com.tech.model.pojo;

public class City {
	private String cityId;
	private String cityName;
	private State stateId;
	public String getCityId() {
		return cityId;
	}
	public void setCityId(String cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public State getStateId() {
		return stateId;
	}
	public void setStateId(State stateId) {
		this.stateId = stateId;
	}
	public City(String cityId, String cityName, State stateId) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.stateId = stateId;
	}
	public City() {
		super();
	}
	
}
