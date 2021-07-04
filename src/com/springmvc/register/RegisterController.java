package com.springmvc.register;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController 
{
	@RequestMapping("/register")
	public String registerPage(Model model)
	{
		model.addAttribute("candidate", new Candidate());
		return "registerPage";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("candidate") Candidate theCandidate, Model model)
	{
		model.addAttribute("candidate", theCandidate);
		return "confirmPage";
	}
}
