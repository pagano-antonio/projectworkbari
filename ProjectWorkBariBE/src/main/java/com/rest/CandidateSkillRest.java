package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateSkillRepository;
import com.model.CandidateSkill;

@RestController
@RequestMapping("CandidateSkill")
public class CandidateSkillRest {

	@Autowired
	private CandidateSkillRepository candidateSkillRep;

	@GetMapping("findById/{idCandidateSkill}")
	public CandidateSkill findById(@PathVariable("idCandidateSkill") int idCandidateSkill) {

		CandidateSkill resCandidateSkill = candidateSkillRep.findById(idCandidateSkill).get();
		return resCandidateSkill;
	}

	@PostMapping
	public String post(@RequestBody CandidateSkill cs) {

		System.out.println(cs.toString());
		return "success";
	}

	@PutMapping
	public String put(@RequestBody CandidateSkill cs) {

		candidateSkillRep.save(cs);
		System.out.println(cs.toString() + "uploaded");
		return "success";

	}

	@DeleteMapping("{idCandidateSkill}")
	public String delete(@RequestBody CandidateSkill cs) {

		candidateSkillRep.delete(cs);
		return cs + "deleted";
	}

}
