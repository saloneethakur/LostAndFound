package com.lostandfound.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lostandfound.entities.Item;

@Repository
public interface ItemRepositories extends JpaRepository<Item, Integer>{
	

}
