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
	
	@RequestMapping(path = "addSong.do", method = RequestMethod.GET)
	public String addSongForm(Model model) {
		return "views/newSongForm";
	}
	
	@RequestMapping(path = "addSong.do", method = RequestMethod.POST)
	public String addSong(Song song, Model model) {
		model.addAttribute("song", songDao.create(song));
		return "views/showOneSong";
	}
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("songs", songDao.findRandomSongs(5));
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
	
	@RequestMapping(path = "search.do", params = {"search"})
	public String displaySearchedSongs(@RequestParam("search") String search, Model model) {
		model.addAttribute("songs", songDao.findSongsBySearch(search));
		return "views/showAllSongs";
	}
	
	@RequestMapping(path = "updateSong.do", method = RequestMethod.GET)
	public String updateSongForm(int id, Model model) {
		model.addAttribute("song", songDao.findById(id));
		return "views/updateSongForm";
	}
	
	@RequestMapping(path = "updateSong.do", method = RequestMethod.POST)
	public String updateSong(Song song, Model model) {
		song = songDao.update(song.getId(), song);
		model.addAttribute("song", song);
		return "views/showOneSong";
	}
	
	@RequestMapping(path = "deleteSong.do", method = RequestMethod.POST)
	public ModelAndView deleteSong(int id) {
		songDao.delete(id);
		InternalResourceView resourceView = new InternalResourceView("/WEB-INF/index.jsp");
		ModelAndView mav = new ModelAndView(resourceView);
		mav.addObject("songs", songDao.findRandomSongs(5));
		return mav;
	}
	
}
