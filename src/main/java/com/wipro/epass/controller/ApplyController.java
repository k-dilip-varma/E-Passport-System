package com.wipro.epass.controller;

import java.io.IOException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wipro.epass.entity.Form;
import com.wipro.epass.entity.User;
import com.wipro.epass.service.ApplyService;

import jakarta.servlet.http.HttpSession;


@Controller
public class ApplyController {
	
	@Autowired
	private ApplyService service;
	
	
	@GetMapping("/apply")
	public String apply(HttpSession session)
	{
		User u=(User)session.getAttribute("user");
		
		if(u!=null)
		{
			String email=u.getEmail();
			System.out.println(email);
			return "application";
		}
		else {
			return "login";
		}
		
	}
	
	
	@PostMapping("/submitform") 
	public String fillResume2(@RequestParam MultipartFile   file,@ModelAttribute ("f") Form f,Model model,HttpSession session) throws IOException {
		
		User user=(User)session.getAttribute("user");
		String ApplicantsEmail=f.getApplicantEmail();
		Form formid =service.getApplicant(ApplicantsEmail);
		if(formid==null) 
		{
			String email1=user.getEmail();
			Form f1=new Form();
			
			f1.setFirstName(f.getFirstName());
			f1.setLastName(f.getLastName());
			f1.setDob(f.getDob());
			f1.setGender(f.getGender());
			f1.setApplicantEmail(f.getApplicantEmail());
			f1.setPhone(f.getPhone());
			f1.setFatherName(f.getFatherName());
			f1.setMotherName(f.getMotherName());
			f1.setEmail(email1);
			f1.setMaritalStatus(f.getMaritalStatus());
			f1.setPermanentAddress(f.getPermanentAddress());
			f1.setPresentAddress(f.getPresentAddress());
			f1.setPob(f.getPob());
			f1.setUser(user);
			f1.setOfficeDetails(f.getOfficeDetails());
			f1.setCountry(f.getCountry());
			f1.setData(file.getBytes());
			String fileName = StringUtils.cleanPath(file.getOriginalFilename());
			f1.setFileName(fileName);
			
			service.SaveResume(f1);
			model.addAttribute("applied","Applied Successfully Please Request For Appointment");
			
			return "home";
		}
		else 
		{
			return "already";
		}
	}
	
	@GetMapping("/request")
	public String request(Model model,HttpSession session)
	{
		
		User user=(User)session.getAttribute("user");
		if(user!=null) {
		String email1=user.getEmail();
		model.addAttribute("email", email1);
		List<Form> list =service.getforms(email1);
		model.addAttribute("list", list);
		return "request";
		}
		else {
			return "login";
		}
		
	}

}
