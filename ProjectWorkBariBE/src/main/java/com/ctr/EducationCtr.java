package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.EducationRepository;

@Controller
@RequestMapping("/EducationCtr")
public class EducationCtr {
	 @Autowired
	    private EducationRepository educationRep; 
}
