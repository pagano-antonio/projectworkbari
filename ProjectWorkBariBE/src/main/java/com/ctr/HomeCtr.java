package com.ctr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Home")
public class HomeCtr {

	@GetMapping("")
	public String homePage() {
		return "homePage";
	}
	
}
