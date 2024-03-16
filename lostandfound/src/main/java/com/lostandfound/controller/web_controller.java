package com.lostandfound.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lostandfound.services.UserService;
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
		if(res.equals("Save Successful")) {
			map.addAttribute("msg", "User Registered Successful");
			return "login";
		}else {
			map.addAttribute("errorMsg", "User not Register Successful");
			return "login";
		}
		
	}

	
}
