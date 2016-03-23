package com.bulbcrowding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class homeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap pmap) {
		pmap.addAttribute("message", "Index Page says hi !");
		return "index";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homeUser(ModelMap pmap) {
		pmap.addAttribute("message", "Index Page says hi !");
		return "home";
	}

}
