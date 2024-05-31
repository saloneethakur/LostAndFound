package com.lostandfound.entities;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.*;


@Entity
@Table(name = "item")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "item_name")
    private String itemName;
    
    private String category;

    @Column(name = "description")
    private String description;


    
    @Column(name = "location")
    private String location;
    
    @Column(name = "type")
    private String type;

    
    @Column(name = "date", nullable = false)
    private Date date;
    
    private String image;
    
    private String item_status;
    
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

	public Item(String itemName, String category, String description, String location, String type, Date date,
			String image, User user,String status) {
		super();
		this.itemName = itemName;
		this.category = category;
		this.description = description;
		this.location = location;
		this.type = type;
		this.date = date;
		this.image = image;
		this.user = user;
		this.item_status = status;
	} 


    
}