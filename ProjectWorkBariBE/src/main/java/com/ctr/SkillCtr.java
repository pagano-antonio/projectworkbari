package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.SkillRepository;
import com.model.Skill;





@Controller
@RequestMapping("/SkillCtr")
public class SkillCtr {
	@Autowired
	private SkillRepository skillRep;
	
	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";
	}
//-----------------------------------------------------------
	@GetMapping("/preAddSkill")
	public String preAdd(Model model) {
		return "";
       // return "addSkill";
	
}
	@PostMapping("/addSkill")
	public String add(Skill s) {
		skillRep.save(s);
		return "";
		//return "addSkillSuccess";

	}
//-----------------------------------------------------------
	@GetMapping("/prefindByIdSkill")
	public String prefindById() {
		return"";
	}
	
	@GetMapping("/findByIdSkill")
	public String findById (Model model, Integer idSkill) {
		
		Skill skill =new Skill();
		skill =skillRep.findById(idSkill).get();
		model.addAttribute("Skill", skill);
		
		return "";
	}
	
//--------------------------------------------------------------
	
	@PostMapping("/putSkill")
	public String put(Skill skill, Model model) {
		
		skillRep.save(skill);
		
		return "";
	}
//---------------------------------------------------------------	
	
	@GetMapping("/deleteSkill")
	public String delete(Integer idSkill, Model model) {
		
		skillRep.deleteById(idSkill);
		
		return "";
	}
}
