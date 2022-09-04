package com.tech.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tech.model.dao.PassportService;
import com.tech.model.dao.RegistrationService;
import com.tech.model.pojo.ApplyPassport;
import com.tech.model.pojo.ApplyVisa;

@Controller
@SessionAttributes({"userid","username","user","passport","visa"})
public class PassportController {

	@Autowired
	PassportService passportService;
	
	@Autowired
	RegistrationService registrationService;
	
//	@RequestMapping("/applyPassport")
//	public String insertPassport(Model M) {
//		
//		return "passport";
//	}
	
	@RequestMapping("/afterlogin")
	public String insertpassport(@SessionAttribute("userid") String id,Model M){
		M.addAttribute("passport",passportService.getPassport(id));
		return "hom2";
	}
	
	@RequestMapping("/getcities")
	public String getCities(@RequestParam("state") String state,@RequestParam("registration") String registration,@RequestParam("country") String country,@ModelAttribute("a") ApplyPassport a,Model M) {
		a.setRegistrationIdt(registration);
		a.setCountry(country);
		a.setStateId(passportService.getStateById(state));
		M.addAttribute("a",a);
		
		M.addAttribute("c",passportService.getCities(state));
		M.addAttribute("s",passportService.getAllStates());
		return "ApplyPassport";
	}	
	
	@RequestMapping("/applypassport")
	public String applypassport(Model M){
		M.addAttribute("a",new ApplyPassport());
		
		M.addAttribute("s",passportService.getAllStates());
		return "ApplyPassport";
	}
	
	@RequestMapping("/appliedpassport")
	public String appliedpassport(@Valid @ModelAttribute("a") ApplyPassport a,BindingResult bs,Model M){
		if(bs.hasErrors()) {
			return "ApplyPassport";
		}
		System.out.println(a);
		M.addAttribute("msg",passportService.insertPassport(a));
		M.addAttribute("a",new ApplyPassport());
		M.addAttribute("s",passportService.getAllStates());
		return "ApplyPassport";
	}
	
	//APPLY VISA
	
	@RequestMapping("/applyvisa")
	public String applyvisa(Model M){
		M.addAttribute("m",new ApplyVisa());
		return "applyvisa";
	}
	
	@RequestMapping("/appliedvisa")
	public String appliedvisa(@Valid @ModelAttribute("m") ApplyVisa a,BindingResult bs,Model M){
		if(bs.hasErrors()) {
			return "applyvisa";
		}
		System.out.println(a);
		
		M.addAttribute("msg",passportService.insertVisa(a));
		M.addAttribute("m",new ApplyVisa());
		return "applyvisa";
	}
	
	
	//RE-ISSUE PASSPORT
	@RequestMapping("/issuepassport")
	public String issuepassport(Model M){
		M.addAttribute("s",passportService.getAllStates());
		M.addAttribute("a",new ApplyPassport());
		return "reissue";
	}
	
	@RequestMapping("/issuedpassport")
	public String issuedpassport(@Valid @ModelAttribute("a") ApplyPassport a,BindingResult bs,Model M){
		if(bs.hasErrors()) {
			return "reissue";
		}
		M.addAttribute("msg",passportService.reinsertPassport(a));
		M.addAttribute("s",passportService.getAllStates());
		M.addAttribute("a",new ApplyPassport());
		return "reissue";
	}
	
	@RequestMapping("/getcities1")
	public String getCities1(@RequestParam("state") String state,@RequestParam("registration") String registration,@RequestParam("country") String country,@ModelAttribute("a") ApplyPassport a,Model M) {
		a.setRegistrationIdt(registration);
		a.setCountry(country);
		a.setStateId(passportService.getStateById(state));
		M.addAttribute("a",a);
		
		M.addAttribute("c",passportService.getCities(state));
		M.addAttribute("s",passportService.getAllStates());
		return "reissue";
	}
	
	
	
	//Visa CAncel
	@RequestMapping("/cancelvisa")
	public String cancelvisa(Model M){
		M.addAttribute("x",new ApplyVisa());
		return "VisaCancel";
	}
	
	@RequestMapping("/cancelledvisa")
	public String cancelledvisa(@Valid @ModelAttribute("x") ApplyVisa a,BindingResult bs,Model M){
		if(bs.hasErrors()) {
			return "VisaCancel";
		}
		System.out.println(a);
		M.addAttribute("msg",passportService.cancelVisa(a));
		M.addAttribute("x",new ApplyVisa());
		return "VisaCancel";
	}
	
	//Get Details
	@RequestMapping("/getPassport")
	public String getPassport(@SessionAttribute("userid") String id,Model M){
		M.addAttribute("passport",passportService.getPassport(id));
		return "profile";
	}
	@RequestMapping("/getVisa")
	public String getVisa(Model M){
		return "profile";
	}
}
