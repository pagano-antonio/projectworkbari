package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeTypeRepository;

@Controller
@RequestMapping("/EmployeeTypeCtr")
public class EmployeeTypeCtr {
	
	@Autowired
    private EmployeeTypeRepository employeeTypeRep;

}
