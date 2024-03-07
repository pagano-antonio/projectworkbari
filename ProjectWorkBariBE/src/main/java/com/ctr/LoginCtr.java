package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.LoginRepository;

@Controller
@RequestMapping("/IdEmployeeCtr")
public class LoginCtr {

	 @Autowired
	 private LoginRepository idEmployeeRep; 
}
