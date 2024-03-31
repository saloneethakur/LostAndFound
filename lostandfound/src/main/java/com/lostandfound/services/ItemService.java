package com.lostandfound.services;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.lostandfound.entities.Item;
import com.lostandfound.entities.User;
import com.lostandfound.model.LostModel;
import com.lostandfound.repositories.ItemRepositories;

@Service
public class ItemService {

	@Autowired
	private UserService UserService;
	
	@Autowired
	private ItemRepositories itemRepo;
	
	public String saveItem(String filePath, LostModel lost) {
		try {
		//	User user = UserService.getById(lost.getUserId());
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			User user = (User)principal;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date dob = sdf.parse(lost.getDate());
			System.out.println(user);
			System.out.println(user);
		
			Item item = new Item(lost.getItemName(),lost.getCategory(),lost.getDescription(),lost.getLocation(),lost.getType(),dob,filePath,user);
					
			itemRepo.save(item);
			return "file save";
		}
		catch(Exception e) {
			return e.getMessage();
		}
		
	}

	
	
}
