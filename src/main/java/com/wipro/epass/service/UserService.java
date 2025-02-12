package com.wipro.epass.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.epass.entity.Credentials;
import com.wipro.epass.entity.User;
import com.wipro.epass.repository.UserRepository;


@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	public User toRegister(User user) 
	{
		User user1=userRepo.findByEmail(user.getEmail());
		
		if(user1==null)
		{
			
			return userRepo.save(user);
			
		}
		
		else {
			return null;
		}
		
		
	}
	
	public User toLogin(Credentials login) 
	{
		User user=((UserRepository) userRepo).findByEmailAndPassword(login.getEmail(),login.getPassword());
		System.out.println(login.getEmail()+ login.getPassword());
		if(user != null)
		{
			return user;
		}
		else {
		
			return null;
		}
	}
	
	public User findUser(String email)
	{
		return userRepo.findByEmail(email);
	}
	
	public User SaveUser(User user)
	{
		return userRepo.save(user);
	}

}
