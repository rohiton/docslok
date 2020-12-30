package com.docslok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView  mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping("/login")
	public ModelAndView loginPage() {
		ModelAndView  mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping("/registration")
	public ModelAndView registrationPage() {
		ModelAndView  mav = new ModelAndView("registration");
		return mav;
	}

	@RequestMapping("/post-registration")
	public ModelAndView postRegistrationPage() {
		ModelAndView  mav = new ModelAndView("user/postRegistration");
		return mav;
	}

	@RequestMapping("/about-docslok")
	public ModelAndView aboutPage() {
		ModelAndView  mav = new ModelAndView("about");
		return mav;
	}

	@RequestMapping("/contact-docslok")
	public ModelAndView contactPage() {
		ModelAndView  mav = new ModelAndView("contact");
		return mav;
	}
}