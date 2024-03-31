package com.lostandfound.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.lostandfound.entities.Item;
import com.lostandfound.entities.User;


@Repository
public interface ItemRepositories extends JpaRepository<Item, Integer>{
	

	//@Query("select u from item u where user=?1")
	//Optional<List<Item>> findByUser(User user);

}
