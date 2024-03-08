package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EmployeeRepository;
import com.model.Employee;


@RestController
@RequestMapping("Login")
public class EmployeeRest {
	
	@Autowired
    private EmployeeRepository idEmployeeRep; 
	
	@GetMapping("findById/{idEmployee}")
    public Employee findById(@PathVariable ("idEmployee") int id) {
		Employee resEmployee = idEmployeeRep.findById(id).get();
		return resEmployee;
    }
	
	@PostMapping
	public String post (@RequestBody Employee e) {
	    System.out.println(e.toString());
	    idEmployeeRep.save(e);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody Employee e) {
		idEmployeeRep.save(e);
		System.out.println(e.toString() + "uploaded");
       return "success";
   } 

	@DeleteMapping ("{idEmployee}")
	public String delete (@RequestBody Employee e) {
		idEmployeeRep.delete(e);
	    return e + "deleted";
	   }

}
