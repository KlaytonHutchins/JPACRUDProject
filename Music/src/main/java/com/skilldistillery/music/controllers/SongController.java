package com.skilldistillery.music.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(path = "updateSong.do", method = RequestMethod.POST)
	public String updateSong(int id, Model model) {
		Song song = null;
		model.addAttribute("song", songDao.update(id, song));
		return "views/showOneSong";
	}
	
	@RequestMapping(path = "addSong.do", method = RequestMethod.GET)
	public String addSongForm(Model model) {
		return "views/newSongForm";
	}
	
	@RequestMapping(path = "addSong.do", method = RequestMethod.POST)
	public String addSong(Model model) {
		Song song = null;
		model.addAttribute("song", songDao.create(song));
		return "views/showOneSong";
	}
	
	@RequestMapping(path = "deleteSong.do", method = RequestMethod.POST)
	public String deleteSong(int id, Model model) {
		songDao.delete(id);
		return "home.do";
	}
	
}
