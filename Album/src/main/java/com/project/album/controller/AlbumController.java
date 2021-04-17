package com.project.album.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.album.service.InterAlbumService;
import com.project.common.FileManager;

@Controller
public class AlbumController {

	@Autowired
	private InterAlbumService service;
	
	@Autowired
	private FileManager fileManager;
	
	@RequestMapping(value="album.com/index")
	public ModelAndView Main(ModelAndView mav, HttpServletRequest request) {
		
		mav.setViewName("index/index.tiles1");
		
		return mav;
		
	}
	
	
}
