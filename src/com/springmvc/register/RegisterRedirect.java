package com.springmvc.register;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterRedirect 
{
	@RequestMapping("/")
	public String registerRedirect()
	{
		return "homePage";
	}
}
