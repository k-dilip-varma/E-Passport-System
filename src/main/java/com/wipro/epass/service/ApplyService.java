package com.wipro.epass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.epass.entity.Form;
import com.wipro.epass.repository.FormRepository;

@Service
public class ApplyService {
	
	@Autowired
	private FormRepository repo;
	
	
	
	public String SaveResume(Form f)
	{ 
		repo.save(f);
		return "";
	}
	
	
	public List<Form> getforms(String email)
	{
		System.out.println(repo.findByEmail(email));
		return repo.findByEmail(email);
		
	}
	
	public Form getForm(int id)
	{
		return repo.findById(id).get();
	}
	
	public Form getApplicant(String email)
	{
		return repo.findByApplicantEmail(email);
	}


}
