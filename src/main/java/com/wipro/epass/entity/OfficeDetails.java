package com.wipro.epass.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="officedetails")
public class OfficeDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String id;
	private String offname;
	private String jurisdictionname;
	private String address;
	private String contact;
	
	@OneToMany(mappedBy = "officeDetails",cascade = CascadeType.ALL)
	private List<Appointment> appointments;
	
	public OfficeDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OfficeDetails(String id, String offname, String jurisdictionname, String address, String contact,
			List<Appointment> appointments) {
		super();
		this.id = id;
		this.offname = offname;
		this.jurisdictionname = jurisdictionname;
		this.address = address;
		this.contact = contact;
		this.appointments = appointments;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOffname() {
		return offname;
	}

	public void setOffname(String offname) {
		this.offname = offname;
	}

	public String getJurisdictionname() {
		return jurisdictionname;
	}

	public void setJurisdictionname(String jurisdictionname) {
		this.jurisdictionname = jurisdictionname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public List<Appointment> getAppointments() {
		return appointments;
	}

	public void setAppointments(List<Appointment> appointments) {
		this.appointments = appointments;
	}



}
