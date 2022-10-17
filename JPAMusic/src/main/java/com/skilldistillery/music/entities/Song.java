package com.skilldistillery.music.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Song {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;

	private String title;

	private String artist;

	private String album;

	@Column(name = "is_single")
	private boolean isSingle;

	@Column(name = "featured_artist")
	private String featuredArtist;

	@Column(name = "remix_by")
	private String remixBy;

	private String genre;

	@Column(name = "length_seconds")
	private int lengthInSeconds;

	@Column(name = "release_year")
	private int releaseYear;

	@Column(name = "video_url")
	private String videoURL;

//	methods ---------------------------------------------------------------------------------------

	public Song() {
	}

	public Song(String title, String artist, String album, boolean isSingle, String featuredArtist, String remixBy,
			String genre, int lengthInSeconds, int releaseYear, String videoURL) {
		super();
		this.title = title;
		this.artist = artist;
		this.album = album;
		this.isSingle = isSingle;
		this.featuredArtist = featuredArtist;
		this.remixBy = remixBy;
		this.genre = genre;
		this.lengthInSeconds = lengthInSeconds;
		this.releaseYear = releaseYear;
		this.videoURL = videoURL;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public boolean getIsSingle() {
		return isSingle;
	}

	public void setIsSingle(boolean isSingle) {
		this.isSingle = isSingle;
	}

	public String getFeaturedArtist() {
		return featuredArtist;
	}

	public void setFeaturedArtist(String featuredArtist) {
		this.featuredArtist = featuredArtist;
	}

	public String getRemixBy() {
		return remixBy;
	}

	public void setRemixBy(String remixBy) {
		this.remixBy = remixBy;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getLengthInSeconds() {
		return lengthInSeconds;
	}

	public void setLengthInSeconds(int lengthInSeconds) {
		this.lengthInSeconds = lengthInSeconds;
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public String getVideoURL() {
		return videoURL;
	}

	public void setVideoURL(String videoURL) {
		this.videoURL = videoURL;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", title=" + title + ", artist=" + artist + ", album=" + album + ", isSingle="
				+ isSingle + ", featuredArtist=" + featuredArtist + ", remixBy=" + remixBy + ", genre=" + genre
				+ ", lengthInSeconds=" + lengthInSeconds + ", releaseYear=" + releaseYear + ", videoURL=" + videoURL
				+ "]";
	}

}
