package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateSkillRepository;

@RestController
@RequestMapping("CandidateSkill")
public class CandidateSkillRest {
	
	@Autowired
	private CandidateSkillRepository candidateSkillRep;

}
