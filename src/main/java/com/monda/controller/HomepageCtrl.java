package com.monda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomepageCtrl {

	@RequestMapping("/")
	public String index() {
		System.out.println("index method();");
		return "/static/features/home/index.html";
	}
	
}
