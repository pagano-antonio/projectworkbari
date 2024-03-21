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


@Controller //questa classe gestisce request e dovrà fornire response(jsp,html).
@RequestMapping("/JobOfferCtr")
public class JobOfferCtr {

	@Autowired
	private JobOfferRepository jobOfferRep;

//------------------------------------------------------------------------------------

	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";

	}
	
// --------------------------------------------------------------------------------------- CHOOSE KEYWORD
	
	@GetMapping("/chooseFindKeyword")
	public String chooseFindKeyword(String find) {
		String resultPage = "";
		
		switch (find) {
		case "title":
			resultPage = this.preFindByTitle();
			break;
		
		case "date":
			resultPage = this.preFindByStartEndDate();
			break;
			
		case "companyClient":
			resultPage = this.preFindByIdCompanyClient();
			break;
			
		case "ral":
			resultPage = this.prefindByMinRalAfterAndMaxRalBefore();
			break;
			
		case "contractType":
			resultPage = this.preFindByContractType();
			break;
			
		case "skill":
			resultPage = this.prefindByJobOfferSkills_Skill_Title();
			break;
		}
		return resultPage;
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

		return "success";
	}


//------------------------------------------------------------------------------------


@GetMapping("/preFindByTitle")
public String preFindByTitle() {
	
	return "findByTitle";

}

@GetMapping("/findByTitle")
 public String findByTitle(Model model,String title){
	
	List<JobOffer> listJobOffer= (List<JobOffer>)jobOfferRep.findByTitle(title);
	
		
		
	    model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("Title", title);
		
		return "resJobOffer";	
	}


//------------------------------------------------------------------------------------

@GetMapping("/preFindByStartEndDate")
public String preFindByStartEndDate() {
	
	return "findByStartEndDate";

}

@GetMapping("/findByStartEndDate")
 public String findByStartEndDate(Model model,Date startDate, Date endDate){
	
	List<JobOffer> listJobOffer= (List<JobOffer>)jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
	
	    model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("StartDate", startDate);
		model.addAttribute("EndDate", endDate);
		return "resJobOffer";
		
		
	}

//------------------------------------------------------------------------------------

@GetMapping("/preFindByIdCompanyClient")
public String preFindByIdCompanyClient() {
	
	return "findByIdCompanyClient";

}

@GetMapping("/findByIdCompanyClient")
 public String findByIdCompanyClient(Model model,Integer idCompanyClient){
	
	List<JobOffer> listJobOffer=(List<JobOffer>)jobOfferRep.findByCompanyClient_idCompanyClient(idCompanyClient);
	
	    model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("idCompanyClient",idCompanyClient);
		
		return "resJobOffer";
		
	}


//-------------------------------------------------------------------------------
	@GetMapping("/prefindByRal")
	public String prefindByMinRalAfterAndMaxRalBefore() {
		return "findByRal";
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
	@GetMapping("/preFindByContractType")
	public String preFindByContractType() {
		return "findByContractType";	
	}
	
	@PostMapping("/findByContractType")
	public String findByContractType (Model model, Integer idContractType) {
		
		ArrayList<JobOffer> listJobOffer = (ArrayList<JobOffer>) jobOfferRep.findByContractType_idContractType(idContractType);
		model.addAttribute("listJobOffer", listJobOffer);
		return "resJobOffer";
	}
	
//-------------------------------------------------------------------------------
	@GetMapping("/prefindByJobOfferSkills_Skill_Title")
	public String prefindByJobOfferSkills_Skill_Title () {
		return "findBySkillTitle";
	}

	@PostMapping("/findBySkillTitle")
	public String findByJobOfferSkills_Skill_Title(Model model, String title) {

		ArrayList<JobOffer> listJobOffer = (ArrayList<JobOffer>) jobOfferRep.findByJobOfferSkills_Skill_Title(title);
		model.addAttribute("listJobOffer", listJobOffer);
		model.addAttribute("title", title);
		
	    return "resJobOffer";
	}
}
