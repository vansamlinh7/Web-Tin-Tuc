package com.thoidaimoi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thoidaimoi.service.TinTucService;

@Controller
public class SeachController {
	@Autowired
	private TinTucService tinTucService ;
	
	  @RequestMapping(value="/search")
	    public ModelAndView Search(@RequestParam(value = "searchTerm", required = false) 
	    String pSearchTerm, HttpServletRequest request, HttpServletResponse response) {
	        ModelAndView mav = new ModelAndView("search");

	       mav.addObject("searchTerm", pSearchTerm);
	       mav.addObject("searchResult", tinTucService.findTeamByName(pSearchTerm));      
	       
	     return mav;
	   }
}
