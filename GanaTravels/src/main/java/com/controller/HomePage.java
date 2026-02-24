package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomePage {
	
	@RequestMapping("/home")
	public String getHomePage() {
		System.out.println("HomePage");
		return "Home";
	}
	
	@RequestMapping("/singup")
	public String getSingupPage() {
		System.out.println("SingUp");
		return "Singup";
	}
	
	@RequestMapping("/login")
	public String getLoginPage() {
		System.out.println("login");
		return "Login";
	}
	
	@RequestMapping("/service")
	public String getServicePage() {
		System.out.println("service");
		return "Service";
	}
	
	@RequestMapping("/post")
	@ResponseBody
	public String toPostMan() {
		return "HeyPOstMan";
	}

}
