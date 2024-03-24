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

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/EmployeeCtr")
public class EmployeeCtr {

	@Autowired
	private EmployeeRepository employeeRep;

	@GetMapping("/homePage")
	public String homePage() {
		return "homePage";
	}

//------------------------------------------------------------------------------------------- LOGIN
	@GetMapping("/login")
	public String login() {
		return "login";// creare una jsp di ricerca per id employee
	}

	@PostMapping("/findByLogin")
	public String findByLogin(Model model, String username, String password, HttpSession session) {

		Employee employee = employeeRep.findByUsernameAndPassword(username, password);
		session.setAttribute("employee", employee);
		model.addAttribute("username", username);
		model.addAttribute("password", password);

		return "resEmployee";
	}

//------------------------------------------------------------------------------------------- ADD 

	@GetMapping("/preAddEmployee")
	public String preAdd() {
		return "addEmployee";// creare una jsp di preaggiunta
	}

	@PostMapping("/addEmployee")
	public String add(@ModelAttribute Employee employee) {

		employeeRep.save(employee);

		return "success";// creare una jsp di aggiunta
	}

//------------------------------------------------------------------------------------------- FIND

	@GetMapping("/prefindByIdEmployee")
	public String prefindById() {
		return "";// creare una jsp di ricerca per id employee
	}

	@GetMapping("/findByIdEmployee")
	public String findById(Model model, Integer idEmployee) {

		Employee employee = new Employee();
		employee = employeeRep.findById(idEmployee).get();
		model.addAttribute("Employee", employee);

		return "";// creare e collegare una jsp di successo ricerca
	}

//------------------------------------------------------------------------------------------- UPDATE
	@GetMapping("/preUpdateEmployee")
	public String preUpdateEmployee() {
		return "updateEmployee";
	}

	@PostMapping("/putEmployee")
	public String put(Model model, Employee employee) {

		employeeRep.save(employee);

		return "success";// creare e collegare una jsp di successo aggiorna
	}

//-------------------------------------------------------------------------------------------- DELETE

	@GetMapping("/deleteEmployee")
	public String delete(Model model, Integer idEmployee) {

		employeeRep.deleteById(idEmployee);

		return "";// creare e collegare una jsp di successo elimina
	}
}
