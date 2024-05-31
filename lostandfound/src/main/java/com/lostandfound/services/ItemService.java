package com.lostandfound.services;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

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
		
			Item item = new Item(lost.getItemName(),lost.getCategory(),lost.getDescription(),lost.getLocation(),lost.getType(),dob,filePath,user,"Active");
					
			itemRepo.save(item);
			return "file save";
		}
		catch(Exception e) {
			return e.getMessage();
		}
		
	}
	 
	    public Item getItemById(int itemId) {
	        return itemRepo.findById(itemId).orElse(null);
	    }
	
		public List<Item> getAllItems() {
	        return itemRepo.findAll();
	    }
		
		public List<Item> getItemsByUser(User user) {
	        return itemRepo.findByUser(user);
	    }
	
		 public List<Item> searchItems(String search, String category, String type, String sort) {
		        // Logic to search and filter items based on parameters
		        return itemRepo.findItemsByCriteria(search, category, type, sort);
		    }

		    public List<String> getAllCategories() {
		        return itemRepo.findAllCategories();
		    }

		    public List<String> getAllTypes() {
		        return itemRepo.findAllTypes();
		    }

		    public static List<Item> filterItems(List<Item> items, String search, String category, String type, String sort) {
		        List<Item> filteredItems = new ArrayList<>(items);

		        // Apply filters based on search parameters
		        if (search != null && !search.isEmpty()) {
		            filteredItems = filteredItems.stream()
		                    .filter(item -> item.getItemName().contains(search) ||
		                            item.getDescription().contains(search) ||
		                            item.getLocation().contains(search))
		                    .collect(Collectors.toList());
		        }
		        if (category != null && !category.isEmpty()) {
		            filteredItems = filteredItems.stream()
		                    .filter(item -> item.getCategory().equals(category))
		                    .collect(Collectors.toList());
		        }
		        if (type != null && !type.isEmpty()) {
		            filteredItems = filteredItems.stream()
		                    .filter(item -> item.getType().equals(type))
		                    .collect(Collectors.toList());
		        }

		        if (sort != null && !sort.isEmpty()) {
		            switch (sort) {
		                case "date":
		                    filteredItems.sort(Comparator.comparing(Item::getDate).reversed());
		                    break;
		                case "name":
		                    filteredItems.sort(Comparator.comparing(Item::getItemName));
		                    break;
		               
		            }
		        }

		        return filteredItems;
		    }
	
}
