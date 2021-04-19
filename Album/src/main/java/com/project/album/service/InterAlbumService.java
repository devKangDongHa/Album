package com.project.album.service;

import java.util.List;

import com.project.album.model.PhotoVO;

public interface InterAlbumService {

	// 메인 페이지용 모든 사진 가져오기
	List<PhotoVO> getAllPhotos();

}
