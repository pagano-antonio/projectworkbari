package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CanditateRepository;

@Controller
@RequestMapping("/CandidateCtr")
public class CandidateCtr {
	
	@Autowired
	private CanditateRepository candidateRep;

}