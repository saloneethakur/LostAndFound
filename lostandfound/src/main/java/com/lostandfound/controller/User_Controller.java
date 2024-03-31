package com.lostandfound.controller;
import com.lostandfound.services.ItemService;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.lostandfound.entities.Item;
import com.lostandfound.model.LostModel;
import com.lostandfound.model.UserModel;
import com.lostandfound.repositories.ItemRepositories;
import com.lostandfound.services.ItemService;

@Controller
@RequestMapping("/user")
public class User_Controller {

	@Autowired
	private ItemService ItemService;
	
	@Autowired
	private ItemRepositories itemRepo;
	
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
		File fileObj = new File("C:\\Users\\HP\\Desktop\\ccg", uploadFile);
		FileOutputStream fos = new FileOutputStream(fileObj);
		fos.write(arr);
		fos.flush();
		fos.close();		
		String filePath =  fileObj.getAbsolutePath();
		String res = null;
		res = ItemService.saveItem(filePath,lost);
		if(res.equals("file save")) {
			map.addAttribute("msg", "File Upload Successful");
			return "show";
		}else {
			map.addAttribute("errorMsg", "Report not upload successful");
			return "accessDenied";
		}
		
		
	}
	
	
	
}
