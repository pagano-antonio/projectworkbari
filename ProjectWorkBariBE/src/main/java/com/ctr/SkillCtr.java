package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.SkillRepository;



@Controller
@RequestMapping("/SkillCtr")
public class SkillCtr {
	@Autowired
	private SkillRepository skillRep;

}
