package com.ctr;


import java.sql.Date;
import java.util.List;

import java.util.ArrayList;


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
		return "findByIdJobOffer";// creare una jsp di ricerca per id candidato
	}

	@GetMapping("/findByIdJobOffer")
	public String findByIdJobOffer(Model model, Integer idJobOffer) {

		JobOffer jobOffer = new JobOffer();
		jobOffer = jobOfferRep.findById(idJobOffer).get();
		model.addAttribute("JobOffer", jobOffer);

		return "resJobOffer";// creare e collegare una jsp di successo ricerca
	}

//------------------------------------------------------------------------------------

	@GetMapping("/prePutJobOffer")
	public String prePutJobOffer(Integer idJobOffer, Model model) {
		JobOffer jobOffer = new JobOffer();
		jobOffer = jobOfferRep.findById(idJobOffer).get();
		model.addAttribute("JobOffer", jobOffer);
		return "updateJobOffer";
	}
	
	@PostMapping("/putJobOffer")
	public String put(JobOffer jobOffer, Model model) {
		
        jobOfferRep.save(jobOffer);

		return "success";// creare e collegare una jsp di successo aggiorna
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
	
	List<JobOffer> listJobOffer= (List<JobOffer>)jobOfferRep.findByTitle(title);
	
	    model.addAttribute("listJobOffer", listJobOffer);
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
	
	List<JobOffer> listJobOffer= (List<JobOffer>)jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
	
	    model.addAttribute("listJobOffer", listJobOffer);
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
	
	List<JobOffer> listJobOffer=(List<JobOffer>)jobOfferRep.findByCompanyClient_idCompanyClient(idCompanyClient);
	
	    model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("idCompanyClient",idCompanyClient);
		
		return "risultati";//da fare
		
		
	}






//-------------------------------------------------------------------------------
	@GetMapping("/prefindByMinRalAfterAndMaxRalBefore")
	public String prefindByMinRalAfterAndMaxRalBefore() {
		return "findByMinRalAfterAndMaxRalBefore";
	}

	@GetMapping("/findByMinRalAfterAndMaxRalBefore")
	public String findByMinRalAfterAndMaxRalBefore(Model model, Integer minRal, Integer maxRal) {

		ArrayList<JobOffer> listJobOffer = (ArrayList<JobOffer>) jobOfferRep.findByMinRalAfterAndMaxRalBefore(minRal, maxRal);
		model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("minRal", minRal);
		model.addAttribute("maxRal", maxRal);
		
	    return "resJobOffer";
	}
//-------------------------------------------------------------------------------
	@GetMapping("/prefindByJobOfferSkills_Skill_Title")
	public String prefindByJobOfferSkills_Skill_Title () {
		return "findByJobOfferSkills_Skill_Title";
	}

	@GetMapping("/findByJobOfferSkills_Skill_Title")
	public String findByJobOfferSkills_Skill_Title(Model model,String title) {

		ArrayList<JobOffer> listJobOffer = (ArrayList<JobOffer>) jobOfferRep.findByJobOfferSkills_Skill_Title(title);
		model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("title", title);
		
	    return "resJobOffer";
	}
}
