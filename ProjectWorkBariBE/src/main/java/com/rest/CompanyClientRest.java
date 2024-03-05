package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CompanyClientRepository;

@RestController
@RequestMapping("CompanyClient")
public class CompanyClientRest {

	 @Autowired
	    private CompanyClientRepository companyClientRep; 
}
