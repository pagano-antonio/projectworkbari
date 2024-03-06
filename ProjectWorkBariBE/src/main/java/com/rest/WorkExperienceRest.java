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

import com.dao.WorkExperienceRepository;
import com.model.WorkExperience;



@RestController
@RequestMapping("WorkExperience")
public class WorkExperienceRest {
	@Autowired
    private WorkExperienceRepository workExperienceRep;
	

	@GetMapping("findById/{id}")
    public WorkExperience findById(@PathVariable ("id") int id) {

		WorkExperience resWorkExperience = workExperienceRep.findById(id).get();
        return resWorkExperience;
    }
	
	@PostMapping
	public String post (@RequestBody WorkExperience w) {
	    System.out.println(w.toString());
	    workExperienceRep.save(w);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody WorkExperience w) {
		workExperienceRep.save(w);
        System.out.println(w.toString() + "uploaded");
        return "success";
   } 
	 @DeleteMapping ("{id}")
	   public String elimina (@RequestBody WorkExperience w) {
	    workExperienceRep.delete(w);
	       return w + "deleted";
	   }

}
