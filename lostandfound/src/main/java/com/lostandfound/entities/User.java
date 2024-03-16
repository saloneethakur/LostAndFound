package com.lostandfound.entities;

import java.util.Collection;

import javax.persistence.*;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Entity
@Table(name = "user")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class User implements UserDetails{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "username",nullable=false)
    private String username;

    @Column(name = "password",nullable=false)
    private String password;

    @Column(name = "email",nullable=false,unique=true)
    private String email;

    @Column(name = "phone",nullable=false,unique=true)
    private String phone;

    @Column(name = "enrollment_id",nullable=false,unique=true)
    private String enrollmentId;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	public User(String username,String email,String phone, String password, String enrollmentId) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.enrollmentId = enrollmentId;
	}

	

	

   
}