package com.config;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GestoreEccezioni {

	@ExceptionHandler(value = Exception.class)
	public String handleGlobalException(Exception e, Model model) {
	String msg=e.getMessage();
	e.printStackTrace();
	model.addAttribute("messaggioErrore");
	return "Error";
}
}