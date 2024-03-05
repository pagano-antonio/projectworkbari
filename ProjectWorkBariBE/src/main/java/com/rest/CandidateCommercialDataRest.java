package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateCommercialDataRepository;

@RestController
@RequestMapping("CandidateCommercialData")
public class CandidateCommercialDataRest {
	
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;

}
