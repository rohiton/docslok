package com.docslok.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
   
   @RequestMapping("/registration")
   public String nex2t() {
       return "registration";
   }

   @RequestMapping(value="/registration",method=RequestMethod.POST)
   public String createNewUser(@Valid User user, BindingResult bindingResult) {
       User userExists = userService.findUserByUserName(user.getUsername());
       if (userExists != null) {
           bindingResult
                   .rejectValue("userName", "error.user",
                           "There is already a user registered with the user name provided");
       }
       if (bindingResult.hasErrors()) {
       	return "registration";
       } else {
           userService.saveUser(user);
       	return "login";
       }
   }
   
   @RequestMapping(value="/dashboard")
   public String dashboard(){
       Authentication auth = SecurityContextHolder.getContext().getAuthentication();
       User user = userService.findUserByUserName(auth.getName());
       return "admin/home";
   }
}