package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobInterviewRepository;

@Controller
@RequestMapping("/JobInterviewCtr")
public class JobInterviewCtr {

	@Autowired
	private JobInterviewRepository jobInterviewRep;

}
