package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobOfferRepository;
import com.model.JobOffer;

@Controller
@RequestMapping("/JobOfferCtr")
public class JobOfferCtr {

	@Autowired
	private JobOfferRepository jobOfferRep;

//------------------------------------------------------------------------------------

	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";

	}

//------------------------------------------------------------------------------------

	@GetMapping("/preAddJobOffer")
	public String preAdd(Model model) {

		return ""; // aggiungi jsp

	}

	@PostMapping("/addJobOffer")
	public String add(JobOffer j) {

		jobOfferRep.save(j);

		return ""; // aggiungi jsp
	}

//------------------------------------------------------------------------------------

	@GetMapping("/prefindByIdJobOffer")
	public String prefindByIdJobOffer() {
		return "";// creare una jsp di ricerca per id candidato
	}

	@GetMapping("/findByIdJobOffer")
	public String findByIdJobOffer(Model model, Integer idJobOffer) {

		JobOffer jobOffer = new JobOffer();
		jobOffer = jobOfferRep.findById(idJobOffer).get();
		model.addAttribute("JobOffer", jobOffer);

		return "";// creare e collegare una jsp di successo ricerca
	}

//------------------------------------------------------------------------------------

	@PostMapping("/putJobOffer")
	public String put(JobOffer jobOffer, Model model) {

		jobOfferRep.save(jobOffer);

		return "";// creare e collegare una jsp di successo aggiorna
	}

//------------------------------------------------------------------------------------

	@GetMapping("/deleteJobOffer")
	public String delete(Integer idJobOffer, Model model) {

		jobOfferRep.deleteById(idJobOffer);

		return "";// creare e collegare una jsp di successo elimina
	}

}
