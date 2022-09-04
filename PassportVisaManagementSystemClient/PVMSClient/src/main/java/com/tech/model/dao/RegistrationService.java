package com.tech.model.dao;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.client.RestTemplate;

import com.tech.model.pojo.Login;
import com.tech.model.pojo.Registration;

public class RegistrationService {

	@Autowired
	RestTemplate restTemplate;
	
	public String url = "http://localhost:9000/user/";
	
	public Registration getUserById(String id) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",id);
		Registration user = restTemplate.getForObject(url+"getUserById/{id}", Registration.class,params);
		return user;
	}
	
	public List<Registration> getUsers(){
		Registration users[] = restTemplate.getForObject(url+"getUsers", Registration[].class);
		return Arrays.asList(users);
	}
	
	public String validateUser(Login l) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",l.getId());
		params.put("pwd",l.getPwd());
		String user = restTemplate.getForObject(url+"validateUser/{id}/{pwd}", String.class,params);
		
		return user;
	}
	
	public String fetchcontact(String id) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",id);
		String contact = restTemplate.getForObject(url+"getContactById/{id}", String.class,params);
		return contact;
	}
	
	public String fetchHintQuestion(String id) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",id);
		String HQ = restTemplate.getForObject(url+"getHQuestion/{id}", String.class,params);
		return HQ;
	}
	
	public String fetchHAnswer(String id,String ans) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("id",id);
		params.put("hintAnswer", ans);
		String HA = restTemplate.getForObject(url+"validateHAnswer/{id}/{hintAnswer}", String.class,params);
		return HA;
	}
	
	public String validateMail(String mail) {
		Map<String,String> params = new HashMap<String, String>();
		params.put("mail",mail);
		String user = restTemplate.getForObject(url+"validatemail/{mail}", String.class,params);
		return user;
	}
	
	public String insertUser(Registration R) {
		return restTemplate.postForObject(url+"insertUser",R, String.class);
	}
	
}
