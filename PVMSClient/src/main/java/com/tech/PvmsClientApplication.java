package com.tech;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import com.tech.model.dao.PassportService;
import com.tech.model.dao.RegistrationService;

@SpringBootApplication
public class PvmsClientApplication {

	public static void main(String[] args) {
		SpringApplication.run(PvmsClientApplication.class, args);
	}
	
	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
	
	@Bean
	public RegistrationService registrationService() {
		return new RegistrationService();
	}
	
	@Bean
	public PassportService passportService() {
		return new PassportService();
	}

}
