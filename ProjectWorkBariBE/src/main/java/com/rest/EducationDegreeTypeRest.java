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

import com.dao.EducationDegreeTypeRepository;
import com.model.EducationDegreeType;

@RestController
@RequestMapping("EducationDegreeType")
public class EducationDegreeTypeRest {

	@Autowired
    private EducationDegreeTypeRepository educationDegreeTypeRep;
	
	@GetMapping("findById/{idEducationDegreeType}")
    public EducationDegreeType findById(@PathVariable ("idEducationDegreeType") int id) {
		EducationDegreeType resEmployeeType = educationDegreeTypeRep.findById(id).get();
		return resEmployeeType;
    }
	
	@PostMapping
	public String post (@RequestBody EducationDegreeType e) {
	    System.out.println(e.toString());
	    educationDegreeTypeRep.save(e);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody EducationDegreeType e) {
		educationDegreeTypeRep.save(e);
		System.out.println(e.toString() + "uploaded");
       return "success";
   } 

	@DeleteMapping ("{idEducationDegreeType}")
	public String delete (@RequestBody EducationDegreeType e) {
		educationDegreeTypeRep.delete(e);
	    return e + "deleted";
	   }
}
