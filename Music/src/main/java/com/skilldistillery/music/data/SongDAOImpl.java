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
	
	@Override
	public List<Song> findRandomSongs(int numToGet) {
		List<Song> songs = findAll();
		List<Song> resultList = new ArrayList<>();
		List<Integer> resultIds = new ArrayList<>();
		int numSongsInDB = songs.size();
		if (numToGet > numSongsInDB) {
			numToGet = numSongsInDB;
		}
		while (numToGet > resultList.size()) {
			int randomNumGen = (int)(Math.random() * numSongsInDB + 1);
			if (!resultIds.contains(randomNumGen) && this.findById(randomNumGen) != null) {
				try {
					resultList.add(this.findById(randomNumGen));
					resultIds.add(randomNumGen);
				} catch (NullPointerException npe) {
				}
			}
		}
		return resultList;
	}
	
	@Override
	public List<Song> findSongsBySearch(String search) {
		String query = "SELECT s FROM Song s WHERE s.title LIKE :title OR s.artist LIKE :artist OR s.album LIKE :album";
		return em.createQuery(query, Song.class).setParameter("title", search).setParameter("artist", search).setParameter("album", search).getResultList();
	}

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
