package com.project.album.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.project.album.service.InterAlbumService;
import com.project.common.FileManager;

@Controller
public class AlbumController {

	@Autowired
	private InterAlbumService service;
	
	@Autowired
	private FileManager fileManager;
	
}
