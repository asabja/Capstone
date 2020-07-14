package com.claim.capstone.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.claim.capstone.model.Users;
import com.claim.capstone.service.UserServiceImpl;
import com.claim.capstone.utils.WebUtils;

@Controller
public class AppController {
	
	@Autowired
	private UserServiceImpl userService; 
	
	@Autowired
	private WebUtils webUtils; 
	
	@GetMapping("/")
	public String index(Model model){
		model.addAttribute("message", "Hello there");
		model.addAttribute("all", userService.findAll());
		return "index";
		
	} 
		
	@GetMapping("thankyou")
	public String updateUser(Model model) {
		model.addAttribute("msg", "Thank you for your order");
		return "thankyou"; 
	}
	
	@GetMapping("about")
	public String about(Model model) {
		model.addAttribute("about us", "More about us page");
		return "about"; 
	}
	
	@GetMapping("store")
	public String store(Model model) {
		model.addAttribute("Our store", "Location and time");
		return "store"; 
	}
	
	@GetMapping("services")
	public String services(Model model) {
		model.addAttribute("services","Services page");
		return "services"; 
	}
	
	@GetMapping("admin")
	public String admin(Model model) {
		model.addAttribute("msg", "Welcome back!");
		return "admin"; 
	}
	
	
	@PostMapping("sendemail")
	public String sendEmail(Model model, @RequestParam String email, @RequestParam String name,@RequestParam String subject, @RequestParam String message) {
		
		webUtils.sendMail(email, message, subject + " " + name);
		model.addAttribute("message", "Email Sent!");
		
		return "services";
		
	}
	
	@GetMapping("name")
	public String name(@RequestParam String id, Model model) {
		index(model);
		model.addAttribute("myname", id);
		return "index";
		
	}
	
	@ModelAttribute("user") 	
	Users user() { 		
		return new Users(); 
	}
}
