package com.docslok.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.docslok.model.ConfirmationToken;
import com.docslok.model.User;
import com.docslok.repository.ConfirmationTokenRepository;
import com.docslok.service.EmailSenderService;
import com.docslok.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private ConfirmationTokenRepository confirmationTokenRepository;

	@Autowired
	private EmailSenderService emailSenderService;

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String createNewUser(@Valid User user, BindingResult bindingResult) {
		User userExists = userService.findUserByUserName(user.getUsername());
		if (userExists != null) {
			return "register";
		}
		if (bindingResult.hasErrors()) {
			return "register";
		} else {
			userService.saveUser(user);
			ConfirmationToken confirmationToken = new ConfirmationToken(user);
			confirmationTokenRepository.save(confirmationToken);
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setTo(user.getEmail());
			mailMessage.setSubject("Email Verification");
			mailMessage.setFrom("Adm.employeecare@gmail.com");
			mailMessage.setText("Welcome to docslok!\n\n"
					+ "Before you can start using your docslok account, you need to first verify by clicking the below link: "
					+ "http://localhost:8090/app/confirm-account?token=" + confirmationToken.getConfirmationToken());
			emailSenderService.sendEmail(mailMessage);
			return "login";
		}
	}

	@RequestMapping(value = "/confirm-account", method = { RequestMethod.GET, RequestMethod.POST })
	public String emailVerification(@RequestParam("token") String confirmationToken) {
		ConfirmationToken token = confirmationTokenRepository.findByConfirmationToken(confirmationToken);
		if (token != null) {
			User user = userService.findUserByEmail(token.getUser().getEmail());
			user.setEmail_verified(true);
			userService.saveUser(user);
			return "docslok-user/email-verification-success";
		} else {
			return "email-verification-fail";
		}
	}

	@RequestMapping(value = "/dashboard/email-verification", method = RequestMethod.GET)
	public String verify(@Valid User u) {
		User user = userService.findUserByUserName(u.getUsername());
		return "docslok-user/email-verification";
	}

	@RequestMapping(value = "/dashboard")
	public String dashboard() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());
		if (user.getEmail_verified()) {
			return "docslok-user/dashboard";
		} else {
			return "docslok-user/unverified-dashboard";
		}
	}
}