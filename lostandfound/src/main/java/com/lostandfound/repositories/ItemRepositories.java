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
	List<Item> findByUser(User user);
	
	
	
	@Query("SELECT DISTINCT i.category FROM Item i")
    List<String> findAllCategories();

    @Query("SELECT DISTINCT i.type FROM Item i")
    List<String> findAllTypes();

    @Query("SELECT i FROM Item i WHERE " +
           "(:search IS NULL OR i.itemName LIKE %:search% OR i.description LIKE %:search%) AND " +
           "(:category IS NULL OR i.category = :category) AND " +
           "(:type IS NULL OR i.type = :type) " +
           "ORDER BY " +
           "CASE WHEN :sort = 'date' THEN i.date END DESC, " +
           "CASE WHEN :sort = 'name' THEN i.itemName END ASC")
    List<Item> findItemsByCriteria(String search, String category, String type, String sort);

}
