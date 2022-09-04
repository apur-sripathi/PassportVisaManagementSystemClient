package com.tech.model.pojo;

public class State {
	private String stateId;
	private String stateName;
	public String getStateId() {
		return stateId;
	}
	public void setStateId(String stateId) {
		this.stateId = stateId;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public State(String stateId, String stateName) {
		super();
		this.stateId = stateId;
		this.stateName = stateName;
	}
	public State() {
		super();
	}
	
}
