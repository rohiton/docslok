package com.docslok.controller;

import java.util.Date;

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
import org.springframework.web.servlet.ModelAndView;

import com.docslok.model.ConfirmationToken;
import com.docslok.model.User;
import com.docslok.model.User.AccountStatus;
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
	public ModelAndView userRegistration(@Valid User user, BindingResult bindingResult) {
		ModelAndView mav = new ModelAndView();
		User existingUserByUysername = userService.findUserByUserName(user.getUsername());
		User existingUserByEmail = userService.findUserByEmail(user.getEmail());
		//If a user already existed with the entered username or email
		if (existingUserByUysername != null || existingUserByEmail != null) {
			mav.setViewName("registration");
			return mav;
		}
		else if (bindingResult.hasErrors()) {
			mav.setViewName("registration");
			return mav;
		} else {
			userService.saveAsNewUser(user);
			ConfirmationToken confirmationToken = new ConfirmationToken(user);
			confirmationTokenRepository.save(confirmationToken);
			// Sending email upon registration
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setTo(user.getEmail());
			mailMessage.setSubject("Email Verification");
			mailMessage.setFrom("Adm.employeecare@gmail.com");
			mailMessage.setText("Welcome to docslok!\n\n"
					+ "Before you can start using your docslok account, you need to first verify by clicking the below link: "
					+ "http://localhost:8090/app/account-confirmation?token="
					+ confirmationToken.getConfirmationToken());
			//emailSenderService.sendEmail(mailMessage);
			mav.setViewName("user/postRegistration");
		}
		return mav;
	}
	
	@RequestMapping(value = "/raise-ticket", method = RequestMethod.POST)
	public ModelAndView raiseticket(@RequestParam("email") String email, @RequestParam("subject") String subject, @RequestParam("message") String message) {
		ModelAndView mav = new ModelAndView();
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setTo("rohitkumar1121.rk@gmail.com");
			mailMessage.setSubject(subject);
			mailMessage.setFrom(email);
			mailMessage.setText(message);
			emailSenderService.sendEmail(mailMessage);
			mav.setViewName("redirect:/dashboard");
		return mav;
	}


	@RequestMapping(value = "/post-registration", method = RequestMethod.POST)
	public ModelAndView postRegistration(@Valid User user, BindingResult bindingResult) {
		ModelAndView mav = new ModelAndView("redirect:/login");
		User newlyCreatedUser = userService.findUserByUserName(user.getUsername());
		if(newlyCreatedUser!=null) {
			User userByAadhaarNo = userService.findUserByAadhaarNo(user.getAadhaarNo());
			if(userByAadhaarNo==null) {
				newlyCreatedUser.setAadhaarNo(user.getAadhaarNo());
				newlyCreatedUser.setSecretPin(user.getSecretPin());
				userService.save(newlyCreatedUser);
			}
		}
		return mav;
	}

	@RequestMapping(value = "/account-confirmation", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView accountConfirmation(@RequestParam("token") String confirmationToken) {
		ModelAndView mav = new ModelAndView();
		ConfirmationToken token = confirmationTokenRepository.findByConfirmationToken(confirmationToken);
		if (token != null) {
			User user = userService.findUserByEmail(token.getUser().getEmail());
			user.setEmailVerified(true);
			userService.save(user);
			mav.setViewName("user/emailVerificationSuccess");
		} else {
			mav.setViewName("user/emailVerificationFail");
		}
		return mav;
	}

	@RequestMapping(value = "/dashboard")
	public ModelAndView dashboard() {
		ModelAndView mav = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());
		if(user!=null) {
			if(user.getAccountStatus().equals(AccountStatus.DROPPED)) {
				mav.addObject("user", user);
				mav.setViewName("user/accountDeletedPage");
				return mav;
			}
			if(user.getAccountStatus().equals(AccountStatus.SUSPENDED)){
				mav.addObject("user", user);
				mav.setViewName("user/accountDeactivatedPage");
				return mav;
			}
			if (!user.isEmailVerified()) {
				mav.addObject("emailNotVerifiedMessage",
						"Before you can start securing documents, you need to first verify your email address, please check your inbox.");
			}
			if (user.getAadhaarNo() == null || user.getSecretPin() == null) {
				mav.addObject("aadhaarNotUpdated",
						"Looks like you've not updated your AADHAAR number in your account. Kindly update it else you won't be able to secure your documents");
			}
			mav.addObject("message",
					"Thank you for creating an account on docslok. You can now start securing your documents with us.");
		}
		mav.setViewName("user/dashboard");
		return mav;
	}
	
	@RequestMapping(value="/dashboard/update-profile", method = RequestMethod.POST)
	public ModelAndView updateProfile(@Valid User user, BindingResult bindingResult) {
		ModelAndView mav = new ModelAndView("redirect:/dashboard");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User u = userService.findUserByUserName(auth.getName());
		u.setFirstName(user.getFirstName());
		u.setLastName(user.getLastName());
		u.setSecretPin(user.getSecretPin());
		userService.save(u); 
		return mav;
	}
	
	@RequestMapping(value="dashboard/manage-account/account-delete")
	public ModelAndView deleteAccount() {
		ModelAndView mav = new ModelAndView("redirect:/login");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());
		if(user!=null) {
			user.setAccountStatus(AccountStatus.DROPPED);
			Date date = new Date();
			user.setAccountDeletedOn(date);
			userService.save(user);
		}
		return mav;
	}
	
	@RequestMapping(value="dashboard/manage-account/account-reactivate")
	public ModelAndView accountReactivate() {
		ModelAndView mav = new ModelAndView("redirect:/login");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());
		if(user!=null) {
			user.setAccountStatus(AccountStatus.ACTIVE);
			userService.save(user);
		}
		return mav;
	}
	
	@RequestMapping(value="/dashboard/manage-account/raise-ticket")
	public ModelAndView raiseTicket() {
		ModelAndView mav = new ModelAndView("dashboard/raiseTicket");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());
		mav.addObject(user);
		return mav;
	}
	
	@RequestMapping(value="dashboard/manage-account/account-deactivate")
	public ModelAndView deactivateAccount() {
		ModelAndView mav = new ModelAndView("redirect:/login");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByUserName(auth.getName());
		if(user!=null) {
			user.setAccountStatus(AccountStatus.SUSPENDED);
			Date date = new Date();
			user.setAccountDeactivatedOn(date);
			userService.save(user);
		}
		return mav;
	}
}