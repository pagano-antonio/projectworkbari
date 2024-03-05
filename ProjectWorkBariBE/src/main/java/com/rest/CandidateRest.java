package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CanditateRepository;

@RestController
@RequestMapping("Candidate")
public class CandidateRest {
	
	@Autowired
	private CanditateRepository candidateRep;

}
