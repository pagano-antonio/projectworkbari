package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.dao.ContractTypeRepository;

@RestController
@RequestMapping("ContractType")
public class ContractTypeRest {

	@Autowired
    private ContractTypeRepository contractTypeRep; 
}
