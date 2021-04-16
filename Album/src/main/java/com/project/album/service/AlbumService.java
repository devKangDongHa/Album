package com.project.album.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.album.model.InterAlbumDAO;

@Service
public class AlbumService implements InterAlbumService {

	@Autowired
	private InterAlbumDAO dao;
	
}
