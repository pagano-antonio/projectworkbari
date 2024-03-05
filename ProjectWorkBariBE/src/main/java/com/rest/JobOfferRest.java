package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobOfferRepository;

@RestController
@RequestMapping("JobOffer")
public class JobOfferRest {

	@Autowired
	private JobOfferRepository jobOfferRep;

}
