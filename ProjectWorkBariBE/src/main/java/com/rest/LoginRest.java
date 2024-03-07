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

import com.dao.LoginRepository;
import com.model.Login;

@RestController
@RequestMapping("Login")
public class LoginRest {
	
	@Autowired
    private LoginRepository idEmployeeRep; 
	
	@GetMapping("findById/{idEmployee}")
    public Login findById(@PathVariable ("idEmployee") int id) {
		Login resLogin = idEmployeeRep.findById(id).get();
		return resLogin;
    }
	
	@PostMapping
	public String post (@RequestBody Login l) {
	    System.out.println(l.toString());
	    idEmployeeRep.save(l);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody Login l) {
		idEmployeeRep.save(l);
		System.out.println(l.toString() + "uploaded");
       return "success";
   } 

	@DeleteMapping ("{idEmployee}")
	public String delete (@RequestBody Login l) {
		idEmployeeRep.delete(l);
	    return l + "deleted";
	   }

}
