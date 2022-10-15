package com.skilldistillery.music.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.music.data.SongDAO;

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
	
}
