package com.ctr;

import java.sql.Date;
import java.util.List;

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

		return "addJobOffer"; // aggiungi jsp

	}

	@PostMapping("/addJobOffer")
	public String add(JobOffer j) {

		jobOfferRep.save(j);

		return "success"; // aggiungi jsp
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




//------------------------------------------------------------------------------------


@GetMapping("/preFindByTitle")
public String preFindByTitle(Model model,String title) {
	
	return "findByTitle";

}

@GetMapping("/findByTitle")
 public String findByTitle(Model model,String title){
	
	List<JobOffer> listJobOffer= jobOfferRep.findByTitle(title);
	
		
		model.addAttribute("Title", title);
		
		return "risultati";//da fare
		
		
	}


//------------------------------------------------------------------------------------

@GetMapping("/preFindByStartEndDate")
public String preFindByStartEndDate(Model model,String title) {
	
	return "findByStartEndDate";

}

@GetMapping("/findByStartEndDate")
 public String findByStartEndDate(Model model,Date startDate, Date endDate){
	
	List<JobOffer> listJobOffer= jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
	
		
		model.addAttribute("StartDate", startDate);
		model.addAttribute("EndDate", endDate);
		return "risultati";//da fare
		
		
	}

//------------------------------------------------------------------------------------

@GetMapping("/preFindByIdCompanyClient")
public String preFindByIdCompanyClient(Model model,String title) {
	
	return "findByIdCompanyClient";

}

@GetMapping("/findByIdCompanyClient")
 public String findByIdCompanyClient(Model model,Integer idCompanyClient){
	
	List<JobOffer> listJobOffer= jobOfferRep.findByCompanyClient_idCompanyClient(idCompanyClient);
	
		
		model.addAttribute("idCompanyClient",idCompanyClient);
		
		return "risultati";//da fare
		
		
	}





}
