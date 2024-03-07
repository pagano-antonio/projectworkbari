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

import com.dao.IdEmployeeRepository;
import com.model.IdEmployee;

@RestController
@RequestMapping("IdEmployee")
public class IdEmployeeRest {
	
	@Autowired
    private IdEmployeeRepository idEmployeeRep; 
	
	@GetMapping("findById/{idEmployee}")
    public IdEmployee findById(@PathVariable ("idEmployee") int id) {
		IdEmployee resIdEmployee = idEmployeeRep.findById(id).get();
		return resIdEmployee;
    }
	
	@PostMapping
	public String post (@RequestBody IdEmployee i) {
	    System.out.println(i.toString());
	    idEmployeeRep.save(i);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody IdEmployee i) {
		idEmployeeRep.save(i);
		System.out.println(i.toString() + "uploaded");
       return "success";
   } 

	@DeleteMapping ("{idEmployee}")
	public String delete (@RequestBody IdEmployee i) {
		idEmployeeRep.delete(i);
	    return i + "deleted";
	   }

}
