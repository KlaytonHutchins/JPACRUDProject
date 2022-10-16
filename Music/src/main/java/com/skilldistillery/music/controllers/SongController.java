package com.skilldistillery.music.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceView;

import com.skilldistillery.music.data.SongDAO;
import com.skilldistillery.music.entities.Song;

@Controller
public class SongController {
	
	@Autowired
	private SongDAO songDao;
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("songs", songDao.findAll());
		return "index";
	}
	
	@RequestMapping(path = "show.do")
	public String displaySong(int id, Model model) {
		model.addAttribute("song", songDao.findById(id));
		return "views/showOneSong";
	}
	
	@RequestMapping(path = "showAll.do")
	public String displayAllSongs(Model model) {
		model.addAttribute("songs", songDao.findAll());
		return "views/showAllSongs";
	}
	
	@RequestMapping(path = "updateSong.do", method = RequestMethod.GET)
	public String updateSongForm(int id, Model model) {
		model.addAttribute("song", songDao.findById(id));
		return "views/updateSongForm";
	}
	
	@RequestMapping(path = "updateSong.do", params = {"id","update-title","update-artist","update-featuredArtist","update-remixBy","update-album","update-isSingle","update-genre","update-length","update-releaseYear","update-videoURL","update-albumURL"}, method = RequestMethod.POST)
	public ModelAndView updateSong(@RequestParam("id") String id,
							@RequestParam("update-title") String title,
							@RequestParam("update-artist") String artist,
							@RequestParam("update-featuredArtist") String featuredArtist,
							@RequestParam("update-remixBy") String remixedBy,
							@RequestParam("update-album") String album,
							@RequestParam("update-isSingle") String isSingle,
							@RequestParam("update-genre") String genre,
							@RequestParam("update-length") String length,
							@RequestParam("update-releaseYear") String releaseYear,
							@RequestParam("update-videoURL") String videoURL,
							@RequestParam("update-albumURL") String albumURL) {
		if (isSingle.equals("on")) isSingle = "true";
		ModelAndView mav = new ModelAndView();
		Song song = songDao.findById(Integer.parseInt(id));
		if (!title.isEmpty()) song.setTitle(title);
		if (!artist.isEmpty()) song.setArtist(artist);
		if (!album.isEmpty()) song.setAlbum(album);
		if (!isSingle.isEmpty()) song.setIsSingle(Boolean.parseBoolean(isSingle));
		if (!featuredArtist.isEmpty()) song.setFeaturedArtist(featuredArtist);
		if (!remixedBy.isEmpty()) song.setRemixBy(remixedBy);
		if (!genre.isEmpty()) song.setGenre(genre);
		if (!length.isEmpty()) song.setLengthInSeconds(Integer.parseInt(length));
		if (!releaseYear.isEmpty()) song.setReleaseYear(Integer.parseInt(releaseYear));
		if (!videoURL.isEmpty()) song.setVideoURL(videoURL);
		if (!albumURL.isEmpty()) song.setAlbumURL(albumURL);
		mav.addObject("song", songDao.update(Integer.parseInt(id), song));
		mav.setViewName("views/showOneSong");
		return mav;
	}
	
	@RequestMapping(path = "addSong.do", method = RequestMethod.GET)
	public String addSongForm(Model model) {
		return "views/newSongForm";
	}
	
	@RequestMapping(path = "addSong.do", params = {"make-title","make-artist","make-featuredArtist","make-remixBy","make-album","make-isSingle","make-genre","make-length","make-releaseYear","make-videoURL","make-albumURL"}, method = RequestMethod.POST)
	public ModelAndView addSong(@RequestParam("make-title") String title,
							@RequestParam("make-artist") String artist,
							@RequestParam("make-featuredArtist") String featuredArtist,
							@RequestParam("make-remixBy") String remixedBy,
							@RequestParam("make-album") String album,
							@RequestParam("make-isSingle") String isSingle,
							@RequestParam("make-genre") String genre,
							@RequestParam("make-length") String length,
							@RequestParam("make-releaseYear") String releaseYear,
							@RequestParam("make-videoURL") String videoURL,
							@RequestParam("make-albumURL") String albumURL) {
		if (isSingle.equals("on")) isSingle = "true";
		ModelAndView mav = new ModelAndView();
		Song song = new Song();
		if (!title.isEmpty()) song.setTitle(title);
		else song.setTitle(" ");
		if (!artist.isEmpty()) song.setArtist(artist);
		if (!album.isEmpty()) song.setAlbum(album);
		if (!isSingle.isEmpty()) song.setIsSingle(Boolean.parseBoolean(isSingle));
		else song.setIsSingle(false);
		if (!featuredArtist.isEmpty()) song.setFeaturedArtist(featuredArtist);
		if (!remixedBy.isEmpty()) song.setRemixBy(remixedBy);
		if (!genre.isEmpty()) song.setGenre(genre);
		if (!length.isEmpty()) song.setLengthInSeconds(Integer.parseInt(length));
		if (!releaseYear.isEmpty()) song.setReleaseYear(Integer.parseInt(releaseYear));
		if (!videoURL.isEmpty()) song.setVideoURL(videoURL);
		if (!albumURL.isEmpty()) song.setAlbumURL(albumURL);
		mav.addObject("song", songDao.create(song));
		mav.setViewName("views/showOneSong");
		return mav;
	}
	
	@RequestMapping(path = "deleteSong.do", method = RequestMethod.POST)
	public ModelAndView deleteSong(int id) {
		songDao.delete(id);
		InternalResourceView resourceView = new InternalResourceView("/WEB-INF/index.jsp");
		ModelAndView mav = new ModelAndView(resourceView);
		mav.addObject("songs", songDao.findAll());
		return mav;
	}
	
}
