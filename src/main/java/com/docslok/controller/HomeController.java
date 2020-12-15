package com.docslok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/registration")
	public String registrationPage() {
		return "registration";
	}

	@RequestMapping("/about-docslok")
	public String aboutPage() {
		return "about";
	}

	@RequestMapping("/contact-docslok")
	public String contactPage() {
		return "contact";
	}

}