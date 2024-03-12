package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;

@Controller
@RequestMapping("/JobOfferSkillCtr")
public class JobOfferSkillCtr {

	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;

//------------------------------------------------------------------------------------

	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";

	}

//------------------------------------------------------------------------------------

	@GetMapping("/preAddJobOfferSkill")
	public String preAdd(Model model) {

		return "addHobOfferSkill"; // aggiungi jsp

	}

	@PostMapping("/addJobOfferSkill")
	public String add(JobOfferSkill j) {

		jobOfferSkillRep.save(j);

		return "success"; // aggiungi jsp
	}

//------------------------------------------------------------------------------------

	@GetMapping("/prefindByIdJobOfferSkill")
	public String prefindByIdJobOfferSkill() {
		return "";// creare una jsp di ricerca per id candidato
	}

	@GetMapping("/findByIdJobOfferSkill")
	public String findByIdJobOfferSkill(Model model, Integer idJobOfferSkill) {

		JobOfferSkill jobOfferSkill = new JobOfferSkill();
		jobOfferSkill = jobOfferSkillRep.findById(idJobOfferSkill).get();
		model.addAttribute("JobOfferSkill", jobOfferSkill);

		return "";// creare e collegare una jsp di successo ricerca
	}

//------------------------------------------------------------------------------------

	@PostMapping("/putJobOfferSkill")
	public String put(JobOfferSkill jobOfferSkill, Model model) {

		jobOfferSkillRep.save(jobOfferSkill);

		return "";// creare e collegare una jsp di successo aggiorna
	}

//------------------------------------------------------------------------------------

	@GetMapping("/deleteJobOfferSkill")
	public String delete(Integer idJobOfferSkill, Model model) {

		jobOfferSkillRep.deleteById(idJobOfferSkill);

		return "";// creare e collegare una jsp di successo elimina
	}

}
