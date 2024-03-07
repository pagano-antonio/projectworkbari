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

import com.dao.EmployeeTypeRepository;
import com.model.EmployeeType;


@RestController
@RequestMapping("EmployeeType")
public class EmployeeTypeRest {

	@Autowired
    private EmployeeTypeRepository employeeTypeRep;
	
	@GetMapping("findById/{idEmployeeType}")
    public EmployeeType findById(@PathVariable ("idEmployeeType") int id) {
		EmployeeType resEmployeeType = employeeTypeRep.findById(id).get();
		return resEmployeeType;
    }
	
	@PostMapping
	public String post (@RequestBody EmployeeType e) {
	    System.out.println(e.toString());
	    employeeTypeRep.save(e);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody EmployeeType e) {
		employeeTypeRep.save(e);
		System.out.println(e.toString() + "uploaded");
       return "success";
   } 

	@DeleteMapping ("{idEmployeeType}")
	public String delete (@RequestBody EmployeeType e) {
		employeeTypeRep.delete(e);
	    return e + "deleted";
	   }
}
