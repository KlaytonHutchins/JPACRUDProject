package com.skilldistillery.music.data;

import java.util.ArrayList;
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
		em.persist(song);
		return song;
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
	
//	@Override
//	public List<Song> findRandomSongs(int numToGet) {
//		List<Song> songs = new ArrayList<>();
//		int randomNumGen;
//		String query = "SELECT COUNT(s) FROM Song s";
//		long numSongsInDB = em.createQuery(query, Long.class).getSingleResult();
//		if (numToGet > numSongsInDB) {
//			numToGet = (int) numSongsInDB;
//		}
//		int[] indicesCollected = new int[numToGet];
//		for (int i = 0; i < numToGet; i++) {
//			randomNumGen = (int)(Math.random() * numToGet + 1);
//			if 
//			query = "SELECT s FROM Song s";
//			indicesCollected[i] = 
//		}
//		
//		return songs;
//	}

	@Override
	public Song update(int id, Song userSong) {
		Song songBeingUpdated = em.find(Song.class, id);
		if (songBeingUpdated != null) {
			songBeingUpdated.setTitle(userSong.getTitle());
		}
		return songBeingUpdated;
	}

	@Override
	public boolean delete(int id) {
		boolean successfulyDestroyed = false;
		Song songToRemove = em.find(Song.class, id);
		if (songToRemove != null) {
			em.remove(songToRemove);
			successfulyDestroyed = true;
		}
		return successfulyDestroyed;
	}

}
