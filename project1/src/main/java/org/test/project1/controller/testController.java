package org.test.project1.controller;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.test.project1.service.FileUploadService;

@Controller
public class testController {

//	@Autowired
//	FileUploadService fileUploadService;
//	
//	@GetMapping(value="/form")
//	public String fileUpload() {
//		return "/upload/form";
//	}
//	
//	@PostMapping(value="/upload")
//	public String fileReult(
//			Model model,
//			@RequestParam("email") String email,
//			@RequestParam("file1") MultipartFile file) {
//		String url = fileUploadService.restore(file);
//		model.addAttribute("url", url);
//		return "/upload/result";
//	}
}
