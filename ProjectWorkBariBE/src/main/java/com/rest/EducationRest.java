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
import com.dao.EducationRepository;
import com.model.Education;

@RestController
@RequestMapping("Education")
public class EducationRest {

	@Autowired
    private EducationRepository educationRep;

	 @GetMapping("findById/{idEducation}")
	    public Education findById(@PathVariable ("idEducation") int id) {
      Education resEducation = educationRep.findById(id).get();
	    return resEducation;
	    }
		
		@PostMapping
		public String post (@RequestBody Education e) {
		    System.out.println(e.toString());
		    educationRep.save(e);
		    return "success";
		}
		
		@PutMapping
	    public String put (@RequestBody Education e) {
	    educationRep.save(e);
	       System.out.println(e.toString() + "uploaded");
	       return "success";
	   } 

		@DeleteMapping ("{idEducation}")
		   public String delete (@RequestBody  Education e) {
		    educationRep.delete(e);
		       return e + "deleted";
		   }

}
