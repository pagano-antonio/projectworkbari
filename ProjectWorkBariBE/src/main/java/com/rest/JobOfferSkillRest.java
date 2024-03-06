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

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;

@RestController
@RequestMapping("JobOfferSkill")
public class JobOfferSkillRest {

	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;

	@GetMapping("findById/{id}")
	public JobOfferSkill findById(@PathVariable("id") int id) {

		JobOfferSkill resJobOfferSkill = jobOfferSkillRep.findById(id).get();
		return resJobOfferSkill;
	}

	@PostMapping
	public String post(@RequestBody JobOfferSkill j) {
		System.out.println(j.toString());
		jobOfferSkillRep.save(j);
		return "success";
	}

	@PutMapping
	public String put(@RequestBody JobOfferSkill j) {
		jobOfferSkillRep.save(j);
		System.out.println(j.toString() + "uploaded");
		return "success";
	}

	@DeleteMapping("{id}")
	public String delete(@RequestBody JobOfferSkill j) {
		jobOfferSkillRep.delete(j);
		return j + "deleted";
	}

}
