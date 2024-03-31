package com.lostandfound.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lostandfound.services.UserService;

import com.lostandfound.entities.User;
import com.lostandfound.model.*;

@Controller
@RequestMapping("/web")
public class web_controller {
	
	@Autowired
	private UserService UserService;
	
	
	
	@RequestMapping(value = "/reg_user")
	public String reg_user(UserModel model,ModelMap map)
	{
		String res = null;
		res = UserService.saveUser( model);
		if(res.equals("Save Successful"))
		{
			map.addAttribute("msg", "User Registered Successful");
			return "login";
		}
		else 
		{
			map.addAttribute("errorMsg", "User not Register Successful");
			return "login";
		}	
	}
	
	
	@RequestMapping(value = "/login")	
	public String login(ModelMap model, String error, String logout) 
	{
		if (error != null)
		{
			model.addAttribute("errorMsg", "Your username and password are invalid.");
		}
		if (logout != null)
			model.addAttribute("msg", "You have been logged out successfully.");

		return "login";
	}
		
	@RequestMapping(value = "/home")	
	public String home(ModelMap map) 
	{
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = (User)principal;
		System.out.println(user);
		return "found";
	}
	
	
	
	@RequestMapping(value="/reportlost")
	public String lost()
	{
		return "found";
	}
	@RequestMapping(value="/loginn")
	public String loginn()
	{
		return "login";
	}
	
}
