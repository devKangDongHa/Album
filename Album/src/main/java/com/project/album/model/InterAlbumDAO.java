package com.project.album.model;

import java.util.List;

public interface InterAlbumDAO {

	// 메인 페이지용 모든 사진 가져오기
	List<PhotoVO> getAllPhotos();

}
