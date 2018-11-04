package com.dragomir.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("greeting", "Welcome to Web Store!");
		model.addAttribute("tagline", "The one and only amazing webstore");
		return "welcome";
		//return "forward:/welcome/greeting"; // the request with model are the same 
		//return "redirect:/welcome/greeting"; the request with model are new
	}

	@RequestMapping("/welcome/greeting")
	public String greeting() {
		return "welcome";
	}
}