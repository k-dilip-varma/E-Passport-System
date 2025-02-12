package com.wipro.epass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.epass.entity.Appointment;
import com.wipro.epass.entity.OfficeDetails;
import com.wipro.epass.entity.User;
import com.wipro.epass.repository.AppointmentRepository;

@Service
public class AppointmentService {
	@Autowired
	private AppointmentRepository appointmentRepo;
	
	@Autowired
	private OfficeDetailsService officeDetailsService;
	
	public Appointment viewAppoi(int id)
	{
		return appointmentRepo.findById(id).get();
	}
	
	public Appointment updateAppointment(Appointment app,int id,User user)
	{
		
		OfficeDetails officeDetails=officeDetailsService.details(app.getOfficeid());
		Appointment appointment= appointmentRepo.findById(id).get();
		appointment.setAid(id);
		appointment.setName(app.getName());
		appointment.setUser(user);
		appointment.setOfficeid(app.getOfficeid());
		appointment.setOfficeDetails(officeDetails);
		appointment.setAptdate(app.getAptdate());
		appointment.setApttime(app.getApttime());
		appointmentRepo.save(appointment);
		return appointment;
	}


}
