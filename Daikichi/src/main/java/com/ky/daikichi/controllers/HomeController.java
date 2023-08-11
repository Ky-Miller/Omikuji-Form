package com.ky.daikichi.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@GetMapping("/omikuji")
	public String omikujiform() {
		return "postForm/omikujiForm.jsp";
	}
	
	@PostMapping("/omikuji/submit")
	public String submit(
			@RequestParam(value="number") Integer number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="goal") String goal,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="complement") String complement,
			HttpSession session) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("goal", goal);
		session.setAttribute("thing", thing);
		session.setAttribute("complement", complement);
		return "redirect:/omikuji/result";
	}
	
	@GetMapping("/omikuji/result")
	public String viewOmikuji() {
		return "postForm/omikuji.jsp";
	}
    
}
