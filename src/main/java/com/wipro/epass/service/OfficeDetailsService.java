package com.wipro.epass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.epass.entity.OfficeDetails;
import com.wipro.epass.repository.OfficeDetailsRepository;


@Service
public class OfficeDetailsService {
	
	@Autowired
	private OfficeDetailsRepository officeDetailsRepo;
	
	public List<OfficeDetails> getOfficeDetails()
	{
		return officeDetailsRepo.findAll();
	}
	
	public OfficeDetails details(String id)
	{
		return officeDetailsRepo.findById(id).get();
	}

}
