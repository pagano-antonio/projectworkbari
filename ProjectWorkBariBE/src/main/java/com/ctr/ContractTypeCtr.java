package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ContractTypeRepository;
@Controller
@RequestMapping("/ContractTypeCtr")
public class ContractTypeCtr {
	 @Autowired
	    private ContractTypeRepository contractTypeRep; 
}
