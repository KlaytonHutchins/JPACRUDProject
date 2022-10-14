package com.skilldistillery.music.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.music.entities.Song;

@Service
@Transactional
public class SongDAOImpl implements SongDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Song create(Song song) {
		
		return null;
	}
	
	@Override
	public List<Song> findAll() {
		String query = "SELECT s FROM Song s";
		return em.createQuery(query, Song.class).getResultList();
	}

	@Override
	public Song findById(int id) {
		return em.find(Song.class, id);
	}

	@Override
	public Song update(int id, Song song) {
		
		return null;
	}

	@Override
	public boolean delete(int id) {
		
		return false;
	}

}
