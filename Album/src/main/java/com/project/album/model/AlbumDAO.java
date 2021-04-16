package com.project.album.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AlbumDAO implements InterAlbumDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
}
