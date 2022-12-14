package com.skilldistillery.music.controllers;

import java.util.ArrayList;
import java.util.List;

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
		song = songDao.create(song);
		model.addAttribute("song", song);
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
	
	@RequestMapping(path = "showNext.do")
	public String displayNextSong(int id, Model model) {
		List<Song> all = songDao.findAll();
		int max = all.get(all.size()-1).getId();
		id++;
		while (songDao.findById(id) == null) {
			id++;
			if (id > max) {
				id = 1;
			}
		}
		model.addAttribute("song", songDao.findById(id));
		return "views/showOneSong";
	}
	
	@RequestMapping(path = "showPrevious.do")
	public String displayPreviousSong(int id, Model model) {
		List<Song> all = songDao.findAll();
		int max = all.get(all.size()-1).getId();
		id--;
		while (songDao.findById(id) == null) {
			id--;
			if (id < 0) {
				id = max;
			}
		}
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
