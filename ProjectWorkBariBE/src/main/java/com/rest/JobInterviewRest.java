package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobInterviewRepository;

@RestController
@RequestMapping("JobInterview")
public class JobInterviewRest {
	@Autowired
	private JobInterviewRepository jobInterviewRep;

}
