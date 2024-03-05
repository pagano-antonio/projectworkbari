package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.StateJobInterviewRepository;

@Controller
@RequestMapping("/StateJobInterviewCtr")
public class StateJobInterviewCtr {
	@Autowired
	private StateJobInterviewRepository stateJobInterviewRep;
}
