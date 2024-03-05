package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobOfferSkillRepository;

@RestController
@RequestMapping("JobOfferSkill")
public class JobOfferSkillRest {

	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;

}
