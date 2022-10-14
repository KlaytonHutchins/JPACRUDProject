package com.skilldistillery.music.data;

import java.util.List;

import com.skilldistillery.music.entities.Song;

public interface SongDAO {
	
	Song create(Song song);
	
	List<Song> findAll();
	
	Song findById(int id);
	
	Song update(int id, Song song);
	
	boolean delete(int id);
	
}
