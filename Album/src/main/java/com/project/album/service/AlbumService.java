package com.project.album.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.album.model.InterAlbumDAO;
import com.project.album.model.PhotoVO;

@Service
public class AlbumService implements InterAlbumService {

	@Autowired
	private InterAlbumDAO dao;

	@Override
	public List<PhotoVO> getAllPhotos() {
		List<PhotoVO> allphotos = dao.getAllPhotos();
		return allphotos;
	}
	
}
