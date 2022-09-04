package com.tech.controllers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.tech.model.dao.PassportService;
import com.tech.model.dao.RegistrationService;
import com.tech.model.pojo.Login;
import com.tech.model.pojo.Registration;

@Controller
@SessionAttributes({"userid","username","user","passport","visa"})
public class RegistrationController {

	static String a[]= new String[] { "What is your favorite colour?", "What is your lucky number?", "Who is your favorite cricketer?", "others" };
	
	@Autowired
	RegistrationService registrationService;
	
	@Autowired
	PassportService passportService;
	
	@RequestMapping("/")
	public String getAllBooks(Model M) {
		//M.addAttribute("userList",registrationService.getUsers());
		return "home";
	}
	
	@RequestMapping("/logged")
	public String loginUser(@Valid @ModelAttribute("l") Login l,BindingResult bs,Model M) {
		if(bs.hasErrors()) {
			return "index";
		}
		String user = registrationService.validateUser(l);
		if(user.contains("Valid User")) {
			Registration R=registrationService.getUsers().stream().filter(x->x.getId().equals(l.getId())).collect(Collectors.toList()).get(0);
			M.addAttribute("username",R.getfName());
			M.addAttribute("userid",l.getId());
			M.addAttribute("user",registrationService.getUserById(l.getId()));
			M.addAttribute("passport",passportService.getPassport(l.getId()));
			M.addAttribute("visa",passportService.getVisa(l.getId()));
			//System.out.println(passportService.getPassport(l.getId()));
			return "hom2";
		}
		M.addAttribute("msg",user);
		return "index";
	}
	
	@RequestMapping("/login")
	public String loginUser(Model M) {
		M.addAttribute("l",new Login());
		return "index";
	}
	
	@RequestMapping("/fetchcontact")
	public String fetchcontact(@RequestParam("id") String id,@ModelAttribute("l") Login l,Model M) {
		M.addAttribute("c",registrationService.fetchcontact(id));
		M.addAttribute("i",id);
		M.addAttribute("l",l);
		return "index";
	}
	
	@RequestMapping("/register")
	public String registerUser(Model M) {
		M.addAttribute("r",new Registration());
		return "signup";
	}
	
	@RequestMapping("/registering")
	public String registeringUser(@Valid @ModelAttribute("r") Registration r,BindingResult bs,Model M) {
		if(bs.hasErrors()) {
			return "signup";
		}
		M.addAttribute("msg",registrationService.insertUser(r));
		M.addAttribute("r",new Registration());
		return "signup";
	}
	
	@RequestMapping("/validateEmail")
	public String validateEmail(@RequestParam("email") String mail,@RequestParam("fName") String fName,@RequestParam("sName") String sName,@ModelAttribute("r") Registration r,Model M) {
		M.addAttribute("x",registrationService.validateMail(mail));
		r.setfName(fName);
		r.setSurName(sName);
		M.addAttribute("r",r);
		return "signup";
	}

	@RequestMapping("/forgot")
	public String forgot(Model M){
		List<String> m = Arrays.asList(a);
		M.addAttribute("l",a);
		return "forgot";
	}
	@RequestMapping("/fetchValid")
	public String fetchValid(@RequestParam("id") String id,Model M){
		List<String> m = Arrays.asList(a);
		M.addAttribute("id",id);
		M.addAttribute("l",a);
		M.addAttribute("HQ",registrationService.fetchHintQuestion(id));
		return "forgot";
	}
	
	@RequestMapping("/profile")
	public String forgot(){
		
		return "profile";
	}
	@RequestMapping("/about")
	public String about(){
		
		return "about";
	}
	@RequestMapping("/contact")
	public String contact(){
		
		return "contact";
	}
	@RequestMapping("/loginmain")
	public String loginmain(){
		
		return "login";
	}
	@RequestMapping("/validForgot")
	public String validforgot(@RequestParam("id") String id,@RequestParam("hq") String hq,@RequestParam("ha") String ha,Model M){
		List<String> m = Arrays.asList(a);
		M.addAttribute("l",a);
		System.out.println(id+" "+hq+" "+ha);
		M.addAttribute("msg",registrationService.fetchHAnswer(id, ha));
		return "forgot";
	}
	

	@RequestMapping("/explore")
	public String explore()
	{
		return "explore";
	}
	
	@RequestMapping("/logout")
	public String logout(Model M,SessionStatus session){
		session.setComplete();
		M.addAttribute("l",new Login());
		return "index";
	}

}
