package com.docslok.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.docslok.model.User;
import com.docslok.service.UserService;

@Controller
public class RootController {

    @Autowired
    private UserService userService;

   @RequestMapping("/")
   public String home() {
       return "index";
   }
    
   @RequestMapping("/login")
   public String next() {
       return "login";
   }
   
   @RequestMapping("/register")
   public String nex2t() {
       return "registration";
   }
   
   @RequestMapping("/about")
   public String about() {
       return "about";
   }
   
   @RequestMapping("/contact")
   public String contact() {
       return "contact";
   }

   @RequestMapping(value="/register",method=RequestMethod.POST)
   public String createNewUser(@Valid User user, BindingResult bindingResult) {
       User userExists = userService.findUserByUserName(user.getUsername());
       if (userExists != null) {
           return "registration";
       }
       if (bindingResult.hasErrors()) {
       	return "registration";
       } else {
           userService.saveUser(user);
       	return "login";
       }
   }
   
   @RequestMapping(value="/postregistration",method=RequestMethod.POST)
   public String aadhar(@Valid User u) {
       User user = userService.findUserByUserName(u.getUsername());
       user.setAadhaar_no(u.getAadhaar_no());
       return "index";
   }
   
   @RequestMapping(value="/dashboard")
   public String dashboard(){
       Authentication auth = SecurityContextHolder.getContext().getAuthentication();
       User user = userService.findUserByUserName(auth.getName());
       return "user/dashboard";
   }
}