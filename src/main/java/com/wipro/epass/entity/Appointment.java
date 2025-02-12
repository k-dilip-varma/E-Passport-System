package com.wipro.epass.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="Appointment")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int aid;
	@OneToOne(cascade = CascadeType.ALL)
	private Form formid;
	private String officeid;
	private String name;	
	private String aptdate;
	private String apttime;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "off_id")
	private OfficeDetails officeDetails;

	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Appointment(int aid, Form formid, String officeid, String name, String aptdate, String apttime, User user,
			OfficeDetails officeDetails) {
		super();
		this.aid = aid;
		this.formid = formid;
		this.officeid = officeid;
		this.name = name;
		this.aptdate = aptdate;
		this.apttime = apttime;
		this.user = user;
		this.officeDetails = officeDetails;
	}
	
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public Form getFormid() {
		return formid;
	}

	public void setFormid(Form formid) {
		this.formid = formid;
	}

	public String getOfficeid() {
		return officeid;
	}

	public void setOfficeid(String officeid) {
		this.officeid = officeid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAptdate() {
		return aptdate;
	}

	public void setAptdate(String aptdate) {
		this.aptdate = aptdate;
	}

	public String getApttime() {
		return apttime;
	}

	public void setApttime(String apttime) {
		this.apttime = apttime;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public OfficeDetails getOfficeDetails() {
		return officeDetails;
	}

	public void setOfficeDetails(OfficeDetails officeDetails) {
		this.officeDetails = officeDetails;
	}



}
