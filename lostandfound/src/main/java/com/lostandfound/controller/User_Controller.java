package com.lostandfound.controller;
import com.lostandfound.services.ItemService;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lostandfound.entities.Claim;
import com.lostandfound.entities.Item;
import com.lostandfound.entities.User;
import com.lostandfound.model.LostModel;
import com.lostandfound.model.UserModel;
import com.lostandfound.repositories.ClaimRepositories;
import com.lostandfound.repositories.ItemRepositories;
import com.lostandfound.repositories.UserRepositories;
import com.lostandfound.services.ItemService;

@Controller
@RequestMapping("/user")
public class User_Controller {

	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private ItemRepositories itemRepo;
	
	@Autowired
	private UserRepositories userRepo;
	
	@Autowired
	private ClaimRepositories claimRepo;
	
	@RequestMapping(value="/lost_form")
	public String lost_form()
	{
		String res = null;
		
		
		return null;
	}
	
	@RequestMapping(value="/home")
	public String home()
	{
		return "found";
	}
	
	@RequestMapping("/saveItem")
	public String saveitem(LostModel lost,@RequestParam("image")MultipartFile file,ModelMap map) throws IOException 
	{
		byte arr[] = file.getBytes();
		
		String fileName = file.getOriginalFilename();		
		String extension = fileName.substring(fileName.lastIndexOf("."));
		String uploadFile =  UUID.randomUUID().toString()+extension;	
		//C:\Users\HP\git\LostAndFound\lostandfound\src\main\resources\static\image
		//File fileObj = new File("C:\\Users\\HP\\Desktop\\ccg", uploadFile);
		File fileObj = new File("C:\\Users\\HP\\git\\LostAndFound\\lostandfound\\src\\main\\resources\\static\\image", uploadFile);
		FileOutputStream fos = new FileOutputStream(fileObj);
		fos.write(arr);
		fos.flush();
		fos.close();		
		String filePath =  fileObj.getAbsolutePath();
		String res = null;
		res = ItemService.saveItem(filePath,lost);
		if(res.equals("file save")) {
			map.addAttribute("msg", "File Upload Successful");
			return "index2";
		}else {
			map.addAttribute("errorMsg", "Report not upload successful");
			return "accessDenied";
		}
		
		
	}
	
	@GetMapping("/displayItems")
    public String displayItems(Model model) {
        List<Item> items = ItemService.getAllItems();
        model.addAttribute("items", items);
        return "displayItems";
    }
	
	@GetMapping("/user_items")
    public String getUserItems( Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = (User)principal;
        List<Item> items = ItemService.getItemsByUser(user);
        model.addAttribute("items", items);
        return "show";
    }
	
	 @GetMapping("/all_items")
	    public String viewdisplayItems(
	            @RequestParam(value = "search", required = false) String search,
	            @RequestParam(value = "category", required = false) String category,
	            @RequestParam(value = "type", required = false) String type,
	            @RequestParam(value = "sort", required = false) String sort,
	            Model model) {
		 
		 
		   

		    List<Item> items = ItemService.searchItems(search, category, type, sort);
	        List<String> categories = ItemService.getAllCategories();
	        List<String> types = ItemService.getAllTypes();

	        model.addAttribute("items", items);
	        model.addAttribute("categories", categories);
	        model.addAttribute("types", types);

	        return "displayItems";

	        
	    }
	 
	 @GetMapping("/items")
	    public String viewItems(
	            @RequestParam(value = "search", required = false) String search,
	            @RequestParam(value = "category", required = false) String category,
	            @RequestParam(value = "type", required = false) String type,
	            @RequestParam(value = "sort", required = false) String sort,
	            Model model) {
		 
		 Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		    User user = (User) principal;
		    List<Item> userItems = ItemService.getItemsByUser(user);

		    // Apply filters only to the items for the current user
		    List<Item> filteredItems = ItemService.filterItems(userItems, search, category, type, sort);
	        List<String> categories = ItemService.getAllCategories();
	        List<String> types = ItemService.getAllTypes();

	        model.addAttribute("items", filteredItems);
	        model.addAttribute("categories", categories);
	        model.addAttribute("types", types);

	        return "show";
	    }
	 
	 @GetMapping("/change-claim-status")
	    public String showChangeClaimStatusPage(@RequestParam("itemId") int itemId, Model model) {
	         
	        
	        // Add itemId and user to the model
	        model.addAttribute("itemId", itemId);
	        
	        
	        return "claim_status"; // Return the name of the JSP file for the change claim status page
	    }
	
	 @PostMapping("/accept-claim-request")
	    public String acceptClaimRequest(@RequestParam("itemId") int itemId,
	                                   
	                                     @RequestParam("enrollmentId") String enrollmentId) {
		 
		 Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		    User owner = (User) principal;
	        // Call the claim service to save the claim details
		 Item item = ItemService.getItemById(itemId);
		User user1 = userRepo.findByEnrollmentId(enrollmentId);
		Claim claim = new Claim(owner,user1,item);
		
	        claimRepo.save(claim);
	        if (item != null) {
	            // Update the status to "claimed"
	            item.setItem_status("claimed");

	            // Save the updated item
	            itemRepo.save(item);
	        }
	        
	        // Redirect to a success page or any other page as needed
	        return "show"; // Assuming you have a success page mapped to "/success"
	    }
}
