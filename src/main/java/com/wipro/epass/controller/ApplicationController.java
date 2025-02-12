package com.wipro.epass.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.wipro.epass.entity.Appointment;
import com.wipro.epass.entity.Form;
import com.wipro.epass.entity.User;
import com.wipro.epass.service.ApplyService;
import com.wipro.epass.service.AppointmentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ApplicationController {
	
	@Autowired
	private AppointmentService appointmentService;
	
	@Autowired
	private ApplyService applyService;
	
	@GetMapping("/viewapplication/{app_id}/{form_id}")
	public String viewapplication(Model model,@PathVariable("app_id")int aid,@PathVariable("form_id")int fid,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null) 
		{
			Form form = applyService.getForm(fid);
			model.addAttribute("form", form);
			Appointment appointment=appointmentService.viewAppoi(aid);
			model.addAttribute("appointment", appointment);
			return "viewapplication";
		}
		else 
		{
			return "login";
		}
				
	}

}
