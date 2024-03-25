package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.EducationRepository;
import com.model.Education;

@Controller
@RequestMapping("/EducationCtr")
public class EducationCtr {
	 @Autowired
	    private EducationRepository educationRep; 


	 @GetMapping("/homePage")
	    public String homePage(Model model) {
	      return "homePage";

	        }

	//------------------------------------------------------------------------------------

	 @GetMapping("/preAddEducation")
	    public String preAdd (Model model, Integer idCandidate) {
		 	model.addAttribute("idCandidate", idCandidate);
	        return "addEducation";

	    }


	 @PostMapping("/addEducation")
	    public String add(Education e, Integer idCandidate) {

	        educationRep.save(e);

	          return "success";

	    }
	 
	 

	//------------------------------------------------------------------------------------
	
	 
	 @GetMapping("/prefindByIdEducation")
		public String prefindById() {
			return"findByIdEducation ";//creare una jsp di ricerca per id 
		}
		
		@PostMapping("/findByIdEducation")
		public String findById(Model model, Integer idEducation) {
			
			Education e=new Education();
			e=educationRep.findById(idEducation).get();
			model.addAttribute("Education", e);
			
			return "success";
		}
		
		
//------------------------------------------------------------------------------------
	@GetMapping("/preUpdateEducation")
		public String preUpdateEducation(Model model, Integer idEducation) {
			
			Education education = educationRep.findById(idEducation).get();
			model.addAttribute("Education", education);

			return "updateEducation";
	}
		
	@PostMapping("/updateEducation")
		public String putEducation(Education e, Model model) {
			
			educationRep.save(e);
			
			return "success";
		}
		
		
//------------------------------------------------------------------------------------
		
		@GetMapping("/deleteEducation")
		public String delete(Integer idEducation, Model model) {
			
			educationRep.deleteById(idEducation);
			
			return "success";
		}


	 }
