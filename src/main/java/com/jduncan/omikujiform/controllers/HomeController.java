package com.jduncan.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	// ***** DISPLAY ROUTES *****
	
	// Home page (blank form)
	@GetMapping("/omikuji")
	public String blankForm() {
		return "blankForm.jsp";
	}
	
	// Displays form information after submitting
	@GetMapping("/omikuji/show")
	public String formResults(HttpSession session, Model model) {
		if(session.getAttribute("nummber") == null) {
			return "formResults.jsp";
		} else {
			Integer number = (Integer) session.getAttribute("number");
			String city = (String) session.getAttribute("city");
			String person = (String) session.getAttribute("person");
			String hobby = (String) session.getAttribute("hobby");
			String thing = (String) session.getAttribute("thing");
			String nice = (String) session.getAttribute("nice");
			
			model.addAttribute("number", number);
			model.addAttribute("city", city);
			model.addAttribute("person", person);
			model.addAttribute("hobby", hobby);
			model.addAttribute("thing", thing);
			model.addAttribute("nice", nice);
			
			return "formResults.jsp";
		}
	}
	
	// ***** ACTION ROUTES *****
	@PostMapping("/processForm")
	public String processForm(
			@RequestParam("number") Integer number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("thing") String thing,
			@RequestParam("nice") String nice,
			HttpSession session
			) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		System.out.println("Processing form...");
		return "redirect:/omikuji/show";
	}
	
}
