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

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String userRegistration(@Valid User user, BindingResult bindingResult) {
		User existingUser = userService.findUserByUserName(user.getUsername());
		if (existingUser != null) {
			return "registrationErrorForExistingUser";
		}
		if (bindingResult.hasErrors()) {
			return "registrationError";
		} else {
			userService.saveUser(user);
			ConfirmationToken confirmationToken = new ConfirmationToken(user);
			confirmationTokenRepository.save(confirmationToken);
			
			//Sending email upon registration
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setTo(user.getEmail());
			mailMessage.setSubject("Email Verification");
			mailMessage.setFrom("Adm.employeecare@gmail.com");
			mailMessage.setText("Welcome to docslok!\n\n"
					+ "Before you can start using your docslok account, you need to first verify by clicking the below link: "
					+ "http://localhost:8090/app/confirm-account?token=" + confirmationToken.getConfirmationToken());
			emailSenderService.sendEmail(mailMessage);
			
			return "user/postRegistration";
		}
	}
	
	@RequestMapping(value = "/post-registration", method = RequestMethod.POST)
	public String postRegistration(@Valid User user, BindingResult bindingResult) {
			User newlyCreatedUser = userService.findUserByUserName(user.getUsername());
			newlyCreatedUser.setAadhaarNo(user.getAadhaarNo());
			newlyCreatedUser.setSecretPin(user.getSecretPin());
			userService.save(newlyCreatedUser);
			return "login";
	}

	@RequestMapping(value = "/account-confirmation", method = { RequestMethod.GET, RequestMethod.POST })
	public String accountConfirmation(@RequestParam("token") String confirmationToken) {
		ConfirmationToken token = confirmationTokenRepository.findByConfirmationToken(confirmationToken);
		if (token != null) {
			User user = userService.findUserByEmail(token.getUser().getEmail());
			user.setEmailVerified(true);
			userService.saveUser(user);
			return "user/emailVerificationSuccess";
		} else {
			return "user/emailVerificationFail";
		}
	}

	@RequestMapping(value = "/dashboard/email-verification", method = RequestMethod.GET)
	public String emailVerification(@Valid User user) {
		User newlyCreatedUser = userService.findUserByUserName(user.getUsername());
		return "docslok-user/email-verification";
	}

	@RequestMapping(value = "/dashboard")
	public String dashboard() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());

		if(user.getAadhaarNo()!=null && user.isEmailVerified()) {
			return "docslok-user/dashboard";
		}
		else if(user.getAadhaarNo()!=null) {
			if (!user.isEmailVerified()) 
				return "user/unverifiedDashboard";
			return "user/dashboard";
		}
		else {
			return "login";
		}
	}
}