package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.SkillRepository;



@RestController
@RequestMapping("Skill")
public class SkillRest {
	@Autowired
    private SkillRepository skillRep;

}
