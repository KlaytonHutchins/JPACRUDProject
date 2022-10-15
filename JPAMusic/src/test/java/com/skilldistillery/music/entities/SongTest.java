package com.skilldistillery.music.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SongTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Song song;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMusic");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		song = em.find(Song.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		song = null;
	}

	@Test
	void test_Song_entity_mapping() {
		assertNotNull(song);
		assertEquals("Tadow", song.getTitle());
		assertEquals("Masego", song.getArtist());
		assertEquals("Lady Lady", song.getAlbum());
		assertFalse(song.getIsSingle());
		assertEquals("FKJ", song.getFeaturedArtist());
		assertEquals("Electronic/Jazz", song.getGenre());
		assertEquals(301, song.getLengthInSeconds());
		assertEquals(2017, song.getReleaseYear());
		assertEquals("=hC8CH0Z3L54&ab_channel=Fkj", song.getVideoURL());
	}

}
