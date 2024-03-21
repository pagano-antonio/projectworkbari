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

import com.dao.JobOfferRepository;
import com.model.JobOffer;

@RestController //sempre request arrivano e il response sarà in json(non si vede sul browser).
//servizi rest(get,post,put,delete) trasferiscono lo stato(il valore delle proprietà in quell'istante)di un oggetto sotto forma di json.
@RequestMapping("JobOffer")
public class JobOfferRest {

	@Autowired
	private JobOfferRepository jobOfferRep;

	@GetMapping("findById/{id}")
	public JobOffer findById(@PathVariable("id") int id) {

		JobOffer resJobOffer = jobOfferRep.findById(id).get();
		return resJobOffer;
	}

	@PostMapping
	public String post(@RequestBody JobOffer j) {
		System.out.println(j.toString());
		jobOfferRep.save(j);
		return "success";
	}

	@PutMapping
	public String put(@RequestBody JobOffer j) {
		jobOfferRep.save(j);
		System.out.println(j.toString() + "uploaded");
		return "success";
	}

	@DeleteMapping("{id}")
	public String delete(@RequestBody JobOffer j) {
		jobOfferRep.delete(j);
		return j + "deleted";
	}

}
