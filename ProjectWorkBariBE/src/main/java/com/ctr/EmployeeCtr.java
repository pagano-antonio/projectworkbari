package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeRepository;
import com.model.Employee;

@Controller
@RequestMapping("/EmployeeCtr")
public class EmployeeCtr {

	 @Autowired
	 private EmployeeRepository employeeRep; 
	 
	 @GetMapping("/homePage")
		public String homePage() {
			return"homePage";
		}

//------------------------------------------------------------------------------------------- ADD 
		
		@GetMapping("/preAddEmployee")
		public String preAdd() {
			return"addEmployee";//creare una jsp di preaggiunta
		}
		
		@PostMapping("/addEmployee")
		public String add(@ModelAttribute Employee employee) {
			
			employeeRep.save(employee);
			
			return"success";//creare una jsp di aggiunta 
		}
		
//------------------------------------------------------------------------------------------- FIND
		
		@GetMapping("/prefindByIdEmployee")
		public String prefindById() {
			return"";//creare una jsp di ricerca per id employee
		}
		
		@GetMapping("/findByIdEmployee")
		public String findById(Model model, Integer idEmployee) {
			
			Employee employee = new Employee();
			employee = employeeRep.findById(idEmployee).get();
			model.addAttribute("Employee", employee);
			
			return "";//creare e collegare una jsp di successo ricerca
		}
		
//------------------------------------------------------------------------------------------- UPDATE
		
		@PostMapping("/putEmployee")
		public String put(Model model, Employee employee) {
			
			employeeRep.save(employee);
			
			return "";//creare e collegare una jsp di successo aggiorna
		}
		
//-------------------------------------------------------------------------------------------- DELETE
		
		@GetMapping("/deleteEmployee")
		public String delete(Model model, Integer idEmployee) {
			
			employeeRep.deleteById(idEmployee);
			
			return "";//creare e collegare una jsp di successo elimina
		}
}
