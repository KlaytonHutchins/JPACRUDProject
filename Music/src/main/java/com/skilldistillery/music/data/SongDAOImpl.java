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
		int[] songIds = new int[songs.size()];
		for (int i = 0; i < songs.size(); i++) {
			songIds[i] = songs.get(i).getId();
		}
		if (numToGet > songs.size()) {
			numToGet = songs.size();
		}
		while (numToGet > resultList.size()) {
			int randomNumGen = (int)(Math.random() * songIds[songIds.length-1] + songIds[0]);
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
		return em.createQuery(query, Song.class).setParameter("title", "%"+search+"%").setParameter("artist", "%"+search+"%").setParameter("album", "%"+search+"%").getResultList();
	}

	@Override
	public Song update(int id, Song userSong) {
		Song dbSong = em.find(Song.class, id);
		dbSong.setTitle(userSong.getTitle());
		dbSong.setArtist(userSong.getArtist());
		dbSong.setAlbum(userSong.getAlbum());
		dbSong.setIsSingle(userSong.getIsSingle());
		dbSong.setFeaturedArtist(userSong.getFeaturedArtist());
		dbSong.setRemixBy(userSong.getRemixBy());
		dbSong.setGenre(userSong.getGenre());
		dbSong.setLengthInSeconds(userSong.getLengthInSeconds());
		dbSong.setReleaseYear(userSong.getReleaseYear());
		dbSong.setVideoURL(userSong.getVideoURL());
		em.persist(dbSong);
		return dbSong;
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
