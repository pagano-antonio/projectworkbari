package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.WorkExperienceRepository;



@RestController
@RequestMapping("WorkExperience")
public class WorkExperienceRest {
	@Autowired
    private WorkExperienceRepository stateJobInterviewRep;
}
