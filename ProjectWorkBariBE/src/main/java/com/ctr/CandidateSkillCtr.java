package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@GetMapping("preAddCandidateSkill")
	public String preAdd() {
		return"addCandidateSkill";//creare una jsp di preaggiunta
	}
	
	@PostMapping("/addCandidateSkill")
	public String add(@ModelAttribute CandidateSkill candidateSkill) {
		
		candidateSkillRep.save(candidateSkill);
		
		return"success";//creare e collegare una jsp di aggiunta candidateSkill
	}
	
	@GetMapping("/prefindByIdCandidateSkill")
	public String prefindById() {
		return"";//creare una jsp di ricerca per idCandidateSkill
	}
	
	@GetMapping("/findByIdCandidateSkill")
	public String findById(Model model, Integer idCandidateSkill) {
		
		CandidateSkill candidateSkill=new CandidateSkill();
		candidateSkill=candidateSkillRep.findById(idCandidateSkill).get();
		model.addAttribute("candidateSkill", candidateSkill);
		
		return"";//creare e collegare jsp di successo ricerca
	}
	
	@PostMapping("/putCandidateSkill")
	public String put(CandidateSkill candidateSkill, Model model) {
		
		candidateSkillRep.save(candidateSkill);
		
		return"";//creare e collegare jsp di successo aggiorna
	}
	
	@GetMapping("/deleteCandidateSkill")
	public String delete(Integer idCandidateSkill, Model model) {
		
		candidateSkillRep.deleteById(idCandidateSkill);
		
		return"";//creare e collegare jsp di successo elimina
	}

}
