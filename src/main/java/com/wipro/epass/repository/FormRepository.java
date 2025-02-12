package com.wipro.epass.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.epass.entity.Form;

public interface FormRepository extends JpaRepository<Form, Integer> {
	
	List<Form> findByEmail(String email);
	
	Form findByApplicantEmail(String applicantEmail);

}
