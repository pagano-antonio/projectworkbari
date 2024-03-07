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

import com.dao.StateJobInterviewRepository;

import com.model.StateJobInterview;



@RestController
@RequestMapping("StateJobInterview")
public class StateJobInterviewRest {
	@Autowired
    private StateJobInterviewRepository stateJobInterviewRep;
	
	
	@GetMapping("findById/{idStateJobInterview}")
    public StateJobInterview findById(@PathVariable ("idStateJobInterview") int id) {

		StateJobInterview resStateJobInterview = stateJobInterviewRep.findById(id).get();
        return resStateJobInterview;
    }
	
	@PostMapping
	public String post (@RequestBody StateJobInterview s) {
	    System.out.println(s.toString());
	    stateJobInterviewRep.save(s);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody StateJobInterview s) {
		stateJobInterviewRep.save(s);
        System.out.println(s.toString() + "uploaded");
        return "success";
   } 

	@DeleteMapping ("{idStateJobInterview}")
	   public String delete (@RequestBody StateJobInterview s) {
		stateJobInterviewRep.delete(s);
	    return s + "deleted";
	   }
}
