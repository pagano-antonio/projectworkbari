package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EducationDegreeTypeRepository;
import com.model.EducationDegreeType;

@Controller
@RequestMapping("/EducationDegreeTypeCtr")
public class EducationDegreeTypeCtr {
	
	@Autowired
    private EducationDegreeTypeRepository educationDegreeTypeRep;
	
	 @GetMapping("/homePage")
		public String homePage() {
			return"homePage";
		}

//------------------------------------------------------------------------------------------- ADD 
		
		@GetMapping("/preAddEducationDegreeType")
		public String preAdd() {
			return"";//creare una jsp di preaggiunta
		}
		
		@PostMapping("/addEducationDegreeType")
		public String add(@ModelAttribute EducationDegreeType educationDegreeType) {
			
			educationDegreeTypeRep.save(educationDegreeType);
			
			return"";//creare una jsp di aggiunta 
		}
		
//------------------------------------------------------------------------------------------- FIND
		
		@GetMapping("/prefindByIdEducationDegreeType")
		public String prefindById() {
			return"";//creare una jsp di ricerca per id employee
		}
		
		@GetMapping("/findByIdEducationDegreeType")
		public String findById(Model model, Integer idEducationDegreeType) {
			
			EducationDegreeType educationDegreeType = new EducationDegreeType ();
			educationDegreeType = educationDegreeTypeRep.findById(idEducationDegreeType).get();
			model.addAttribute("EducationDegreeType", educationDegreeType);
			
			return "";//creare e collegare una jsp di successo ricerca
		}
		
//------------------------------------------------------------------------------------------- UPDATE
		
		@PostMapping("/putEducationDegreeType")
		public String put(Model model, EducationDegreeType educationDegreeType) {
			
			educationDegreeTypeRep.save(educationDegreeType);
			
			return "";//creare e collegare una jsp di successo aggiorna
		}
		
//-------------------------------------------------------------------------------------------- DELETE
		
		@GetMapping("/deleteEducationDegreeType")
		public String delete(Model model, Integer idEducationDegreeType) {
			
			educationDegreeTypeRep.deleteById(idEducationDegreeType);
			
			return "";//creare e collegare una jsp di successo elimina
		}

}
