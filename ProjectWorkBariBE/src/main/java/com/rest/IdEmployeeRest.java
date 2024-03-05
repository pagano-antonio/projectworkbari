package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.IdEmployeeRepository;

@RestController
@RequestMapping("IdEmployee")
public class IdEmployeeRest {
	
	@Autowired
    private IdEmployeeRepository idEmployeeRep; 

}
