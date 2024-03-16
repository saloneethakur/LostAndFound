package com.lostandfound.services;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.lostandfound.entities.User;
import com.lostandfound.model.UserModel;
import com.lostandfound.repositories.*;


@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserRepositories userRepo;
	
	public User getById(int id) 
	{
		return userRepo.findById(id).get();
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException 
	{
		UserDetails user = userRepo.findByEmail(username).get();
		return user;
	}
	
	public User saveUser(User user) {
		return userRepo.save(user);
	}

	public String saveUser(UserModel model) {
		
		try {
			
			User user = new User(model.getUsername(),model.getEmail(),model.getPhone(),model.getPassword(),model.getEnrollmentId());
			 userRepo.save(user);
			return "Save Successful";
			}
		catch (Exception e) {
			return e.getMessage();
		}
	}

}
