package com.wipro.epass.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.wipro.epass.entity.Appointment;
import com.wipro.epass.entity.Form;
import com.wipro.epass.entity.OfficeDetails;
import com.wipro.epass.entity.User;
import com.wipro.epass.repository.AppointmentRepository;
import com.wipro.epass.service.ApplyService;
import com.wipro.epass.service.AppointmentService;
import com.wipro.epass.service.OfficeDetailsService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AppointmentController {
	
	@Autowired
	private OfficeDetailsService officeDetailsService;
	@Autowired
	private ApplyService applyService;
	@Autowired
	private AppointmentRepository appointmentRepo;
	@Autowired
	private AppointmentService appointmentService;
	
	
	@GetMapping("/select/{id}")
	public String select(@PathVariable("id")int id,Model model,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null) 
		{
			List<OfficeDetails>list =officeDetailsService.getOfficeDetails();
			model.addAttribute("list", list);
			model.addAttribute("id", id);
			return "office";
		}
		else 
		{
			return "login";
		}
	}
	
	@GetMapping("/appointment/{office_id}/{form_id}")
	public String takeAppoint(@PathVariable("office_id")String offid,@PathVariable("form_id")int formid,Model model,HttpSession session)
	{

		Form form= applyService.getForm(formid);
		User user=(User)session.getAttribute("user");
		if(user!=null) 
		{
			String email1=user.getEmail();
			model.addAttribute("email", email1);
			model.addAttribute("form", form);
			OfficeDetails officeDetails=officeDetailsService.details(offid);
			model.addAttribute("details", officeDetails);
			return "appointment";
		}
		else 
		{
			return "login";
		}
	}
	
	@PostMapping("/requestappointment/{id}/{office_id}")
	public String requestappoi(@ModelAttribute Appointment appointment,@PathVariable("id") int id,@PathVariable("office_id")String officeid,HttpSession session ,Model model)
	{
		User user=(User)session.getAttribute("user");
		String email1=user.getEmail();
		model.addAttribute("email", email1);
		Form form=applyService.getForm(id);
		OfficeDetails officeDetails= officeDetailsService.details(officeid);
		System.out.println(form);
		form.setApt(appointment);
		appointment.setUser(user);
		appointment.setFormid(form);
		appointment.setOfficeDetails(officeDetails);
		form.setOfficeDetails(officeDetails);
		appointmentRepo.save(appointment);
		model.addAttribute("appointmented","Appointment Booked Successfully");
		return "home";
	}
	
	@GetMapping("/viewappoi")
	public String view(Model model,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
			String email1=user.getEmail();
			model.addAttribute("email", email1);
			List<Form> list =applyService.getforms(email1);
	//		System.out.println(list);
			model.addAttribute("list", list);
			return "view";
		}
		else 
		{
			return "login";
		}
	}
	
	@GetMapping("/view/{id}/{formid}")
	public String viewAppointment(@PathVariable("id") int id,@PathVariable("formid")int id1,Model model,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null) 
		{
			model.addAttribute("id",id1);
			Appointment appointment=appointmentService.viewAppoi(id);
			model.addAttribute("appoi", appointment);
			return "viewapp";
		}
		else 
		{
			return "login";
		}
	}
	
	@GetMapping("updateappoi/{id}/{id1}")
	public String update(@PathVariable("id")int id,@PathVariable("id1")int id1,Model model,HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null) 
		{
			model.addAttribute("id",id1);
		
			Appointment appointment=appointmentService.viewAppoi(id);
			model.addAttribute("appoi", appointment);
			return "viewappointment";}
		else 
		{
			return "login";
		}
	}
	
	@PostMapping("update/{id}/{fid}")
	public String updated(@PathVariable("id")int id,@PathVariable("fid")int id1,Appointment app,HttpSession session,Model model)
	{
		Form form=applyService.getForm(id1);
		User user=(User)session.getAttribute("user");
		model.addAttribute("update","Appointment Updated Succesfully");
		app.setFormid(form);
		app.setUser(user);
		Appointment appointment=appointmentService.updateAppointment(app, id,user);
		
		return "home";
		
	}

}
