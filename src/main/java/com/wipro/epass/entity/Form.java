package com.wipro.epass.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;


@Entity
@Table(name="form")
public class Form {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int fid;
	private String email;
	private String firstName;
	private String lastName;
	private String gender;
	private String phone;
	private String applicantEmail;
	private String dob;
	private String pob;
	private String fatherName;
	private String motherName;
	private String maritalStatus;
	private String presentAddress;
	private String permanentAddress;
	private String country;
	private String fileName;
	
	@Lob
	private byte[] data;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "office_id")
	private OfficeDetails officeDetails; 
	
	@OneToOne(cascade = CascadeType.ALL)
	private Appointment apt;

	public Form() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Form(int fid, String email, String firstName, String lastName, String gender, String phone,
			String applicantEmail, String dob, String pob, String fatherName, String motherName, String maritalStatus,
			String presentAddress, String permanentAddress, String country, String fileName, byte[] data, User user,
			OfficeDetails officeDetails, Appointment apt) {
		super();
		this.fid = fid;
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.phone = phone;
		this.applicantEmail = applicantEmail;
		this.dob = dob;
		this.pob = pob;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.maritalStatus = maritalStatus;
		this.presentAddress = presentAddress;
		this.permanentAddress = permanentAddress;
		this.country = country;
		this.fileName = fileName;
		this.data = data;
		this.user = user;
		this.officeDetails = officeDetails;
		this.apt = apt;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getApplicantEmail() {
		return applicantEmail;
	}

	public void setApplicantEmail(String applicantEmail) {
		this.applicantEmail = applicantEmail;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getPob() {
		return pob;
	}

	public void setPob(String pob) {
		this.pob = pob;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getPresentAddress() {
		return presentAddress;
	}

	public void setPresentAddress(String presentAddress) {
		this.presentAddress = presentAddress;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
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

	public Appointment getApt() {
		return apt;
	}

	public void setApt(Appointment apt) {
		this.apt = apt;
	}

	

}
