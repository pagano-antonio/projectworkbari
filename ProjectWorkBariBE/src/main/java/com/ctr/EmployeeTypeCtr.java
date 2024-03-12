package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeTypeRepository;
import com.model.EmployeeType;

@Controller
@RequestMapping("/EmployeeTypeCtr")
public class EmployeeTypeCtr {
	
	@Autowired
    private EmployeeTypeRepository employeeTypeRep;
	
	 @GetMapping("/homePage")
		public String homePage() {
			return"homePage";
		}

//------------------------------------------------------------------------------------------- ADD 
		
		@GetMapping("/preAddEmployeeType")
		public String preAdd() {
			return"addEmployeeType";//creare una jsp di preaggiunta
		}
		
		@PostMapping("/addEmployeeType")
		public String add(@ModelAttribute EmployeeType employeeType) {
			
			employeeTypeRep.save(employeeType);
			
			return"success";//creare una jsp di aggiunta 
		}
		
//------------------------------------------------------------------------------------------- FIND
		
		@GetMapping("/prefindByIdEmployeeType")
		public String prefindById() {
			return"";//creare una jsp di ricerca per id employee
		}
		
		@GetMapping("/findByIdEmployeeType")
		public String findById(Model model, Integer idEmployeeType) {
			
			EmployeeType employeeType = new EmployeeType ();
			employeeType = employeeTypeRep.findById(idEmployeeType).get();
			model.addAttribute("EmployeeType", employeeType);
			
			return "";//creare e collegare una jsp di successo ricerca
		}
		
//------------------------------------------------------------------------------------------- UPDATE
		
		@PostMapping("/putEmployeeType")
		public String put(Model model, EmployeeType employeeType) {
			
			employeeTypeRep.save(employeeType);
			
			return "";//creare e collegare una jsp di successo aggiorna
		}
		
//-------------------------------------------------------------------------------------------- DELETE
		
		@GetMapping("/deleteEmployeeType")
		public String delete(Model model, Integer idEmployeeType) {
			
			employeeTypeRep.deleteById(idEmployeeType);
			
			return "";//creare e collegare una jsp di successo elimina
		}

}
