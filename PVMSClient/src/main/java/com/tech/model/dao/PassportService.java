package com.tech.model.dao;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.client.RestTemplate;

import com.tech.model.pojo.ApplyPassport;
import com.tech.model.pojo.ApplyVisa;
import com.tech.model.pojo.City;
import com.tech.model.pojo.Registration;
import com.tech.model.pojo.State;

public class PassportService {

	@Autowired
	RestTemplate restTemplate;
	
	public String url = "http://localhost:9000/city/";
	
	public String url1 = "http://localhost:9000/passport/";
	
	public String url2 = "http://localhost:9000/visa/";
	
	public List<City> getCities(String stateId){
		Map<String,String> params = new HashMap<String, String>();
		params.put("stateId",stateId);
		City cities[] = restTemplate.getForObject(url+"getCityByState/{stateId}", City[].class,params);
		return Arrays.asList(cities);
	}
	
	public List<State> getAllStates(){
		State states[] = restTemplate.getForObject(url+"getAllState", State[].class);
		return Arrays.asList(states);
	}
	
	public State getStateById(String stateId) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",stateId);
		State state = restTemplate.getForObject(url+"getStateById/{id}", State.class,params);
		return state;
	}
	
	public String insertPassport(ApplyPassport a) {
		return restTemplate.postForObject(url1+"insertPassport",a, String.class);
	}
	
	public ApplyPassport getPassport(String id) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",id);
		return restTemplate.getForObject(url1+"getrecentpassport/{id}",ApplyPassport.class,params);
	}
	
	public List<ApplyVisa> getVisa(String id) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",id);
		ApplyVisa[] a = restTemplate.getForObject(url2+"getVisaByRegId/{id}",ApplyVisa[].class,params);
		return Arrays.asList(a);
	}
	

	public String reinsertPassport(ApplyPassport a) {
		return restTemplate.postForObject(url1+"reIssuePassport",a, String.class);
	}
	
	public String insertVisa(ApplyVisa visa) {
		return restTemplate.postForObject(url2+"insertVisa",visa, String.class);
	}
	
	public String cancelVisa(ApplyVisa visa) {
		return restTemplate.postForObject(url2+"cancelVisa",visa, String.class);
	}
}
