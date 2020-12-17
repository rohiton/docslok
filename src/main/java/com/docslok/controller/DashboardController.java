package com.docslok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

	@RequestMapping("/dashboard/issued-documents")
	public ModelAndView issuedDocuments() {
		ModelAndView  mav = new ModelAndView("/dashboard/issuedDocuments");
		return mav;
	}

	@RequestMapping("/dashboard/upload-documents")
	public ModelAndView uploadDocuments() {
		ModelAndView  mav = new ModelAndView("/dashboard/uploadDocuments");
		return mav;
	}

	@RequestMapping("/dashboard/shared-documents")
	public ModelAndView sharedDocuments() {
		ModelAndView  mav = new ModelAndView("/dashboard/sharedDocuments");
		return mav;
	}
	
	@RequestMapping("/dashboard/my-activities")
	public ModelAndView postRegistrationPage() {
		ModelAndView  mav = new ModelAndView("/dashboard/myActivities");
		return mav;
	}

	@RequestMapping("/dashboard/convert-documents")
	public ModelAndView convertDocuments() {
		ModelAndView  mav = new ModelAndView("/dashboard/convertDocuments");
		return mav;
	}

	@RequestMapping("/dashboard/update-profile")
	public ModelAndView updateProfile() {
		ModelAndView  mav = new ModelAndView("/dashboard/updateProfile");
		return mav;
	}

	@RequestMapping("/dashboard/manage-account")
	public ModelAndView manageAccount() {
		ModelAndView  mav = new ModelAndView("/dashboard/manageAccount");
		return mav;
	}

	@RequestMapping("/dashboard/storage-info")
	public ModelAndView storageInfo() {
		ModelAndView  mav = new ModelAndView("/dashboard/storageInfo");
		return mav;
	}
}