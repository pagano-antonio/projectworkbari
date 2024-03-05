package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobOfferRepository;

@Controller
@RequestMapping("/JobOfferCtr")
public class JobOfferCtr {

	@Autowired
	private JobOfferRepository jobOfferRep;

}
