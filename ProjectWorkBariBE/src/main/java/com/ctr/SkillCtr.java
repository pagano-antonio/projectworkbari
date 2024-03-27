package com.ctr;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.JobOfferRepository;
import com.dao.SkillRepository;
import com.model.JobOffer;
import com.model.JobOfferSkill;
import com.model.Skill;





@Controller
@RequestMapping("/SkillCtr")
public class SkillCtr {
	@Autowired
	private SkillRepository skillRep;
	@Autowired
	private JobOfferRepository jobOfferRep;
	
	
	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";
	}
//-----------------------------------------------------------
	@GetMapping("/preAddSkill")
	public String preAdd(Model model, Integer idJobOffer) {
		model.addAttribute("idJobOffer",idJobOffer);
	    return "addSkill";
	
}
	@PostMapping("/addSkill")
	public String add(@RequestParam Integer idJobOffer, Skill s, Model model) {
		System.out.println(idJobOffer);
		JobOfferSkill jobOfferSkill = new JobOfferSkill();
		jobOfferSkill.setJobOffer(jobOfferRep.findById(idJobOffer).get());
		jobOfferSkill.setSkill(s);
		List<JobOfferSkill> listJobOfferSkill = new ArrayList<>();
		listJobOfferSkill.add(jobOfferSkill);
		s.setJobOfferSkills(listJobOfferSkill);
		skillRep.save(s);
		JobOffer jobOffer = new JobOffer();
		List <JobOffer> skillJobOffer = jobOfferRep.findByJobOfferSkills_Skill(s);
		System.out.println("la lista è" + skillJobOffer.size());
		model.addAttribute("JobOffer", jobOffer);
		model.addAttribute("skillJobOffer", skillJobOffer);
	    return "success";

	}
//-----------------------------------------------------------
	@GetMapping("/prefindByIdSkill")
	public String prefindById() {
		return "findByIdSkill";
	}
	
	@GetMapping("/findByIdSkill")
	public String findById (Model model, Integer idSkill) {
		
		Skill skill =new Skill();
		skill =skillRep.findById(idSkill).get();
		model.addAttribute("Skill", skill);
		
		return "success";
	}
	
//--------------------------------------------------------------
	
	@GetMapping("/prePutSkill")
	public String prePutSkill(Integer idSkill, Model model) {
		Skill skill = new Skill();
		skill = skillRep.findById(idSkill).get();
		model.addAttribute("Skill", skill);
		return "updateSkillJobOffer";
	}
	
	@PostMapping("/putSkill")
	public String put(Skill skill, Model model) {
		Skill skillUpdate = skillRep.save(skill);
        model.addAttribute("resSkill", skillUpdate);
		return "successUpdateSkill"; 

		
	}
//---------------------------------------------------------------	
	
	@GetMapping("/deleteSkill")
	public String delete(Integer idSkill, Model model) {
		
		//skillRep.deleteById(idSkill);
		
		return "noDeleteSkill";
	}
	

}



