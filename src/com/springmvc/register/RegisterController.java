package com.springmvc.register;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String processForm(@Valid @ModelAttribute("candidate") Candidate theCandidate,
							  BindingResult bindingResult,
							  Model model)
	{
		if(bindingResult.hasErrors())
		{
			return "registerPage";
		}
		model.addAttribute("candidate", theCandidate);
		return "confirmPage";
	}
}
