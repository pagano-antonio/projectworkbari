package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.CandidateSkillRepository;
import com.model.CandidateSkill;

@Controller
@RequestMapping("CandidateSkillCtr")
public class CandidateSkillCtr {
	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	
	@GetMapping("homePage")
	public String homePage() {
		return"homePage";
	}
	
// --------------------------------------------------------------------------------------------------- ADD	
	
	@GetMapping("preAddCandidateSkill")
	public String preAdd(Model model, Integer idCandidate) {
		model.addAttribute("idCandidate", idCandidate);
		return"addCandidateSkill";
	}
	
	@PostMapping("/addCandidateSkill")
	public String add(CandidateSkill candidateSkill, Integer idCandidate) {
		
		candidateSkillRep.save(candidateSkill);
		
		return"success";
	}
	
// --------------------------------------------------------------------------------------------------- FIND BY ID	
	
	@GetMapping("/prefindByIdCandidateSkill")
	public String prefindById() {
		return"findByIdCandidateSkill";
	}
	
	@GetMapping("/findByIdCandidateSkill")
	public String findById(Model model, Integer idCandidateSkill) {
		
		CandidateSkill candidateSkill=new CandidateSkill();
		candidateSkill=candidateSkillRep.findById(idCandidateSkill).get();
		model.addAttribute("candidateSkill", candidateSkill);
		
		return"resCandidateSkill";
	}
	
// ------------------------------------------------------------------------------------ PUT	
	
	@GetMapping("/prePutCandidateSkill")
	public String prePutCandidateSkill(Integer idCandidateSkill, Model model) {
		
		CandidateSkill candidateSkill = candidateSkillRep.findById(idCandidateSkill).get();
		model.addAttribute("candidateSkill", candidateSkill);

		return "updateCandidateSkill";
	}
	
	@PostMapping("/updateCandidateSkill")
	public String put(CandidateSkill candidateSkill, Model model) {
		
		candidateSkillRep.save(candidateSkill);
		
		return"success";
	}
	
// ------------------------------------------------------------------------------------ DELETE	
	
	@GetMapping("/deleteCandidateSkill")
	public String delete(Integer idCandidateSkill, Model model) {
		
		candidateSkillRep.deleteById(idCandidateSkill);
		
		return"success";
	}

}
