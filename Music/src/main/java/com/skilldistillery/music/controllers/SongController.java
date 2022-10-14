package com.skilldistillery.music.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
}
