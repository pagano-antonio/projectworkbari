package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.WorkExperienceRepository;
import com.model.WorkExperience;



@Controller
@RequestMapping("/WorkExperienceCtr")
public class WorkExperienceCtr {
	@Autowired
	private WorkExperienceRepository workExperienceRep;
	
	@GetMapping("/homePage")
	public String home(Model model) {
		System.out.println("hello");
		return "homePage";
	}
//-------------------------------------------------------
	
	@GetMapping("/preAddWorkExperience")
	public String preAdd(Model model, Integer idCandidate) {
		model.addAttribute("idCandidate", idCandidate);
        return "addWorkExperience";
	
}
	@PostMapping("/addWorkExperience")
	public String add(WorkExperience w) {
		workExperienceRep.save(w);
		return "success";

	}
//--------------------------------------------------------
	@GetMapping("/prefindByIdWorkExperience")
	public String prefindById() {
		return"";
	}
	
	@GetMapping("/findByIdWorkExperience")
	public String findById (Model model, Integer idWorkExperience) {
		
		WorkExperience workExperience =new WorkExperience();
		workExperience =workExperienceRep.findById(idWorkExperience).get();
		model.addAttribute("WorkExperience", workExperience);
		
		return "";
	}
//--------------------------------------------------------
	@GetMapping("/prePutWorkExperience")
	public String prePutWorkExperience(Model model, Integer idWorkExperience) {
		
		WorkExperience workExperience =new WorkExperience();
		workExperience =workExperienceRep.findById(idWorkExperience).get();
		model.addAttribute("WorkExperience", workExperience);
		return"updateWorkExperience";
	}
	
	
	@PostMapping("/updateWorkExperience")
	public String put(WorkExperience workExperience, Model model) {
		
		workExperienceRep.save(workExperience);
		
		return "success";
	}
//--------------------------------------------------------
	@GetMapping("/deleteWorkExperience")
	public String delete(Integer idWorkExperience, Model model) {
		
		workExperienceRep.deleteById(idWorkExperience);
		
		return "";
	}
}
