package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.WorkExperienceRepository;



@Controller
@RequestMapping("/WorkExperienceCtr")
public class WorkExperienceCtr {
	@Autowired
	private WorkExperienceRepository workExperienceRep;
}
