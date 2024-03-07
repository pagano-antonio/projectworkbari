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

import com.dao.CanditateRepository;
import com.model.Candidate;

@RestController
@RequestMapping("Candidate")
public class CandidateRest {

	@Autowired
	private CanditateRepository candidateRep;

	@GetMapping("findById/{idCandidate}")
	public Candidate findById(@PathVariable("idCandidate") int idCandidate) {

		Candidate resCandidate = candidateRep.findById(idCandidate).get();
		return resCandidate;
	}

	@PostMapping
	public String post(@RequestBody Candidate c) {

		System.out.println(c.toString());
		candidateRep.save(c);
		return "success";
	}

	@PutMapping
	public String put(@RequestBody Candidate c) {

		candidateRep.save(c);
		System.out.println(c.toString() + "uploaded");
		return "success";
	}

	@DeleteMapping("{idCandidate}")
	public String delete(@RequestBody Candidate c) {

		candidateRep.delete(c);
		return c + "deleted";
	}

}
