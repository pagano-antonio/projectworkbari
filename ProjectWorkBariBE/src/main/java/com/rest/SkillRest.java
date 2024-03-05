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

import com.dao.SkillRepository;
import com.model.Skill;



@RestController
@RequestMapping("Skill")
public class SkillRest {
	@Autowired
    private SkillRepository skillRep;
	

	@GetMapping("findById/{id}")
    public Skill findById(@PathVariable ("id") int id) {

    Skill resSkill = skillRep.findById(id).get();
    return resSkill;
    }
	
	@PostMapping
	public String post (@RequestBody Skill s) {
	    System.out.println(s.toString());
	    skillRep.save(s);
	    return "success";
	}
	
	@PutMapping
    public String put (@RequestBody Skill s) {
    skillRep.save(s);
       System.out.println(s.toString() + "uploaded");
       return "success";
   } 

	@DeleteMapping ("{id}")
	   public String delete (@RequestBody Skill s) {
	    skillRep.delete(s);
	       return s + "deleted";
	   }
}
