package com.ctr;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobOfferSkillRepository;
import com.dao.SkillRepository;
import com.model.JobOffer;
import com.model.JobOfferSkill;
import com.model.Skill;

@Controller
@RequestMapping("/JobOfferSkillCtr")
public class JobOfferSkillCtr {

	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	@Autowired
	private SkillRepository skillRep;


//------------------------------------------------------------------------------------

	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";

	}

//------------------------------------------------------------------------------------

	@GetMapping("/preAddJobOfferSkill")
	public String preAdd(Model model, Integer idJobOffer) {
		
		model.addAttribute("idJobOffer", idJobOffer);
		List <Skill> listSkill = (List<Skill>)skillRep.findAll();
		model.addAttribute("listSkill", listSkill);
		
		return "addJobOfferSkill"; 

	}

	@PostMapping("/addJobOfferSkill")
	public String add(JobOfferSkill jobOfferSkill, Model model, Integer idJobOffer, Integer idSkill) {
		//qui abbiamo dovuto settare skill e job offer perchè si riferisce ad altre tabelle
		Skill s = new Skill ();
		s.setIdSkill(idSkill);
		jobOfferSkill.setSkill(s);
		
		JobOffer job = new JobOffer();
		job.setIdJobOffer(idJobOffer);
		jobOfferSkill.setJobOffer(job);
		
       jobOfferSkillRep.save(jobOfferSkill);

		return "success"; 
	}

//------------------------------------------------------------------------------------

	@GetMapping("/prefindByIdJobOfferSkill")
	public String prefindByIdJobOfferSkill() {
		return "findByIdJobOfferSkill";// creare una jsp di ricerca per id candidato
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
