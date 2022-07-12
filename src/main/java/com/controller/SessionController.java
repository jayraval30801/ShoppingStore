package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SessionController {

		@GetMapping("/")
		public String welcome()
		{
			return "welcome";
		}
		@GetMapping("/signup")
		public String signup()
		{
			return "Signup";
		}
		@GetMapping("/login")
		public String login()
		{
			return "Login";
		}
		
		
}
