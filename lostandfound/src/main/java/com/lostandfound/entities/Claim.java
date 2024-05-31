package com.lostandfound.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.*;
//Claim.java

@Entity
@Table(name = "claim")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Claim {

 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
 private int id;

 @ManyToOne
 @JoinColumn(name = "owner_id")
 private User owner;

 @ManyToOne
 @JoinColumn(name = "recipient_id")
 private User recipient;

 @ManyToOne
 @JoinColumn(name = "item_id")
 private Item item;

public Claim(User owner, User recipient, Item item) {
	super();
	this.owner = owner;
	this.recipient = recipient;
	this.item = item;
}




 
}
