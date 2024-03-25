package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobInterviewRepository;
import com.model.JobInterview;

@Controller
@RequestMapping("/JobInterviewCtr")
public class JobInterviewCtr {

	@Autowired
	private JobInterviewRepository jobInterviewRep;

//------------------------------------------------------------------------------------	

	@GetMapping("/homePage")
	public String homePage(Model model) {
		return "homePage";

	}

//------------------------------------------------------------------------------------	

	@GetMapping("/preAddJobInterview")
	public String preAdd(Model model, Integer idCandidate) {
		model.addAttribute("idCandidate", idCandidate);
		return "addJobInterview";

	}

	@PostMapping("/addJobInterview")
	public String add(JobInterview j, Integer idCandidate) {

		jobInterviewRep.save(j);

		return "success";
	}

//------------------------------------------------------------------------------------

	@GetMapping("/prefindByIdJobInterview")
	public String prefindByIdJobInterview() {
		return "findByIdJobInterview";// creare una jsp di ricerca per id candidato
	}

	@GetMapping("/findByIdJobInterview")
	public String findByIdJobInterview(Model model, Integer idJobInterview) {

		JobInterview jobInterview = new JobInterview();
		jobInterview = jobInterviewRep.findById(idJobInterview).get();
		model.addAttribute("JobInterview", jobInterview);

		return "";// creare e collegare una jsp di successo ricerca
	}

//------------------------------------------------------------------------------------	
	@GetMapping("/preUpdateJobInterview")
	public String preUpdateJobInterview (Model model, Integer idJobInterview) {
		
		JobInterview jobInterview = jobInterviewRep.findById(idJobInterview).get();
		model.addAttribute("Interview", jobInterview);

		return "updateJobInterview";
	}
	
	
	
	@PostMapping("/updateJobInterview")
	public String put(JobInterview jobInterview, Model model) {

		jobInterviewRep.save(jobInterview);

		return "success";
	}

//------------------------------------------------------------------------------------		

	@GetMapping("/deleteJobInterview")
	public String delete(Integer idJobInterview, Model model) {

		jobInterviewRep.deleteById(idJobInterview);

		return "success";
	}

}
