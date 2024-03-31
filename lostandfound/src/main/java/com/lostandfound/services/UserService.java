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
			//(String email, String password, String role, String name, String phone, String enrollmentId)
			User user = new User(model.getEmail(), model.getPassword(), "ROLE_USER",model.getName(),model.getPhone(),model.getEnrollmentId());
			 userRepo.save(user);
			return "Save Successful";
			
			}
		catch (Exception e) {
			return e.getMessage();
		}
	}

}
