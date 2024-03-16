package com.lostandfound.model;

import java.util.Date;

import com.lostandfound.entities.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LostModel {

	
    private String itemName; 
    private String description;
    private String location;
    private Date date;
    private String type; 
    private String  username;
    private String phone;
    private String enrollmentId;

}
