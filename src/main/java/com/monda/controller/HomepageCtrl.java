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
	@RequestMapping("/index")
	public String index2() {
		System.out.println("index2 method()");
		return "/static/features/home/index.html";
	}
	
	@RequestMapping("/test")
	public String testPage() {
		return "/static/features/home/test.html";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/static/features/login/login.html";
	}
	@RequestMapping("/quote")
	public String quote() {
		return "/static/features/quote/quote.html";
	}
	
}
