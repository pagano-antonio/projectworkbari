package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.CandidateSkillRepository;
import com.dao.SkillRepository;
import com.model.CandidateSkill;
import com.model.Skill;

@Controller
@RequestMapping("CandidateSkillCtr")
public class CandidateSkillCtr {
	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	
	@Autowired
	private SkillRepository  skillRep;
	
	@GetMapping("homePage")
	public String homePage() {
		return"homePage";
	}
	
// --------------------------------------------------------------------------------------------------- ADD	
	
	@GetMapping("preAddCandidateSkill")
	public String preAdd(Model model, Integer idCandidate) {
		model.addAttribute("idCandidate", idCandidate);
		List<CandidateSkill> listCandidateSkill=(List<CandidateSkill>)candidateSkillRep.findAll();
		model.addAttribute("listCandidateSkill",listCandidateSkill);
		List<Skill> listSkill=(List<Skill>)skillRep.findAll();
		model.addAttribute("listSkill",listSkill);
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
