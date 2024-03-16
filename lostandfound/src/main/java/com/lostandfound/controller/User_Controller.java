package com.lostandfound.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lostandfound.model.UserModel;

@Controller
@RequestMapping("/lost")
public class User_Controller {

	@RequestMapping(value="/lost_form")
	public String lost_form()
	{
		String res = null;
		
		
		return null;
	}
	
	
	
}
