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
	    public String preAdd (Model model) {

	        return "addEducation";//aggiungi jsp

	    }


	 @PostMapping("/addEducation")
	    public String add(Education e) {

	        educationRep.save(e);

	          return "success";//aggiungi jsp

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
			
			return "success";//creare e collegare una jsp di successo ricerca
		}
		
		
//------------------------------------------------------------------------------------
		
		
		@PostMapping("/putEducation")
		public String put(Education e, Model model) {
			
			educationRep.save(e);
			
			return "";//creare e collegare una jsp di successo aggiorna
		}
		
		
//------------------------------------------------------------------------------------
		
		@GetMapping("/deleteEducation")
		public String delete(Integer idEducation, Model model) {
			
			educationRep.deleteById(idEducation);
			
			return "";//creare e collegare una jsp di successo elimina
		}


	 }
