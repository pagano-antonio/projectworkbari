package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateCommercialDataRepository;

@Controller
@RequestMapping("/CandidateCommercialDataCtr")
public class CandidateCommercialDataCtr {
	
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;

}
