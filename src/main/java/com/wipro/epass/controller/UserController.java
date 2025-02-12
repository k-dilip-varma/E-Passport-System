package com.wipro.epass.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.epass.entity.Credentials;
import com.wipro.epass.entity.User;
import com.wipro.epass.service.UserService;

import jakarta.servlet.http.HttpSession;


@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	@GetMapping("/")
	public String login()
	{
		return "login";
	}
	@GetMapping("/reg")
	public String reg()
	{
		return "register";
	}
	
	@GetMapping("/home")
	public String home(HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
			return "home";
		}
		else 
		{
			return "login";
		}
	}
	
	@GetMapping("/password")
	public String pass()
	{
		return "changepassword";
	}
	
	@PostMapping("/register")
	public String register(User user,Model model)
	{
		User u=	service.toRegister(user);
		if(u!=null)
		{
			
			model.addAttribute("msg","Registered Successfully");
			return "login";
		}
		else 
		{
			model.addAttribute("msg1","User Already Existed");
			return "register";
		}
	}
	
	@PostMapping("/login")
	public String login(Credentials credentials,Model model,HttpSession session)
	{
		User user=service.toLogin(credentials);
		session.setAttribute("user", user);
		if(user!=null)
		{
			
			return "home";
		}
		else 
		{
			model.addAttribute("msg1","Credentials are wrong");
			return "login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session)
	{
		User user=(User)session.getAttribute("user");
		if(user!=null)
		{
			session.removeAttribute("user");
		}
		return "login";
	}
	
	@PostMapping("/changepassword")
	public String password(HttpSession session,@RequestParam("password")String password,@RequestParam("newpassword")String newpassword,@RequestParam("newpassword1")String confirmpassword,Model model)
	{
		String email=((User)session.getAttribute("user")).getEmail();
		String pass=((User)session.getAttribute("user")).getPassword();
		if(email!=null) 
		{
			User user=service.findUser(email);
			if(password.equals(pass))
			{
				user.setPassword(newpassword);
			}
			else 
			{
				model.addAttribute("mismatch", "Passwords Mismatch");
				return "changepassword";
			}
			if(newpassword.equals(confirmpassword))
			{
				service.SaveUser(user);
				model.addAttribute("changed", "Changed Succesfully plz Login with new Password");
			}
			else 
			{
				model.addAttribute("mismatch", "Passwords Mismatch");
				return "changepassword";
			}
		
			return "login";
		}
		else 
		{
			return "changepassword";
		}
	}
	

}
